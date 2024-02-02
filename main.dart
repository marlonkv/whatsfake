import 'package:flutter/material.dart';
import 'package:app/components/input_chat.dart';
import 'package:app/components/output_chat.dart';
import 'package:app/database/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Data(child: Main());
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsFake',
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutputChat(),
          InputChat(inputContext: context),
        ],
      )),
    );
  }
}
