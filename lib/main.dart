import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kono/application_router.dart';
import 'package:yaml/yaml.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

const String activeProfile = String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'local');

const String environment = String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'web');
   
await AppProfileConfig.load(activeProfile,environment);
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(context,ref) {
    var router = ref.watch(appRouter);
    return  MaterialApp.router(
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
    static Future<Map<String, dynamic>> load(String activeProfile,String environment) async {
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