import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter-bloc/counter_bloc.dart';

class BlocCounterSecreen extends StatelessWidget {
  const BlocCounterSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (__) => CounterBloc(), child: BlocCounterView());
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({
    super.key,
  });

  void increaseCounter(BuildContext context, [int value = 1]) {
    context.read<CounterBloc>().add(CounterIncreased(value));
  }

  void resetCounter(BuildContext context ) {
    context.read<CounterBloc>().add(CounterReset());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select( (CounterBloc counterBloc) => Text('Bloc counter ${counterBloc.state.transactionCount}'), )  ,
        actions: [
          IconButton(
              onPressed: () => resetCounter(context), icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: context.select((CounterBloc counterBloc) =>
            Text('Cunter velue: ${counterBloc.state.counter}')),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: '1',
              child: const Text('+3'),
              onPressed: () => increaseCounter(context, 3)),
          const SizedBox(height: 15),
          FloatingActionButton(
              heroTag: '2',
              child: const Text('+2'),
              onPressed: () => increaseCounter(context, 2)),
          const SizedBox(height: 15),
          FloatingActionButton(
              heroTag: '3',
              child: const Text('+1'),
              onPressed: () => increaseCounter(context, 1)),
        ],
      ),
    );
  }
}
