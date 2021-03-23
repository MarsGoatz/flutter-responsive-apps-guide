import 'package:flutter/material.dart';
import 'package:responsive_apps_companion_app/list_tile_custom.dart';
import 'package:responsive_apps_companion_app/orientation/orientation_responsive.dart';
import 'package:responsive_apps_companion_app/orientation/orientation_responsive_grid.dart';
import 'package:responsive_apps_companion_app/orientation/orientation_unresponsive.dart';

import '../responsive_util.dart';

class OrientationExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isWideScreen(context)
          ? null
          : AppBar(
              title: Text('Orientation Examples'),
            ),
      body: SafeArea(
        child: Column(
          children: [
            ListTileCustom(
              title: 'Unresponsive',
              screen: OrientationUnresponsive(),
            ),
            ListTileCustom(
              title: 'Responsive',
              screen: OrientationResponsive(),
            ),
            ListTileCustom(
              title: 'Responsive Grid',
              screen: GridOrientationResponsive(),
            ),
          ],
        ),
      ),
    );
  }
}
