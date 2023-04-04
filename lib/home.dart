import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Home", style: Theme.of(context).textTheme.bodyLarge),
            Text("Navigate to Page."),

            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/' +Paths.pageA);
                },
                child: Text("Push Page A")),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/'+Paths.pageB);
                },
                child: Text("Push Page B"))
          ,



            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(Paths.page1);
                },
                child: Text("Push Page 1")),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(Paths.page2);
                },
                child: Text("Push Page 2"))
          ],
        )
      ],
    ));
  }
}
