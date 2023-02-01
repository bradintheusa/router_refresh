import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: unused_import
import 'routes.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Page 1", style: Theme.of(context).textTheme.bodyLarge),
        Text("Navigate Back."),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: Text("Back")),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(Paths.page2);
            },
            child: Text("Page 2"))
      ],
    ));
  }
}
