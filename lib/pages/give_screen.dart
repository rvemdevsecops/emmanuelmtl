import 'package:flutter/material.dart';

class GiveScreen extends StatefulWidget {
  static const String id = 'give_screen';
  @override
  _GiveScreenState createState() => _GiveScreenState();
}

class _GiveScreenState extends State<GiveScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Give Screen'),
      ),
    );
  }
}
