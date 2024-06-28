import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/apis/abstract_auth.dart';
import 'package:freshproject/apis/user.dart';
import 'package:freshproject/core/snackbar.dart';
import 'package:freshproject/features/homepage/homepage.dart';

class AuthService implements AuthIM {
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Future<User?> signInWithEmailProvider(BuildContext context) async {
    try {
      var cred = await firebaseAuth.signInWithProvider(GoogleAuthProvider());
      AppSnackBar.success(context, 'Login Successfully');

      return cred.user;
    } on FirebaseException catch (e) {
      AppSnackBar.success(context, e.message ?? 'Some Error Occured');
    }
  }

  @override
  Future<User?> signUpWithEmailandPassword({
    required BuildContext context,
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var cred = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      UserService.saveUserData(
          name: name, userId: cred.user!.uid, email: email);
      AppSnackBar.success(context, 'Registration Successfully');
      return cred.user;
    } on FirebaseException catch (e) {
      AppSnackBar.error(context, e.message ?? 'Some Error Occured');
      return null;
    }
  }

  @override
  Future forgotPassword(BuildContext context, String userEmail) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: userEmail);
      AppSnackBar.success(context, "Email sent successfully");
    } on FirebaseAuthException catch (err) {
      print(err);
      AppSnackBar.error(context, err.message ?? 'error occured');
    }
  }

  @override
  Future signInWithEmailandPassword(
      BuildContext context, String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      AppSnackBar.success(context, 'logged in successfully');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } on FirebaseAuthException catch (err) {
      AppSnackBar.error(context, err.message ?? 'Some error occured');
    }
  }
}
