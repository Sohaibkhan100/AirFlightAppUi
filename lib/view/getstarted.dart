import 'package:flightui/view/homepage.dart';
import 'package:flightui/view/widgets/buttonwidget.dart';
import 'package:flightui/view/widgets/customtext.dart';
import 'package:flightui/view/widgets/gradienttemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return GradientTemplate(
      Child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.4,
              backgroundColor: Colors.white,
              child: Container(
                child: const Image(
                  image: AssetImage("assets/images/vector.png"),
                ),
              ),
            ),
            CustomText(
              content: "Let's Enjoy A    New World",
              textColor: Colors.white,
              textSize: MediaQuery.of(context).size.height * 0.05,
              fontWeight: FontWeight.w700,
              alignment: TextAlign.center,
            ),
            CustomText(
              content: "Search the safest destination",
              textColor: Colors.black,
              fontWeight: FontWeight.normal,
              textSize: MediaQuery.of(context).size.height * 0.02,
              alignment: TextAlign.center,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Buttonwidget(
                  content: "Get Started",
                  height: 0.07,
                  width: 0.7,
                  fontsize: 0.02,
                  txtColor: Colors.white,
                  color: Color(0xff2F7694),
                ))
          ],
        ),
      ),
    );
  }
}
