import 'package:treatment_app/features/auth/presentation/views/login/view/login_view.dart';

import 'paths.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: RoutePaths.login,
      builder: (context, state) {
        return const LoginView();
      },
    ),
    // GoRoute(
    //   path: RoutePaths.home,
    //   builder: (context, state) {
    //     return const ();
    //   },
    // ),
  ],
);
