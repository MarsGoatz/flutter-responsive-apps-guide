import 'package:flutter/material.dart';
import 'package:responsive_apps_companion_app/columns_and_rows/column_example.dart';
import 'package:responsive_apps_companion_app/columns_and_rows/column_example_responsive.dart';
import 'package:responsive_apps_companion_app/columns_and_rows/column_example_responsive_flex.dart';
import 'package:responsive_apps_companion_app/list_tile_custom.dart';

import '../responsive_util.dart';

class ColumnExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveUtil.isWideScreen(context)
        ? DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: kMinInteractiveDimension,
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Simple Column Unresponsive 1'),
                    Tab(text: 'Simple Column Unresponsive 2'),
                    Tab(text: 'Simple Column Responsive'),
                    Tab(text: 'Simple Column Responsive Flex'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  ColumnExampleUnresponsive1(),
                  ColumnExampleUnresponsive2(),
                  ColumnExampleResponsive(),
                  ColumnExampleResponsiveFlex()
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
                  ListTileCustom(
                    title: 'Simple Column Unresponsive 1',
                    screen: ColumnExampleUnresponsive1(),
                  ),
                  ListTileCustom(
                    title: 'Simple Column Unresponsive 2',
                    screen: ColumnExampleUnresponsive2(),
                  ),
                  ListTileCustom(
                    title: 'Simple Column Responsive',
                    screen: ColumnExampleResponsive(),
                  ),
                  ListTileCustom(
                    title: 'Simple Column Responsive Flex',
                    screen: ColumnExampleResponsiveFlex(),
                  ),
                ],
              ),
            ),
          );
  }
}
