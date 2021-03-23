import 'package:flutter/material.dart';
import 'package:responsive_apps_companion_app/box_contraints/examples.dart';
import 'package:responsive_apps_companion_app/layoutbuilder/layout_builder_responsive_grid.dart';
import 'package:responsive_apps_companion_app/list_tile_custom.dart';
import 'package:responsive_apps_companion_app/mediaquery/media_query_responsive_grid.dart';
import 'package:responsive_apps_companion_app/orientation/examples.dart';
import 'package:responsive_apps_companion_app/responsive_util.dart';

import 'columns_and_rows/examples.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Companion App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Responsive Companion App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ResponsiveUtil.isWideScreen(context)
          ? SafeArea(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .30,
                    child: ListView(
                      children: [
                        ListTile(
                          title: Center(
                            child: Text('OPTIONS'),
                          ),
                        ),
                        Divider(
                          color: Colors.orange,
                        ),
                        ListTileCustomWideScreen(
                            title: 'Box Constraint Examples',
                            onTap: () => _controller.page == 0
                                ? null
                                : _controller.animateToPage(0,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.fastLinearToSlowEaseIn)),
                        Divider(
                          color: Colors.white,
                        ),
                        ListTileCustomWideScreen(
                            title: 'Columns & Rows',
                            onTap: () => _controller.page == 1
                                ? null
                                : _controller.animateToPage(1,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.fastLinearToSlowEaseIn)),
                        Divider(
                          color: Colors.white,
                        ),
                        ListTileCustomWideScreen(
                            title: 'Media Query',
                            onTap: () => _controller.page == 2
                                ? null
                                : _controller.animateToPage(2,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.fastLinearToSlowEaseIn)),
                        Divider(
                          color: Colors.white,
                        ),
                        ListTileCustomWideScreen(
                            title: 'Layout Builder',
                            onTap: () => _controller.page == 3
                                ? null
                                : _controller.animateToPage(3,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.fastLinearToSlowEaseIn)),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    indent: 0,
                    endIndent: 0,
                    thickness: 1,
                    width: 0.5,
                  ),
                  Expanded(
                      child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    pageSnapping: false,
                    controller: _controller,
                    children: [
                      BoxContraintExamples(),
                      ColumnExamples(),
                      MediaQueryResponsive(),
                      LayoutBuilderResponsive()
                    ],
                  ))
                ],
              ),
            )
          : SafeArea(
              child: ListView(
                children: [
                  ListTileCustom(
                      title: 'Box Constraint Examples',
                      screen: BoxContraintExamples()),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTileCustom(
                      title: 'Columns & Rows', screen: ColumnExamples()),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTileCustom(
                      title: 'Mobile Screen Orientation',
                      screen: OrientationExamples()),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTileCustom(
                      title: 'Media Query', screen: MediaQueryResponsive()),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTileCustom(
                      title: 'Layout Builder',
                      screen: LayoutBuilderResponsive()),
                  Divider(
                    color: Colors.white,
                  )
                ],
              ),
            ),
    );
  }
}
