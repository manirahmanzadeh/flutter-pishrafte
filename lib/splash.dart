import 'package:flutter_app/main.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    runPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/splash.png", width: 100),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFf48fb1), width: 8),
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
            ),
            Text("فیبت", style: TextStyle(fontSize: 24, color: Color(0xFFf48fb1), fontWeight: FontWeight.bold),),
            Text("نرم افزار فلش کارت های فیزیک", style: TextStyle(fontSize: 16, color: Colors.black38),),
          ],
        ),
      ),
    );
  }

  void runPage() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> MyHomePage()));
  }


}



