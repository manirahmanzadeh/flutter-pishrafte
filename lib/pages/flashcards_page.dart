

import 'package:flutter/material.dart';
import 'package:flutter_app/models/chapter_model.dart';
import 'package:flutter_app/models/note_model.dart';

import 'flashcard_page.dart';

class FlashCardsPage extends StatelessWidget {
  ChapterModel chapter;
  FlashCardsPage({this.chapter});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title),
      ),
      body: ListView(
        children: notes.where((element) => element.chapterNumber==chapter.number).map(
                (e) => ListTile(
                  title: Text("فلش کارت شماره ${e.id.toString()}"),
                  subtitle: Text(e.text, overflow: TextOverflow.ellipsis,),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> FlashCardPage(note:e)));
                  },
                )
        ).toList(),
      ),
    );
  }
}
