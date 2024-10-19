import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:kono/application_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yaml/yaml.dart';

import 'database/chapter_entity.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const String activeProfile =
      String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'local');

  const String environment =
      String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'web');

  await AppProfileConfig.load(activeProfile, environment);

  if (kIsWeb) {
    Hive.init('kono_db'); 
    // You can use an empty string for web
  } else {
    // For mobile and desktop, use the appropriate path
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
  }

  // Register your adapters here
  Hive.registerAdapter(ChapterEntityAdapter());

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(context, ref) {
    var router = ref.watch(appRouter);
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'ߞߐߣߐ',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.highContrastDark(),
      ),
    );
  }
}

Map<String, dynamic> appProperties = {};

class AppProfileConfig {
  static Future<Map<String, dynamic>> load(
      String activeProfile, String environment) async {
    log("the active profile is : $activeProfile");
    String configFile = 'profiles/$activeProfile/application_$environment.yaml';
    String yamlString = await rootBundle.loadString(configFile);
    var yaml = loadYaml(yamlString);
    var res = Map<String, dynamic>.from(yaml);
    log("profile properties are $res");
    appProperties = res;
    return res;
  }
}
