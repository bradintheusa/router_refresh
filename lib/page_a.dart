import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: unused_import
import 'routes.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Page A", style: Theme.of(context).textTheme.bodyLarge),
        Text("Navigate Back."),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: Text("Back")),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push('/' +Paths.pageB);
            },
            child: Text("Push Page B")),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/' +Paths.pageB);
            },
            child: Text("Go Page B"))
      ],
    ));
  }
}
