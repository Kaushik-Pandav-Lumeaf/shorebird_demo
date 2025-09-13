import 'package:flutter/material.dart';
import 'package:shorebird_demo/helper/shorebird_helper.dart';
import 'package:shorebird_demo/homepage/home_page.dart';

void main() {
  ShorebirdHelper.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
