
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/chapter_controller.dart';



class BookPage extends ConsumerWidget {
  final String sku;
  const BookPage({super.key,required this.sku});

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
          return Text("Book Page");
          //var data = base64.decode(curr.data); 
          //String text = utf8.decode(data,allowMalformed: true);

          //return Text(text,style: GoogleFonts.arOneSans(),);
        }))
      ],
    );
  }
}
