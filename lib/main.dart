import 'package:flutter/material.dart';
import 'package:imtixon/pages/home.dart';
import 'package:imtixon/pages/page2.dart';
import 'package:imtixon/pages/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Page2.path: (context) => const Page2(),
        Page3.path: (context) => const Page3(),
      },
      home: const Page1(),
    );
  }
}
