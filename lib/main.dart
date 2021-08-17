import 'package:flutter/material.dart';
import 'package:flutterml/screens/menupage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash());
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // ignore: must_call_super
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MenuPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: Text(
          "Flutter ML",
          style: TextStyle(fontSize: 50, color: Colors.blueAccent),
        )),
      ),
    );
  }
}
