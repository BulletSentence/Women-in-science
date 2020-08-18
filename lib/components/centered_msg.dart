import 'package:flutter/material.dart';

class CenteredMsg extends StatelessWidget {
  final String message;
  final IconData icon;
  final double iconSize;
  final double fontSize;

  const CenteredMsg({
    Key key,
    this.message,
    this.icon,
    this.iconSize = 60.0,
    this.fontSize = 12.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      
    );
  }
}
