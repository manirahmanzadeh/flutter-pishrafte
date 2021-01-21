

import 'package:flutter_app/splash.dart';
import 'package:flutter/material.dart';

import 'models/chapter_model.dart';
import 'pages/flashcards_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fibet",
      home: SplashPage(),
      theme: ThemeData(
        fontFamily: "s",
        primaryColor: Color(0xFFf48fb1)
      ),
    )
  );
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("فیبت(فلش کارت های فیزیک)"),
        bottom: AppBar(
          title: Text("سرفصل ها"),
        ),
      ),

      body: ListView(
        children: [
          Wrap(
            children: chapters.map(
                    (e) => FlatButton(
                      padding: EdgeInsets.all(0),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>FlashCardsPage(chapter:e)));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.1,
                              child: Container(
                                width: (MediaQuery.of(context).size.width-80)/2,
                                height: (MediaQuery.of(context).size.width-80)/2,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent.withOpacity(0.3),

                                  image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        color: Colors.black12
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              e.title,
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        )
                    )
            ).toList(),
          )
        ],
      ),

    );
  }
}
