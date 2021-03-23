import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class ColumnExample1 extends StatelessWidget {
  const ColumnExample1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('Example 1'),
            ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 300,
          ),
          Container(
            color: Colors.orange,
            height: 500,
          ),
        ],
      ),
    );
  }
}
