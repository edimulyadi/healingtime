
import 'package:flutter/material.dart';
import 'package:healing_time/misc/colors.dart';
import 'package:healing_time/widgets/app_text.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({ Key? key,this.width=120, this.isResponsive=false, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        
        ),
        child: Row(
          mainAxisAlignment: isResponsive ==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin: const EdgeInsets.only (left:40),child : AppText(text: "Booking Trip Sekarang",color:Colors.white,size: 15,)):Container(),
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}