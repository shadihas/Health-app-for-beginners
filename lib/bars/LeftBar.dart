import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final double widthBar;
  const LeftBar({ Key? key, required this.widthBar }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: widthBar,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
color: Colors.yellow,

          ),


        )
        

      ],
    );
  }
}