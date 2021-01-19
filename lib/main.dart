
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
          itemBuilder: (menuCtx){
            return [
              PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.message_outlined),
                    title: Text("some text"),
                    onTap: (){

                    },
                  )
              ),
              PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.check_box_outline_blank),

                    title: Text("some text"),
                    onTap: (){

                    },
                  )
              ),
            ];
          },
          color: Colors.white,
          child: Icon(Icons.more),
        ),
      ),

    );
  }
}



