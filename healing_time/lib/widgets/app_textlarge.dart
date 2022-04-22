import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextlarge extends StatelessWidget {
  double size;
  final String text;
  final Color color;


AppTextlarge({ Key? key,
 this.size = 30, 
 required this.text,
 this.color =Colors.black, int? top
 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color:color,
        fontSize: size,
        fontWeight: FontWeight.bold 
      ),
    );
  }
}