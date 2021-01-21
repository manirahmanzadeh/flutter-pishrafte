import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/chapter_model.dart';
import 'package:flutter_app/models/note_model.dart';

class FlashCardPage extends StatefulWidget {
  @override
  _FlashCardPageState createState() => _FlashCardPageState(note: note);
  NoteModel note;
  FlashCardPage({this.note});
}

class _FlashCardPageState extends State<FlashCardPage> {
  NoteModel note;

  double myFontSize = 18;

  _FlashCardPageState({this.note});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext context)=> Scaffold(
          appBar: AppBar(
            title: Text("فلش کارت شماره ${note.id}"),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color(0xFFf48fb1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(note.text,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: myFontSize),),
              ),
            ),
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(
                        heroTag: "1",
                        child: Icon(Icons.add, color: Colors.black,),
                        backgroundColor: Colors.white,
                        tooltip: "افزایش سایز فونت",
                        onPressed: (){
                          setState(() {
                            if(myFontSize<60){
                              myFontSize += 3;
                            }
                          });
                        }),
                    Container(height: 5,width: 0,),
                    FloatingActionButton(
                        heroTag: "2",
                        child: Icon(Icons.minimize_sharp, color: Colors.black,),
                        backgroundColor: Colors.white,
                        tooltip: "افزایش سایز فونت",
                        onPressed: (){
                          setState(() {
                            if(myFontSize>5){
                              myFontSize -= 3;
                            }
                          });
                        }),
                  ],
                ),
                Container(height: 0,
                  width: 10,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(
                        heroTag: "3",
                        child: Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,),
                        backgroundColor: Colors.white,
                        tooltip: "فلش کارت بعدی",
                        onPressed: (){
                          setState(() {
                            if(note.id<notes.where((element) => element.chapterNumber==note.chapterNumber).last.id){
                              note = notes.firstWhere((element) => element.id==note.id+1);
                            }else{
                              Scaffold.of(context).showSnackBar(SnackBar(content: Text("فلش کارت های این فصل تمام شد")));
                            }
                          });
                        }),
                    Container(height: 5,width: 0,),
                    FloatingActionButton(
                        heroTag: "4",
                        child: Icon(Icons.arrow_back_ios_sharp, color: Colors.black,),
                        backgroundColor: Colors.white,
                        tooltip: "فلش کارت قبلی",
                        onPressed: (){
                          setState(() {
                            if(note.id>notes.where((element) => element.chapterNumber==note.chapterNumber).first.id){
                              note = notes.firstWhere((element) => element.id==note.id-1);
                            }else{
                              Scaffold.of(context).showSnackBar(SnackBar(content: Text("فلش کارت های این فصل تمام شد")));

                            }
                          });
                        }),
                  ],
                ),
              ],
            ),
          )
      )),
    );
  }
}

