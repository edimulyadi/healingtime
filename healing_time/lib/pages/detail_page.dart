import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:healing_time/misc/colors.dart';
import 'package:healing_time/widgets/app_buttons.dart';
import 'package:healing_time/widgets/app_text.dart';
import 'package:healing_time/widgets/app_textlarge.dart';
import 'package:healing_time/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height:double.maxFinite,
        child: Stack(
          children:[
            Positioned (left: 0, right:0,
            child : Container(
              width: double.maxFinite,
              height:350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("img/papandayan.jpeg"),
                  fit:BoxFit.cover
                )
              )
            )
            ),
            Positioned(
              left: 20,
            top:50,
               child: Row(
                children:[
                  IconButton(onPressed: () {}, icon:Icon(Icons.menu),
                  color: Colors.white)
                ]
              )),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top:30),
              width:MediaQuery.of(context).size.width,
              height:500,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight:Radius.circular(30),
                )
              ),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextlarge(text: "Papandayan", size: 20,  color:Colors.black.withOpacity(0.8)),
                      AppTextlarge(text: "\ Rp.30.000",size: 20, color:AppColors.mainColor,),
                ],
                ),
                SizedBox(height: 10,),
                      Row(
                        children:[
                        Icon(Icons.location_on,color:AppColors.mainColor,),
                        SizedBox(width: 10,),
                        AppText(text: "Garut,JawaBarat",color:AppColors.mainColor,size:10,),
                      ],
                  ),
                  SizedBox(height:20,),
                  Row(
                    children:[
                      Wrap(
                    children: List.generate(5,(index){
                      return Icon(Icons.star,color:index<gottenStars?AppColors.starColor:AppColors.textColor2,);
                    })),
                    SizedBox(width:10,),
                    AppText(text: "(4.0)",color:AppColors.textColor2,size: 10,)
                    ]
                  ),
                  SizedBox(height:25),
                  AppTextlarge(text: "Group",color:Colors.black.withOpacity(0.8),size:10,),
                  SizedBox(height:5),
                  AppText(text: "Jumlah Peserta dalam group anda",color:AppColors.mainTextColor,size:10,),
                   SizedBox(height:10,),
                  Wrap(
                    children: List.generate(5,(index){
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex=index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right:20),
                          child: AppButtons(
                            size: 50,
                            color: selectedIndex==index?Colors.white:Colors.black,
                            backgroundColor:selectedIndex==index?Colors.black:AppColors.buttonBackground, 
                            borderColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                            text: (index+1).toString(),
                          ),
                        ),
                      );
                    }),
                     ),
                 SizedBox(height:20,),
                 AppTextlarge(text: "Deskripsi",color:Colors.black.withOpacity(0.8),size:10,),
                 SizedBox(height:10,),
                 AppText(text: "adalah gunung api strata 2 yang terletak di Kabupaten Garut, Jawa Barat tepatnya di Kecamatan Cisurupan. Gunung dengan ketinggian 2665 meter di atas permukaan laut itu terletak sekitar 70 km sebelah tenggara Kota Bandung.",color:AppColors.mainTextColor,size: 15,),
                 SizedBox(height: 10,),
                 Positioned(
                   bottom: 30,
                   left: 30,
                   right: 40,
                   child: Row(
                     children: [
                       AppButtons(
                         color: AppColors.textColor1, 
                         backgroundColor: Colors.white, 
                         borderColor: AppColors.textColor1, size: 60,
                         isIcon: true,
                         icon: Icons.favorite_border,),
                       ResponsiveButton(
                         isResponsive:true,
                       ),
                     ],
                   )
                 )
                ],
              ),
              )
            )
          ],

        ),
      ),
      
    );
  }
}