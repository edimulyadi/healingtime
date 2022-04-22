
import 'package:flutter/material.dart';
import 'package:healing_time/pages/detail_page.dart';
import 'package:healing_time/pages/home_page.dart';
import 'package:healing_time/pages/navpages/main_page.dart';
import 'package:healing_time/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: 'Healing Time',
      debugShowCheckedModeBanner: false,
      routes: {
    
        '/':(context) =>WelcomePage(),
        
        
      },
    );
  }
}
