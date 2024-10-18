import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/chapter_controller.dart';



class ChapterScreen extends ConsumerWidget {

  const ChapterScreen({super.key});

  @override
  Widget build(context, ref) {
    Future.microtask(() =>
        {ref.read(chapterController.notifier).findAll()});

    return Column(
      children: [
        Flexible(child: Consumer(builder: (_, ref, __) {
          var state = ref.watch(chapterController.select((value) => value));
          var chapters = state.chapters;
          var curr = chapters.first;

          var data = base64.decode(curr.data); 
          String text = utf8.decode(data,allowMalformed: true);

          return Text(text);
        }))
      ],
    );
  }
}
