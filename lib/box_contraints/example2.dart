import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class Example2 extends StatelessWidget {
  const Example2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('Example 2'),
            ),
      body: Container(
        width: 200,
        height: 200,
        child: Container(
          color: Colors.green,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
