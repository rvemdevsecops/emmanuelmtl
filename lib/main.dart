import 'package:emmanuelmtl/pages/connect_screen.dart';
import 'package:emmanuelmtl/pages/give_screen.dart';
import 'package:emmanuelmtl/pages/live_screen.dart';
import 'package:emmanuelmtl/pages/more_screen.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'pages/church_screen.dart';
import 'pages/live_screen.dart';

void main() => runApp(EmmanuelMtl());

class EmmanuelMtl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: HomePage(),
      //     routes: {
      //      HomePage.id: (context) => HomePage(),
      //     ChurchScreen.id: (context) => ChurchScreen(),
      //    LiveScreen.id: (context) => LiveScreen(),
      //   ConnectScreen.id: (context) => ConnectScreen(),
      //  GiveScreen.id: (context) => GiveScreen(),
      // MoreScreen.id: (context) => MoreScreen(),
      //},
    );
  }
}
