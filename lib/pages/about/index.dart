import 'package:flutter/material.dart';

class About extends StatefulWidget {
  final String text;

  About({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
