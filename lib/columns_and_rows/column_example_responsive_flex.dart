import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class ColumnExampleResponsiveFlex extends StatelessWidget {
  const ColumnExampleResponsiveFlex({Key key}) : super(key: key);

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
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: Center(
                  child: Text(
                'Flex 1',
                style: TextStyle(fontSize: 35),
              )),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: Center(
                  child: Text(
                'Flex 3',
                style: TextStyle(fontSize: 35),
              )),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.orange,
              child: Center(
                  child: Text(
                'Flex 5',
                style: TextStyle(fontSize: 35),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
