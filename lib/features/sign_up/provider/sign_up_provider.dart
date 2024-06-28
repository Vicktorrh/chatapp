import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/apis/auth.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();

  User? user;

  SignUpWithEmailAndPassword(
      {required String name,
      required String email,
      required String password,
      required BuildContext context}) async {
    var _user = await _authService.signUpWithEmailandPassword(
        context: context, email: email, password: password, name: name);
    if (_user == null) {
      user = _user;
      notifyListeners();
    }
  }

  googleAuth({required BuildContext context}) async {
    var _user = await _authService.signInWithEmailProvider(context);
    if (_user == null) {
      user = _user;
      notifyListeners();
    }
  }
}
