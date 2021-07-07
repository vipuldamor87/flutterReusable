import 'package:flutter/material.dart';

class Btn extends StatelessWidget{

  Btn({
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
      color: color,
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: (){onPress();},
        child:  Text(
          text,
          style: TextStyle(color: Colors.white),
          ),
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(3.0) ),
      ),
    );
  }

}