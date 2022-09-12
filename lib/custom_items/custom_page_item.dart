import 'package:flutter/material.dart';

class CustomPageItem {
  String title = "undefined";
  Widget leading = Container();
  List<Widget> actions = [];
  Widget content = Container();
  IconData icon = Icons.stop;
  String label = "item";

  CustomPageItem(
    this.title,
    this.leading,
    this.actions,
    this.content,
    this.icon,
    this.label,
  );
}
