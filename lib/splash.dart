import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//void main() {
//  runApp(new MaterialApp(
//    title: '启动图demo',
//    theme: new ThemeData(
//        brightness: Brightness.light,
//        backgroundColor: Colors.white,
//        platform: TargetPlatform.iOS),
//    home: new SplashScreen(),
//    routes: <String, WidgetBuilder>{
//      '/home': (BuildContext context) => new MyApp()
//    },
//  ));
//}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    //设置启动图生效时间
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:<Widget>[
          Image.asset('static/images/welcome.png'),
          SpinKitWave(color: Colors.red)
        ],
      ),
    );
  }
}