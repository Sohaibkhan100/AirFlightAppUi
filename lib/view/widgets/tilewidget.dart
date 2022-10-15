import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  String address;
  String txt1;
  String txt2;

  TileWidget(
      {required this.address,
      required this.txt1,
      required this.txt2,
      super.key});

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19), color: Colors.white),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              image: DecorationImage(
                image: AssetImage(widget.address),
              ),
            ),
          ),
          Text(
            widget.txt1,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          Text(
            widget.txt2,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          )
        ],
      ),
    );
  }
}
