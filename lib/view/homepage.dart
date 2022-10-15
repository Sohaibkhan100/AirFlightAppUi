import 'package:flightui/view/viewflights.dart';
import 'package:flightui/view/widgets/buttonwidget.dart';
import 'package:flightui/view/widgets/cardwidget.dart';
import 'package:flightui/view/widgets/customtext.dart';
import 'package:flightui/view/widgets/gradienttemplate.dart';
import 'package:flightui/view/widgets/tilewidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GradientTemplate(
            Child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        children: [
                          const CircleAvatar(
                            child: Image(
                                image:
                                    AssetImage('assets/images/Ellipse 2.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                                alignment: TextAlign.center,
                                content: "Hi Tania!",
                                textColor: Colors.white,
                                textSize:
                                    MediaQuery.of(context).size.height * 0.02),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: Color(0xffEAEAEA),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    content: "Where you want to            go?",
                    textColor: Colors.white,
                    textSize: MediaQuery.of(context).size.height * 0.038,
                    fontWeight: FontWeight.w700,
                    alignment: TextAlign.left,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CustomText(
                        content: "Upcoming Trips",
                        textColor: Colors.white,
                        textSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.normal,
                        alignment: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Get.to(ViewFlight());
                    },
                    child: CardWidget()),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        content: "Popular Destinations",
                        textColor: Colors.white,
                        textSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.normal,
                        alignment: TextAlign.left,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View all",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TileWidget(
                            address: "assets/images/Rectangle 6.png",
                            txt1: "paris",
                            txt2: "France"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TileWidget(
                            address: "assets/images/Rectangle 8.png",
                            txt1: "Rome",
                            txt2: "italy"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TileWidget(
                            address: "assets/images/Rectangle 10.png",
                            txt1: "istanbul",
                            txt2: "turkey"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.home),
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                Icon(Icons.favorite_border_outlined),
              ],
            ),
          ),
        ));
  }
}
