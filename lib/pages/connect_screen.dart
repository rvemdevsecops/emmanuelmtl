import 'package:flutter/material.dart';

class ConnectScreen extends StatefulWidget {
  static const String id = 'connect_screen';
  @override
  _ConnectScreenState createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Connect Screen'),
      ),
    );
  }
}
