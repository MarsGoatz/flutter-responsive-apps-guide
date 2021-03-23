import 'package:flutter/material.dart';
import 'package:responsive_apps_companion_app/box_contraints/example1.dart';
import 'package:responsive_apps_companion_app/box_contraints/example2.dart';
import 'package:responsive_apps_companion_app/responsive_util.dart';

class BoxContraintExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveUtil.isWideScreen(context)
        ? DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: kMinInteractiveDimension,
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Example1'),
                    Tab(text: 'Example2'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Example1(),
                  Example2(),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: ResponsiveUtil.isWideScreen(context)
                ? null
                : AppBar(
                    title: Text('Box Constraint Examples'),
                  ),
            body: SafeArea(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Example1'),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Example1()),
                    ),
                  ),
                  ListTile(
                    title: Text('Example2'),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Example2()),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
