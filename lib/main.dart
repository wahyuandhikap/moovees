import 'package:flutter/material.dart';
import 'package:moovees/core/shared-page/main_page.dart';
import 'injection_container.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moovees',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MainPage(),
    );
  }
}
