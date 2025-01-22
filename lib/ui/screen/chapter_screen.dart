import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kono/ui/page/book_page.dart';
import 'package:page_flip/page_flip.dart';

import '../../controller/chapter_controller.dart';
import '../page/chapter_page.dart';

class ChapterScreen extends ConsumerStatefulWidget {
  const ChapterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    
    return _ChapterScreenState();
  }
  
}

class _ChapterScreenState extends ConsumerState<ChapterScreen> {

  @override
  void initState() {
    Future.microtask(() =>
        {ref.read(chapterController.notifier).findAll()});

    super.initState();
  }
 
  @override
  Widget build(context) {

            var state = ref.watch(chapterController.select((value) => value));
           var chapters = state.chapters;
        return PageFlipWidget(children: [

        for (var i = 0; i < chapters.length; i++) ChapterPage(data: chapters[i].data,)

        ],);
  }
}
