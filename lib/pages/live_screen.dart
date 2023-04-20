import 'package:flutter/material.dart';

class LiveScreen extends StatefulWidget {
  static const String id = 'live_screen';
  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Live Screen'),
      ),
    );
  }
}
