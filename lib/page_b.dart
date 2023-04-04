import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: unused_import
import 'routes.dart';

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Page B", style: Theme.of(context).textTheme.bodyLarge),
        Text("Navigate Back."),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: Text("Back")),
      ],
    ));
  }
}
