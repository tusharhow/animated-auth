import 'package:flutter/cupertino.dart';

class AuthController extends ChangeNotifier {
  bool isLogin = false;

  void toggleLogin() {
    isLogin = !isLogin;
    notifyListeners();
  }
}
