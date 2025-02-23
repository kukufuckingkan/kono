// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/application_router.dart';
import 'package:kono/controller/section_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/application_router.dart';
import 'package:kono/controller/section_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/application_router.dart';
import 'package:kono/controller/section_controller.dart';
import 'package:kono/response/chapter_response.dart';
import 'package:kono/ui/page/chapter_page.dart';
import 'package:page_flip/page_flip.dart';
import 'package:split_view/split_view.dart';

import '../../controller/chapter_controller.dart';
import '../input/chapter_page_input.dart';

class BookPage extends ConsumerStatefulWidget {
  final String sku;

  BookPage({super.key, required this.sku});

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends ConsumerState<BookPage> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(sectionController.notifier).findByBookSku(widget.sku);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sectionState = ref.watch(sectionController);
    //var state = ref.watch(chapterController.select((value) => value));
    // var chapters = state.chapters;

    if (sectionState.fetching) {
      return const Center(child: CircularProgressIndicator());
    }

    if (sectionState.error.isNotEmpty) {
      return Center(
        child: Text(
          sectionState.error,
          style: const TextStyle(color: Colors.red, fontSize: 16),
        ),
      );
    }

    List<ChapterPageInput> chaptersInputs = [];
    List<ChapterPage> pages = [];

    for (var sec in sectionState.sections) {
      for (var chp in sec.chapters) {
        var input = ChapterPageInput(chapterSku: chp.sku, sectionSku: sec.sku);
        chaptersInputs.add(input);
        // pages.add(ChapterPage(input: input));
      }
    }

   return ListView.separated(
  itemCount: sectionState.sections.length,
  itemBuilder: (context, index) {
    final section = sectionState.sections[index];
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            var sku = section.sku;
            //ChapterPageRoute(sectionSku: sku).go(context);
          },
          child: Text(section.name),
        ),
        // Inner ListView with shrinkWrap
        ListView.separated(
          itemCount: section.chapters.length,
          shrinkWrap: true, // Makes the inner ListView take up only the space it needs
          separatorBuilder: (context, index) {
            return const Divider(color: Colors.blue, thickness: 1);
          },
          itemBuilder: (ctx, i) {
            return ElevatedButton(onPressed: () { 
              ChapterPageRoute(chapterSku: section.chapters[i].sku).go(context);
             },
            child: Text(section.chapters[i].name ?? "missing"));
          },
        ),
      ],
    );
  },
  separatorBuilder: (context, index) {
    return const Divider(color: Colors.blue, thickness: 1);
  },
);

  }
}
