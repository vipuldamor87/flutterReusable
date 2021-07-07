import'package:flutter/material.dart';

class IAppBar extends PreferredSize{

  final Widget child;
  final double height;
  final Color color;

  var preferredSize;




  IAppBar({
    this.color = Colors.green,
    required this.child,
    required this.preferredSize,
    this.height = kToolbarHeight,
  }) : super(child: child,preferredSize: Size.fromHeight(height));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: preferredSize.height,
      color: color,
      alignment: Alignment.center,
      child: child,
    );
  }

}