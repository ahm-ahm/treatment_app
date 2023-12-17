import 'package:go_router/go_router.dart';
import 'package:treatment_app/features/auth/presentation/views/add-family-member/view/add_family_member_view.dart';
import 'package:treatment_app/features/auth/presentation/views/home/view/home_view.dart';

import 'paths.dart';

final router = GoRouter(
  routes: [
    // GoRoute(
    //   path: RoutePaths.login,
    //   builder: (context, state) {
    //     return const LoginView();
    //   },
    // ),
    GoRoute(
      path: RoutePaths.addFamilyMember,
      builder: (context, state) {
        return const AddFamilyMemberView();
      },
    ),
  ],
);
