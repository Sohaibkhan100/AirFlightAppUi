import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  String content;
  Color textColor;
  double textSize;
  FontWeight? fontWeight;
  TextAlign? alignment;
  CustomText(
      {required this.content,
      required this.textColor,
      required this.textSize,
      this.alignment,
      this.fontWeight,
      super.key});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.content,
      textAlign: widget.alignment,
      style: TextStyle(
          decoration: TextDecoration.none,
          color: widget.textColor,
          fontSize: widget.textSize,
          fontFamily: "Roboto",
          fontWeight: widget.fontWeight),
    );
  }
}
