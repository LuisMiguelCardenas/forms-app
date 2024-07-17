import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Cubits'),
            subtitle: const Text('gestor de estado simple'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.push('/cubits'),
          ),
          ListTile(
            title: const Text('Bloc'),
            subtitle: const Text('gestor de estado completo'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.push('/counter-bloc'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          ListTile(
            title: const Text('Nuevo usuario'),
            subtitle: const Text('Manejo de formuñlarios'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.push('/new-user'),
          ),
        ],
      ),
    );
  }
}
