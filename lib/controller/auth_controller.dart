import 'dart:async';
import 'package:flutter/cupertino.dart';


class AuthController extends ChangeNotifier {
  AuthController() {
    registernNameController.addListener(_toggleAuth);
    registerEmailController.addListener(_toggleAuth);
    registerPasswordController.addListener(_toggleAuth);
    registerConfirmPasswordController.addListener(_toggleAuth);
  }

  @override
  void dispose() {
    registernNameController.dispose();
    registerEmailController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
    super.dispose();
  }

  void _toggleAuth() {
    final name = registernNameController.text;
    final email = registerEmailController.text;
    final password = registerPasswordController.text;
    final confirmPassword = registerConfirmPasswordController.text;

    if (name.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty &&
        password == confirmPassword) {
      registernNameController.clear();
      registerEmailController.clear();
      registerPasswordController.clear();
      registerConfirmPasswordController.clear();
      Timer(const Duration(milliseconds: 200), () {
        isLogin = true;
        notifyListeners();
      });
    } else {
      isLogin = false;
      notifyListeners();
    }
  }

  bool isLogin = false;

  void toggleLogin() {
    isLogin = !isLogin;
    notifyListeners();
  }

  // login controllers
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  // register controllers
  TextEditingController registernNameController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerConfirmPasswordController =
      TextEditingController();
}
