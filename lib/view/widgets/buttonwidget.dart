import 'package:flutter/material.dart';

class Buttonwidget extends StatefulWidget {
  String content;
  double height;
  double width;
  Color color;
  double fontsize;
  Color txtColor;

  Buttonwidget(
      {required this.content,
      required this.height,
      required this.width,
      required this.color,
      required this.fontsize,
      required this.txtColor,
      super.key});

  @override
  State<Buttonwidget> createState() => _ButtonwidgetState();
}

class _ButtonwidgetState extends State<Buttonwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * widget.height,
      width: MediaQuery.of(context).size.width * widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: widget.color),
      child: Center(
        child: Text(
          widget.content,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: widget.txtColor,
              fontSize: MediaQuery.of(context).size.height * widget.fontsize),
        ),
      ),
    );
  }
}
