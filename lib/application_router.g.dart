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
      routes: [
        GoRouteData.$route(
          path: 'book/:sku',
          factory: $BookPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'chapter/:sectionSku',
          factory: $ChapterPageRouteExtension._fromState,
        ),
      ],
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

extension $BookPageRouteExtension on BookPageRoute {
  static BookPageRoute _fromState(GoRouterState state) => BookPageRoute(
        sku: state.pathParameters['sku']!,
      );

  String get location => GoRouteData.$location(
        '/book/${Uri.encodeComponent(sku)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChapterPageRouteExtension on ChapterPageRoute {
  static ChapterPageRoute _fromState(GoRouterState state) => ChapterPageRoute(
        sectionSku: state.pathParameters['sectionSku']!,
      );

  String get location => GoRouteData.$location(
        '/chapter/${Uri.encodeComponent(sectionSku)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
