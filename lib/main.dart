import 'package:flutter/material.dart';
import 'package:mountain_bike/propage.dart';
import 'mobilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mountain(),
    );
  }
}

class Mountain extends StatefulWidget {
  @override
  _MountainState createState() => _MountainState();
}

class _MountainState extends State<Mountain> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth>900) {
          return SafeArea(child: Scaffold(body: ProPage()));
          
        } else  {
          return SafeArea(child: MobilePage());
        }
      });
  }
}


