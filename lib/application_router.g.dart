// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $bookScreenRoute,
    ];

RouteBase get $bookScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $BookScreenRouteExtension._fromState,
    );

extension $BookScreenRouteExtension on BookScreenRoute {
  static BookScreenRoute _fromState(GoRouterState state) =>
      const BookScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
