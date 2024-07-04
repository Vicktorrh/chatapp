import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/model/users_model.dart';

class ContactProvider extends ChangeNotifier {
  final firestore = FirebaseFirestore.instance;

  // Stream<QuerySnapshot<Map<String, dynamic>>> getAllUser() async* {
  //   yield firestore.collection('users').snapshots().;
  // }
}
