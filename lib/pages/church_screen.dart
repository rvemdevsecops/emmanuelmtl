import 'package:flutter/material.dart';
import 'package:emmanuelmtl/reuseable_card.dart';

class ChurchScreen extends StatefulWidget {
  static const String id = 'church_screen';
  @override
  _ChurchScreenState createState() => _ChurchScreenState();
}

class _ChurchScreenState extends State<ChurchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('images/SM.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
