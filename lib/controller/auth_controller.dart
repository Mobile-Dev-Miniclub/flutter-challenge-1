import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var hasLogin = false.obs;
  var isEnabled = false.obs;
  var isHidden = true.obs;
  var errorMessage = '';

  TextEditingController usernameEmailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  void togglePasswordView() {
    isHidden.value = !isHidden.value;
    print('isHidden: ${isHidden.value}');
  }

  void isAlreadyLogin() {
    hasLogin.value = !hasLogin.value;
    print('isLogin: ${hasLogin.value}');
  }
}