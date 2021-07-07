import 'package:flutter/material.dart';

class ColorCell extends StatelessWidget {

  ColorCell({
    this.color = Colors.green,
});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
