import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListTileCustom extends StatelessWidget {
  final Widget screen;
  final String title;

  const ListTileCustom({Key key, this.screen, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => screen),
      ),
    );
  }
}

class ListTileCustomWideScreen extends StatelessWidget {
  final Function onTap;
  final String title;

  const ListTileCustomWideScreen({Key key, this.onTap, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
