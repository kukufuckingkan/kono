import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kono/ui/page/book_page.dart';
import 'package:page_flip/page_flip.dart';
import 'package:split_view/split_view.dart';

import '../../controller/chapter_controller.dart';
import '../page/chapter_page.dart';

class ChapterScreen extends ConsumerStatefulWidget {
  final String sku;
  const ChapterScreen({super.key, required this.sku});
  


  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    
    return _ChapterScreenState(sku: sku);
  }
  
}

class _ChapterScreenState extends ConsumerState<ChapterScreen> {
  final String sku;

  _ChapterScreenState({required this.sku});

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
        

    return SplitView(viewMode: SplitViewMode.Horizontal,
    children: [
      PageFlipWidget(children: [
        for (var i = 0; i < 2; i++) ChapterPage(data: "",)
        ],),
        Text("table of content"),
    ],);

  }
}
