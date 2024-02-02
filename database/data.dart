import 'package:flutter/material.dart ';

class Data extends InheritedWidget with ChangeNotifier {
  Data({super.key, required Widget child}) : super(child: child);

  final List<Message> chat = [Message(y: "Marlon")];

  void inputMessage(String x) {
    chat.add(Message(y: x));
    notifyListeners();
  }

  static Data of(BuildContext context) {
    final Data? result = context.dependOnInheritedWidgetOfExactType<Data>();
    assert(result != null, 'No Data found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Data oldWidget) {
    return true;
  }
}

class Message extends StatelessWidget {
  Message({super.key, required this.y});

  final String y;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(
              255, 121, 195, 255), // Cor de fundo do Container
          borderRadius:
              BorderRadius.circular(19), // Raio de arredondamento das bordas
        ),
        padding: EdgeInsets.all(12),
        child: Text(
          y,
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
