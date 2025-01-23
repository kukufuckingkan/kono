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

class BookPage extends ConsumerStatefulWidget {
  final String sku;
  final String? name;

  BookPage({Key? key, required this.sku, this.name}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends ConsumerState<BookPage> {
  @override
  void initState() {
        Future.microtask(() {
      ref.read(sectionController.notifier).findByBookSku(widget.sku);
    super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    final sectionState = ref.watch(sectionController);

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

    return ListView.separated(
      itemCount: sectionState.sections.length,
      itemBuilder: (context, index) {
        final section = sectionState.sections[index];
        return ElevatedButton(
          onPressed: () {
            var sku = section.sku;
            ChapterPageRoute(sectionSku: sku).go(context);
          },
          child: Text(section.name),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(color: Colors.blue, thickness: 1);
      },
    );
  }
}


