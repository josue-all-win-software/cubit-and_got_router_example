import 'package:cubit_example/config/router/app_routes.dart';
import 'package:cubit_example/modules/initial/login/view/login_view.dart';
import 'package:cubit_example/modules/main/main_menu/main_menu_view.dart';
import 'package:cubit_example/modules/main/products/view/products_view.dart';
import 'package:cubit_example/modules/main/users/view/users_view.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.loginRoute,
  routes: [
    GoRoute(
      path: AppRoutes.loginRoute,
      builder: (context, state) => const LoginView(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => MainMenuView(
        navigationShell: navigationShell
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.userRoute,
              builder: (context, state) => const UsersView(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.productsRoute,
              builder: (context, state) => const ProductsView(),
            )
          ]
        )
      ]
    )
  ]
);