import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/book_controller.dart';
import 'package:kono/ui/page/book_page.dart';

import '../../application_router.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(context) {
    return Drawer(
        //clipBehavior: Clip.hardEdge,
        child: Column(
      children: [
        Flexible(child: Consumer(builder: (context, ref, __) {
          var state = ref.watch(bookController.select((value) => value));

          if (state.fetching) {
            return const CircularProgressIndicator();
          }
          if (state.error.isNotEmpty) {
            return Text(state.error);
          }

          var books = state.books;

          return SingleChildScrollView(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: books.length,
              itemBuilder: (context, index) {
                var book = books[index];
                var title = book.title!.first;
                var subTitle = 'subtile';
                return ElevatedButton(
                  onPressed: (){
                    var sku = book.sku;
                    // BookPageRoute(sku: sku).go(context);
                  },
                  child: ListTile(
                    title: Text(title.text),
                    subtitle: Text(subTitle),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) {  
                return const Divider(color: Colors.blue);
              },
            ),
          );
        }))
      ],
    )
        //elevation: 20.0,
        //semanticLabel: 'endDrawer',
        );
  }
}
