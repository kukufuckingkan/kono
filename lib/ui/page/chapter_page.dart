import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

// class ChapterPage extends StatelessWidget {
//   final String data;
//   const ChapterPage({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//            var decoded = base64.decode(data); 
//           String text = utf8.decode(decoded,allowMalformed: true);
//           return Center(child: Text(text,style: GoogleFonts.arOneSans(),));
//   }
 
// }

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
            
            var decoded = base64.decode(data); 
          String text = utf8.decode(decoded,allowMalformed: true);
          return Center(child: Text(text,style: GoogleFonts.arOneSans(),));
  }
  
}