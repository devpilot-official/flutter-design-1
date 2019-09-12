import 'package:flutter/material.dart';
import 'pages/landing.dart';

void main() => runApp(NatureLife());

class NatureLife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}