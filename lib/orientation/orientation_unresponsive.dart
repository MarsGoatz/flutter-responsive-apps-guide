import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class OrientationUnresponsive extends StatelessWidget {
  const OrientationUnresponsive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('Orientation Unresponsive'),
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
          Expanded(
            child: Container(
              color: Colors.orange,
              height: 500,
            ),
          ),
        ],
      ),
    );
  }
}
