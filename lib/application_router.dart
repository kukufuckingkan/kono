import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kono/ui/screen/book_screen.dart';
import 'package:kono/ui/screen/chapter_screen.dart';

import 'ui/page/home_page.dart';




const routeBase = '/book';
const routeHome = '/home';
const routeChapter = '/chapter';
const routeBook = '/book';



final GlobalKey<NavigatorState> _appNavigatorKey = GlobalKey<NavigatorState>();
final appRouter = Provider<GoRouter>((ref) {


  return GoRouter(
    navigatorKey: _appNavigatorKey,
    initialLocation: routeBase,
    redirect: (context, state) {
 
      return state.path;
    },
    routes: <RouteBase>[
     
      GoRoute(
        path: routeChapter,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage(ChapterScreen());
        },
      ),

      GoRoute(
        path: routeBase,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage(BookScreen());
        },
      ),
    
    ],
  );
});
