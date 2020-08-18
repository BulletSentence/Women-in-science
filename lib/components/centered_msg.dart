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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Visibility(
            child: Icon(
              icon,
              size: iconSize,
              color: Colors.black26,
            ),
            visible: icon != null,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              message,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
