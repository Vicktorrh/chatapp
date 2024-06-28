import 'package:flutter/material.dart';

abstract class AuthIM {
  Future signInWithEmailProvider(BuildContext context);
  Future signUpWithEmailandPassword(
      {required BuildContext context,
      required String name,
      required String email,
      required String password});

  Future forgotPassword(BuildContext context, String email);

  Future signInWithEmailandPassword(
      BuildContext context, String email, String password);
}
