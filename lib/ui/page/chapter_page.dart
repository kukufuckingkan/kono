import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kono/controller/table_controller.dart';
import 'package:kono/service/table_service.dart';


class ChapterPage extends ConsumerStatefulWidget{
final String data;
  const ChapterPage({super.key,required this.data});



  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
   return _ChapterPageState(data: data);
  }
}

class _ChapterPageState extends ConsumerState<ChapterPage>{
  final String data;

  _ChapterPageState({required this.data});

  @override
  void initState() {
      Future.microtask(() =>  ref.read(tableController.notifier).findAll());  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
          var decoded = base64.decode(data); 
          String text = utf8.decode(decoded,allowMalformed: true);

          var tableState = ref.watch(tableController);
          var tableValue = tableState.tables.first;
          List<DataRow> rows =[];

          for(var i = 0 ; i < tableValue.rows.length;i++){
             List<DataCell> cells = [];
              var currRow = tableValue.rows[i];
             
             for(int j = 0 ; j < currRow.text.length;j++){
              var currText = currRow.text[j];
              cells.add(DataCell(Text(currText)));
             
             }
               var newRow = DataRow(cells: cells);
               rows.add(newRow);

          }
     List<DataColumn> cols = [];
     cols.add(DataColumn(label: Text("col1")));
      cols.add(DataColumn(label: Text("col2")));
       cols.add(DataColumn(label: Text("col3")));

    return Column(children: [
           Center(child: Text(text,style: GoogleFonts.arOneSans(),)),
           //Text(tableValue.toString()),
           DataTable(columns: cols, rows: rows )
    ],);
        
  }
  }