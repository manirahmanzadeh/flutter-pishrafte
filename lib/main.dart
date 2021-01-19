
import 'package:flutter/material.dart';

void main(){
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
  Animation sizeAnimation;



  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );

    sizeAnimation = Tween(
      begin: 30.0,
      end: 300.0
    ).animate(animationController);

    animationController.addListener(() { setState(() {

    });});

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: sizeAnimation.value,
          height: 100,
          color: Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          animationController.forward();
        },
      ),
    );
  }
}


