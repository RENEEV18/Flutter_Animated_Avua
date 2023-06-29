import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home_screen/home_screen.dart';

class HomeController extends ChangeNotifier {
  void toHomePage(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ),
    );
    notifyListeners();
  }
}
