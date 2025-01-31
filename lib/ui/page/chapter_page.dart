import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/chapter_controller.dart';

import '../input/chapter_page_input.dart';



class ChapterPage extends ConsumerWidget{
  final String sku;

  ChapterPage({super.key, required this.sku});
 

  @override
  Widget build(BuildContext context,ref) {
      Future.microtask(() => ref.read(chapterController.notifier).findAll());
    var state = ref.watch(chapterController);

    // Loading state
    if (state.fetching) {
      return const Center(child: CircularProgressIndicator());
    }

    // Error state
    if (state.error.isNotEmpty) {
      return Center(
        child: Text(
          state.error,
          style: const TextStyle(color: Colors.red, fontSize: 16),
        ),
      );
    }

    // Chapter and parts processing
    List<Widget> items = [];
    var chapter = state.chapters.first;
    var parts = chapter.parts;

    for (var part in parts!) {
      if (part.format == "text") {
        // Decode base64 text format
        try {
          var decoded = base64.decode(part.data ?? "");
          String text = utf8.decode(decoded, allowMalformed: true);
          items.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text),
          ));
        } catch (e) {
          items.add(Text('Error decoding text', style: TextStyle(color: Colors.red)));
        }
      }

      else if (part.format == "json_table") {
        // Process table format
        List<DataColumn> cols = [];
        List<DataRow> rows = [];

        // Add columns (headers)
        for (var col in part.table!.columns!) {
          for (var header in col.headers!) {
            cols.add(DataColumn(label: Text(header)));
          }
        }

        // Add rows
        for (var row in part.table!.rows!) {
          List<DataCell> cells = [];
          for (var cellText in row.row!) {
            cells.add(DataCell(Text(cellText)));
          }
          rows.add(DataRow(cells: cells));
        }

        items.add(Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(columns: cols, rows: rows),
        ));
      }
    }

    // Return the dynamic list of items as a scrollable ListView
    return ListView(
      children: items,
    );
  }
}
