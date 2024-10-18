import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kono/ui/chapter_screen.dart';
import 'package:yaml/yaml.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

const String activeProfile = String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'local');

const String environment = String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'web');
   
await AppProfileConfig.load(activeProfile,environment);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChapterScreen(),
        ),
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