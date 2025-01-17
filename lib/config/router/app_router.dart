import 'package:forms_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
    GoRoute(
    path: '/cubits',
    builder: (context, state) => const CubitCounterSecreen(),
  ),
      GoRoute(
    path: '/counter-bloc',
    builder: (context, state) => const BlocCounterSecreen(),
  ),
        GoRoute(
    path: '/new-user',
    builder: (context, state) => const RegisterScreen(),
  )
]);
