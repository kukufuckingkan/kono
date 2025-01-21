import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kono/ui/page/book_page.dart';
import 'package:page_flip/page_flip.dart';

import '../../controller/chapter_controller.dart';
import '../page/chapter_page.dart';



class ChapterScreen extends ConsumerWidget {

  const ChapterScreen({super.key});

  @override
  Widget build(context, ref) {
    Future.microtask(() =>
        {ref.read(chapterController.notifier).findAll()});
            var state = ref.watch(chapterController.select((value) => value));
           var chapters = state.chapters;
        return PageFlipWidget(children: [

        for (var i = 0; i < chapters.length; i++) ChapterPage(data: chapters[i].data,)

        ],);
  }
}
