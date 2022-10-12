import 'package:flutter/material.dart';



class RightBar extends StatelessWidget {
  final double widthBar;

  const RightBar({ Key? key, required this.widthBar }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 30,
          width: widthBar,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
color: Colors.yellow,

          ),


        )
        

      ],
    );
  }
}