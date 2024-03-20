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
    SpaSubservicesRoute.name: (routeData) {
      final args = routeData.argsAs<SpaSubservicesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SpaSubservicesScreen(
          key: args.key,
          titleServices: args.titleServices,
          subServicesList: args.subServicesList,
        ),
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

/// generated route for
/// [SpaSubservicesScreen]
class SpaSubservicesRoute extends PageRouteInfo<SpaSubservicesRouteArgs> {
  SpaSubservicesRoute({
    Key? key,
    required String titleServices,
    required List<SubserviceModel> subServicesList,
    List<PageRouteInfo>? children,
  }) : super(
          SpaSubservicesRoute.name,
          args: SpaSubservicesRouteArgs(
            key: key,
            titleServices: titleServices,
            subServicesList: subServicesList,
          ),
          initialChildren: children,
        );

  static const String name = 'SpaSubservicesRoute';

  static const PageInfo<SpaSubservicesRouteArgs> page =
      PageInfo<SpaSubservicesRouteArgs>(name);
}

class SpaSubservicesRouteArgs {
  const SpaSubservicesRouteArgs({
    this.key,
    required this.titleServices,
    required this.subServicesList,
  });

  final Key? key;

  final String titleServices;

  final List<SubserviceModel> subServicesList;

  @override
  String toString() {
    return 'SpaSubservicesRouteArgs{key: $key, titleServices: $titleServices, subServicesList: $subServicesList}';
  }
}
