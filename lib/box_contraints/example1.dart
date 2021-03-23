import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class Example1 extends StatelessWidget {
  const Example1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('Example 1'),
            ),
      body: Container(
        color: Colors.green,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
