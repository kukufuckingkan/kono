import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kono/controller/book_controller.dart';
import 'package:kono/ui/widget/book_widget.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        Flexible(child: Consumer(builder: (_, ref, __) {
          var state = ref.watch(bookController.select((value) => value));

          if (state.fetching) {
            return const CircularProgressIndicator();
          }
          if (state.error.isNotEmpty) {
            return Text(state.error);
          }

          var books = state.books;

          return SingleChildScrollView(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: books.length,
              itemBuilder: (context, index) {
                var book = books[index];
                return  BookWidget(book: book);
              },
            ),
          );
        }))
      ],
    );
  }
}
