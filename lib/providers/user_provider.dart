import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;

  UserProvider({this.userName = "Shawn"});

  void changeUserName({
    required String newUserName,
  }) async {
    userName = newUserName;
    notifyListeners();
  }
}
