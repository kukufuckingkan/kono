import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/chapter_controller.dart';

import '../input/chapter_page_input.dart';

class ChapterPage extends ConsumerStatefulWidget {

  final ChapterPageInput input;
  const ChapterPage({super.key, required this.input});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ChapterPageState();
  }
}

class _ChapterPageState extends ConsumerState<ChapterPage> {
  

  _ChapterPageState();

  @override
  void initState() {
    Future.microtask(() => ref.read(chapterController.notifier).findBySku(widget.input.chapterSku));
    //Future.microtask(() => ref.read(chapterController.notifier).findAll());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(chapterController);
  
    List<Widget> items = [];
    var chapter = state.chapter;
    var parts = chapter.parts;

    String text = "";
    List<DataColumn> cols = [];
    List<DataRow> rows = [];
    
    for (var part in parts!) {
      if (part.format == "text") {
        //var data = part.
        var decoded = base64.decode(part.data ?? "");
        text = utf8.decode(decoded, allowMalformed: true);
        items.add(Text(text));
      }

      else if(part.format == "json_table") {
        var len = part.table!.rows!.length;
        for (var i = 0; i < len; i++) {
          List<DataCell> cells = [];
          var currRow = part.table!.rows![i];

          for (int j = 0; j < currRow.row!.length; j++) {
            var currText = currRow.row![j];
            cells.add(DataCell(Text(currText)));
          }
          var newRow = DataRow(cells: cells);
          rows.add(newRow);
        }

        for (var z = 0; z < part.table!.columns!.length; z++) {
          var curr = part.table!.columns![z];

          for (var c = 0; c < curr.headers!.length; c++) {
            cols.add(DataColumn(label: Text(curr.headers![c])));
          }
        }
        items.add(DataTable(columns: cols, rows: rows));
      }
    }

    return Column(
      children: items
    );
  }
}
