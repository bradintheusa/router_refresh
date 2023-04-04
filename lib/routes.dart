import 'package:go_router/go_router.dart';
import 'page_a.dart';
import 'page_b.dart';
import 'page_one.dart';
import 'page_two.dart';

import 'home.dart';

class Paths {
  static const String main = '/';

  static const String pageA = 'pageA';
  static const String pageB = 'pageB';

  static const String page1 = '/page1';
  static const String page2 = '/page2';
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: "/",
  // refreshListenable: Stream() ,
  routes: [
    GoRoute(path: Paths.main, builder: (context, state) => Home(), routes: [
      GoRoute(
        path: Paths.pageA,
        builder: (context, state) => PageA(),
      ),
      GoRoute(
        path: Paths.pageB,
        builder: (context, state) => PageB(),
      ),
    ]),
    GoRoute(
      path: Paths.page1,
      builder: (context, state) => PageOne(),
    ),
    GoRoute(
      path: Paths.page2,
      builder: (context, state) => PageTwo(),
    ),
  ],
);
