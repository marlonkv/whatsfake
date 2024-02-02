import 'package:flutter/material.dart';
import 'package:whatsappfake/database/data.dart';

class InputChat extends StatefulWidget {
  
  InputChat({Key?key, required this.inputContext}):super(key: key);
  final BuildContext inputContext;

  @override
  State<InputChat> createState() => _InputChatState();
}

class _InputChatState extends State<InputChat> {

  static const IconData send = IconData(0xe571, fontFamily: 'MaterialIcons', matchTextDirection: true);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController contentController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Form(
        key: _formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 280,
              child: TextField(
                controller: contentController,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Data.of(widget.inputContext).inputMessage(contentController.text);
                print(Data.of(context).chat);
              }, 
              child: Text('data')
            )
          ],
        ),
      ),
    );
  }
}