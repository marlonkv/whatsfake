import 'package:flutter/material.dart ';

class Data extends InheritedWidget with ChangeNotifier{
  Data({super.key, required Widget child}) : super(child: child);

  
  final List<Text> chat = [Text("Marlon")];

  void inputMessage(String x) {
    chat.add(Text(x));
    notifyListeners();
  }

  static Data of(BuildContext context) {
    final Data? result =
        context.dependOnInheritedWidgetOfExactType<Data>();
    assert(result != null, 'No Data found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Data oldWidget) {
    return true;
  }
}

