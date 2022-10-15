import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GradientTemplate extends StatefulWidget {
  Widget Child;
  GradientTemplate({required this.Child, super.key});

  @override
  State<GradientTemplate> createState() => _GetStartedState();
}

class _GetStartedState extends State<GradientTemplate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff4093CE), Color(0xff9BCEF3)])),
        child: widget.Child,
      ),
    );
  }
}
