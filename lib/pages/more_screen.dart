import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  static const String id = 'more_screen';
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('More Screen'),
      ),
    );
  }
}
