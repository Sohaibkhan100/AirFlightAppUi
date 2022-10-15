import 'package:flightui/view/getstarted.dart';
import 'package:flightui/view/viewflights.dart';
import 'package:flightui/view/widgets/gradienttemplate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: GetStarted(),
    );
  }
}
