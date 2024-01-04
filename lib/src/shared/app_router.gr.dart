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
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    TaxesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaxesPage(),
      );
    },
  };
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaxesPage]
class TaxesRoute extends PageRouteInfo<void> {
  const TaxesRoute({List<PageRouteInfo>? children})
      : super(
          TaxesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaxesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
