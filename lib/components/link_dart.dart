import 'package:flutter/material.dart';

class LinkBtn extends StatelessWidget{

  LinkBtn({
    required this.onPress,
    required this.text,
    required this.color,
  });
  final String text;
  final Function onPress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: (){},
        child:  Text(
          text,
          style: TextStyle(color: color),
        ),
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(3.0) ),
      ),
    );
  }

}