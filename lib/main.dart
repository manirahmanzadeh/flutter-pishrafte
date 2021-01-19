import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyApp(),
      )
  );
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation animation1;
  Animation animation2;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );

    animation1 = Tween(
      begin: 0,
      end: 50
    ).animate(animationController);

    animation2= Tween(
      begin: 10,
      end: 70
    ).animate(animationController);

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


