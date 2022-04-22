import 'package:healing_time/misc/colors.dart';
import 'package:healing_time/widgets/app_text.dart';
import 'package:healing_time/widgets/app_textlarge.dart';
import 'package:flutter/material.dart';
import 'package:healing_time/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images =[
    "garut.png",
    "beach.jpg",
    "camverpan.png",

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount:images.length,
        itemBuilder: (_,index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
             
              image: DecorationImage(
              image: AssetImage(
                "img/"+images[index]
              ),
              fit: BoxFit.cover
              ),
            ),
             child: Container(
               margin:  const EdgeInsets.only(top:270, left:20 , right: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       AppTextlarge(text: "Healing Time"),
                       AppText(text: "Adventure Explore"),
                       SizedBox(height: 20,),
                       Container(
                         width: 200,
                         child: AppText(text: "Rasakan kebebasan anda dari rutinitas dunia kerja yang menjemukan nikmati Kekayaan Alam sekitar",
                         size: 14,
                         ),
                       ),
                          SizedBox(height: 10,),
                          ResponsiveButton()
                   ],
                   ),
                   Column(
                     children:List.generate(3,(indexDots){
                       return Container (
                         margin: const EdgeInsets.only(bottom: 8),
                         width: 8,
                         height: index==indexDots?25:8,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: index==indexDots?AppColors.mainColor : AppColors.mainColor.withOpacity(0.3)
                         )
                       ); 
                     }),
                   )
                 ],
               ),
                
              )
          );
        },
      ),
    );
  }
}