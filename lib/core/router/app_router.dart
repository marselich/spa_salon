import 'package:auto_route/auto_route.dart';
import 'package:flutter/semantics.dart';
import 'package:spa_salon/features/app/presentation/screens/spa_app_screen.dart';
import 'package:spa_salon/features/home/presentation/screens/home_screen.dart';
import 'package:spa_salon/features/spa_options/presentation/screens/spa_options_screen.dart';
import 'package:spa_salon/features/spa_products/presentation/screens/spa_products_screen.dart';
import 'package:spa_salon/features/spa_services/presentation/screens/spa_services_screen.dart';
import 'package:spa_salon/features/spa_services/presentation/screens/spa_subservices_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SpaAppRoute.page,
          path: "/",
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: "home",
            ),
            AutoRoute(
              page: SpaServicesRoute.page,
              path: "services",
            ),
            AutoRoute(
              page: SpaProductsRoute.page,
              path: "products",
            ),
            AutoRoute(
              page: SpaOptionsRoute.page,
              path: "options",
            ),
          ],
        ),
        AutoRoute(
          page: SpaSubservicesRoute.page,
          path: "/sub-services",
        ),
      ];
}
