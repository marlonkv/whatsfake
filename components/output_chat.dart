import 'package:flutter/material.dart';
import 'package:app/database/data.dart';

class OutputChat extends StatefulWidget {
  const OutputChat({super.key});

  @override
  State<OutputChat> createState() => _OutputChatState();
}

class _OutputChatState extends State<OutputChat> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Data.of(context),
        builder: (context, _) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: Data.of(context).chat,
                ),
              ],
            ),
          );
        });
  }
}
