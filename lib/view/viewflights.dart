import 'package:flightui/view/widgets/buttonwidget.dart';
import 'package:flightui/view/widgets/gradienttemplate.dart';
import 'package:flutter/material.dart';

import 'widgets/customtext.dart';

class ViewFlight extends StatefulWidget {
  const ViewFlight({super.key});

  @override
  State<ViewFlight> createState() => _ViewFlightState();
}

class _ViewFlightState extends State<ViewFlight> {
  bool istrue = true;
  @override
  Widget build(BuildContext context) {
    return GradientTemplate(
        Child: Column(
      children: [
        Stack(
          children: const [
            Positioned(
              child: Image(
                image: AssetImage('assets/images/Ellipse 1.png'),
              ),
            ),
            Positioned(
                left: 5,
                right: 5,
                child: Image(
                    image:
                        AssetImage("assets/images/undraw_aircraft_fbvl 1.png")))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomText(
                    content: "Book Your Flight",
                    textColor: Colors.white,
                    textSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffD7EAF8)),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff2F7694)),
                  child: const Center(
                    child: Text(
                      "OneWay",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffD7EAF8)),
                  child: const Center(
                    child: Text(
                      "OneWay",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                        content: "From",
                        textColor: Colors.grey,
                        textSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.normal,
                        alignment: TextAlign.left,
                      ),
                    ],
                  ),
                  Buttonwidget(
                      content: "Abianca (ABC)",
                      height: 0.06,
                      width: 0.7,
                      color: Color(0xffE0EDF6),
                      fontsize: 0.02,
                      txtColor: Colors.black),
                  Row(
                    children: [
                      CustomText(
                        content: "To",
                        textColor: Colors.grey,
                        textSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.normal,
                        alignment: TextAlign.start,
                      ),
                    ],
                  ),
                  Buttonwidget(
                      content: "Abianca (ABC)",
                      height: 0.06,
                      width: 0.7,
                      color: Color(0xffE0EDF6),
                      fontsize: 0.02,
                      txtColor: Colors.black),
                  Row(
                    children: [
                      CustomText(
                        content: "Date",
                        textColor: Colors.grey,
                        textSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.normal,
                        alignment: TextAlign.start,
                      ),
                    ],
                  ),
                  Buttonwidget(
                      content: "22 may:2pm",
                      height: 0.06,
                      width: 0.7,
                      color: Color(0xffE0EDF6),
                      fontsize: 0.02,
                      txtColor: Colors.black),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Buttonwidget(
                        content: "View Flights",
                        height: 0.07,
                        width: 0.7,
                        color: Color(0xff2F7694),
                        fontsize: 0.02,
                        txtColor: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
