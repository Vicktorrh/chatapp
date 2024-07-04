import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freshproject/model/users_model.dart';

class UserService {
  static final firebaseFirestore = FirebaseFirestore.instance;

  static Future saveUserData(
      {required String name,
      required String userId,
      required String email}) async {
    UserModel userModel = UserModel(
        userId: userId,
        name: name,
        email: email,
        profilePic: '',
        bio: 'Hey there!, I am now using ChatApp');
    try {
      await firebaseFirestore
          .collection('users')
          .doc(userId)
          .set(userModel.toMap());
    } on FirebaseException catch (e) {
      log(e.message.toString());
    }
  }
}
