import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class OrientationResponsive extends StatelessWidget {
  const OrientationResponsive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('Orientation Responsive'),
            ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return orientation == Orientation.portrait
              ? Column(
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
                )
              : Row(
                  children: [
                    Container(
                      color: Colors.green,
                      width: 100,
                    ),
                    Container(
                      color: Colors.blue,
                      width: 300,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                        width: 500,
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
