import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatService {
  final firebasestore = FirebaseFirestore.instance;
  Future initializeChat(String friendId) async {
    var chat;
    try {
      final docs = await firebasestore
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .collection('chat')
          .doc(friendId)
          .get();

      chat = docs.data();
      if (chat == null) {
        var docs = await firebasestore
            .collection('users')
            .doc(friendId)
            .collection('chat')
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .get();

        chat = docs.data();

        if (chat == null) {
          var chatData = {
            'userid': FirebaseAuth.instance.currentUser?.uid,
            'friendid': friendId,
            'lastMessage': null,
            'messages': []
          };
          firebasestore
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser?.uid)
              .collection('chat')
              .doc(friendId)
              .set(chatData);

          var friendData = {
            'userid': friendId,
            'friendid': FirebaseAuth.instance.currentUser?.uid,
            'lastMessage': null,
            'messages': []
          };
          firebasestore
              .collection('users')
              .doc(friendId)
              .collection('chat')
              .doc(FirebaseAuth.instance.currentUser?.uid)
              .set(friendData);
        }
      }
    } on FirebaseException catch (e) {
      print(e.message);
    }
  }
}
