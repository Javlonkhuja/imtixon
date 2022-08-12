import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imtixon/pages/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void didChangeDependencies() {
    Timer(
      const Duration(seconds: 1),
      (() {
        Navigator.restorablePushNamedAndRemoveUntil(
            context, Page2.path, (route) => false);
      }),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/splash.png"),
      ),
    );
  }
}
