import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/apis/chat.dart';
import 'package:freshproject/constant/app_image.dart';
import 'package:freshproject/features/contacts/provider/provider.dart';
import 'package:freshproject/global_widget/widget.dart';
import 'package:freshproject/model/users_model.dart';
import 'package:provider/provider.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactProvider>(builder: (context, contactProvider, _) {
      return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 25),
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text(
                        'Contacts',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 95),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                                image: AssetImage(AppImages.useradd))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                  height: 900,
                  width: 500,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 230, top: 40),
                        child: Text(
                          'My Contact',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: StreamBuilder(
                          stream: contactProvider.firestore
                              .collection('users')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Loading();
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Column(
                                  children: [
                                    Icon(Icons.network_check),
                                    Text(
                                      'check your internet connection',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              var listOfDoc = snapshot.data?.docs;

                              if (listOfDoc == null || listOfDoc.isEmpty) {
                                return Center(
                                  child: Column(
                                    children: [
                                      Icon(Icons.network_check),
                                      Text(
                                        'No friends available',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return ListView.builder(
                                    itemCount: listOfDoc.length,
                                    itemBuilder: (context, index) {
                                      List<UserModel?> usersModels = listOfDoc
                                          .map((e) =>
                                              UserModel.fromMap(e.data()))
                                          .toList();

                                      UserModel user = usersModels[index]!;
                                      return ContactCard(
                                        name: user.name,
                                        status: user.bio,
                                        imageUrl: user.profilePic,
                                        onTap: () {
                                          if (user.userId ==
                                              FirebaseAuth
                                                  .instance.currentUser?.uid) {
                                            return;
                                          } else {
                                            ChatService()
                                                .initializeChat(user.userId);
                                          }
                                        },
                                      );
                                    });
                              }
                            }
                          },
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      );
    });
  }
}

class ContactCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String status;
  final VoidCallback onTap;
  const ContactCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(imageUrl))),
            ),
            SizedBox(width: 7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: Text(
                    status,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
