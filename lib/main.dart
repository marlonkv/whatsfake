import 'package:flutter/material.dart';
import 'package:whatsappfake/components/input_chat.dart';
import 'package:whatsappfake/components/output_chat.dart';
import 'package:whatsappfake/database/data.dart';

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
    return  MaterialApp(
      title: 'WhatsFake',
      home: Data(child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutputChat(),
            InputChat(inputContext: context),
          ],
        )
      ),
    ));
  }
}

