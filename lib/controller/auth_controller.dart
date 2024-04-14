import 'package:flutter/cupertino.dart';

class AuthController extends ChangeNotifier {
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
  TextEditingController registerConfirmPasswordController = TextEditingController();

  // validation not empty
  bool isLoginEmpty() {
    return loginEmailController.text.isEmpty || loginPasswordController.text.isEmpty;
  }

  bool isRegisterEmpty() {
    return registernNameController.text.isEmpty ||
        registerEmailController.text.isEmpty ||
        registerPasswordController.text.isEmpty ||
        registerConfirmPasswordController.text.isEmpty;
  }


}
