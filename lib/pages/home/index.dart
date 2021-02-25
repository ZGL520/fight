import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String text;

  Home({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('zgl'),
      ),
      body: Container(
        child: Text('this is ${widget.text}'),
      ),
    );
  }
}
