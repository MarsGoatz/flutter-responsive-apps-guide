import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class LayoutBuilderResponsive extends StatelessWidget {
  const LayoutBuilderResponsive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('LayoutBuilder Responsive'),
            ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.count(
            crossAxisCount: constraints.maxWidth < 500 ? 2 : 4,
            children: List.generate(100, (index) {
              return Container(
                child: Center(
                  child: Image.network(
                    'https://picsum.photos/id/${index + 400}/${constraints.maxWidth < 500 ? (constraints.maxWidth / 2).round() : (constraints.maxWidth / 4).round()}',
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
