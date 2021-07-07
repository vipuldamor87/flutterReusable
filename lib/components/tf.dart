import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TF extends StatelessWidget{

  TF({
    required this.controller,
    this.hintText = 'no text set',
    this.helpText = 'no text set',
    required this.prefixIcon,
    required this.suffixIcon,
    required this.isPassword,
    required this.enabled,
    required this.readOnly,
    this.borderColor = Colors.teal,
    });



  final TextEditingController controller;
  final String hintText;
  final String helpText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool enabled;
  final bool readOnly;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextField(
        controller: controller,
        // readOnly: null == readOnly ? false : true,
         obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.greenAccent,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color:  borderColor,
              width: 1.0,
            ),
          ),
           hintText: null == hintText?'':hintText,
           helperText: null == helpText? '': helpText,
           prefixIcon: null == prefixIcon ? null : Icon(prefixIcon),
           suffix: null == suffixIcon ? null : Icon (suffixIcon),
           enabled: enabled ? true : false,
        ),

      ),
    );
  }

}