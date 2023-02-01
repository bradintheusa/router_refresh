import 'package:go_router/go_router.dart';
import 'page_one.dart';
import 'page_two.dart';

import 'home.dart';

class Paths {
  static const String main = '/';
  static const String page1 = '/page1';
  static const String page2 = '/page2';
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: "/",
  // refreshListenable: Stream() ,
  routes: [
    GoRoute(
      path: Paths.main,
      builder: (context, state) => Home(),
    ),
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