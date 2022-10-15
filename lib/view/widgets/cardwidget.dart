import 'package:flightui/view/widgets/buttonwidget.dart';
import 'package:flightui/view/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xff1C5E85), Color(0xff5D8FAD)])),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    content: "10 may,12:39 pm",
                    textColor: Colors.white,
                    textSize: MediaQuery.of(context).size.height * 0.015,
                  ),
                  CustomText(
                    content: "11 may,8:15 pm",
                    textColor: Colors.white,
                    textSize: MediaQuery.of(context).size.height * 0.015,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    content: "ABC",
                    textColor: Colors.white,
                    textSize: MediaQuery.of(context).size.height * 0.023,
                  ),
                  const Image(image: AssetImage('assets/images/Vector1.png')),
                  CustomText(
                    content: "XYZ",
                    textColor: Colors.white,
                    textSize: MediaQuery.of(context).size.height * 0.023,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buttonwidget(
                      content: "Abianca, Sodaium",
                      height: 0.03,
                      width: 0.28,
                      fontsize: 0.015,
                      txtColor: Color(0xff3F7EA4),
                      color: Color(0xffADCEE1)),
                  Buttonwidget(
                      content: "Xyzaira, Filanto",
                      height: 0.03,
                      width: 0.28,
                      fontsize: 0.015,
                      txtColor: Color(0xff3F7EA4),
                      color: Color(0xffADCEE1))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
