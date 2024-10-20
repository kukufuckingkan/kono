import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/book_controller.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(context) {
    return Drawer(
        //clipBehavior: Clip.hardEdge,
        child: Column(
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
                var title = book.title!.first;
                var subTitle = book.title!.last;
                return ListTile(
                  title: Text(title.text),
                  subtitle: Text(subTitle.text),
                );
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
