import 'package:fight/index.dart';
import 'package:fight/pages/index.dart';
import 'package:flutter/material.dart';

class Routers {
  static Map<String, Widget Function(BuildContext)> routers(
      BuildContext context) {
    Map<String, Widget Function(BuildContext)> res = {
      '/': (context) => MyHomePage(title: 'zgl'),
      '/about': (context) => About(),
    };
    return res;
  }
}
