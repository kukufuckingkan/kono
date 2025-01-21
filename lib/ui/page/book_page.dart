// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/controller/section_controller.dart';

class BookPage extends StatelessWidget {
  final String sku;
  final String? name;

  BookPage({super.key, this.name, required this.sku});

  @override
  Widget build(context) {
    return Consumer(builder: (ctx, ref, widget) {
       Future.microtask(() => ref.read(sectionController.notifier).findByBookSku(sku));
       
      var sectionState =  ref.watch(sectionController.select((value) => value));
      var sections = sectionState.sections;
      if (sectionState.fetching) {
        return const CircularProgressIndicator();
      }
      if (sectionState.error.isNotEmpty) {
        return Text(sectionState.error);
      }
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(flex: 1, child: Text('Book NAMe')),
                      ],
                    ),
                    Stack(
                      children: [
                        SingleChildScrollView(
                          
                          child: ListView.separated(
                            itemCount: sections.length,
                            itemBuilder: (context, index) {
                            var section = sections[index];
                            return Text(section.name);
                          }, 
                          separatorBuilder: (BuildContext context, int index) { 
                            return const Divider(color: Colors.blue);
                           }, 
                          ) ,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
