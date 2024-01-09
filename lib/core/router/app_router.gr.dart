// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    SpaAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpaAppScreen(),
      );
    },
    SpaOptionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpaOptionsScreen(),
      );
    },
    SpaProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpaProductsScreen(),
      );
    },
    SpaServicesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpaServicesScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpaAppScreen]
class SpaAppRoute extends PageRouteInfo<void> {
  const SpaAppRoute({List<PageRouteInfo>? children})
      : super(
          SpaAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpaAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpaOptionsScreen]
class SpaOptionsRoute extends PageRouteInfo<void> {
  const SpaOptionsRoute({List<PageRouteInfo>? children})
      : super(
          SpaOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpaOptionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpaProductsScreen]
class SpaProductsRoute extends PageRouteInfo<void> {
  const SpaProductsRoute({List<PageRouteInfo>? children})
      : super(
          SpaProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpaProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpaServicesScreen]
class SpaServicesRoute extends PageRouteInfo<void> {
  const SpaServicesRoute({List<PageRouteInfo>? children})
      : super(
          SpaServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpaServicesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
