import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Store().addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about',
                    arguments: {'text': 'page'});
              },
              child: Text('点击吗'),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text('${Store().counter}'),
            ),
            GestureDetector(
              onTap: () {
                Store().add();
              },
              child: Text('点击吗'),
            ),
          ],
        ),
      ),
    );
  }
}

class Store extends ChangeNotifier {
  static final Store _store = Store._internal();
  factory Store() => _store;

  Store._internal() {
    print('11');
  }
  int counter = 0;

  void add() {
    counter++;
    notifyListeners();
  }
}
