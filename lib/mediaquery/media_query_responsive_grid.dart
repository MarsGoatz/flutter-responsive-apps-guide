import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../responsive_util.dart';

class MediaQueryResponsive extends StatelessWidget {
  const MediaQueryResponsive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveUtil.isWideScreen(context)
            ? null
            : AppBar(
                title: Text('MediaQuery Responsive'),
              ),
        body: GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width < 500 ? 2 : 4,
          children: List.generate(100, (index) {
            return Container(
              child: Center(
                child: Image.network(
                  'https://picsum.photos/id/${index + 100}/${MediaQuery.of(context).size.width < 500 ? (MediaQuery.of(context).size.width / 2).round() : (MediaQuery.of(context).size.width / 4).round()}',
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
        ));
  }
}
