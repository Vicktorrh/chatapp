import 'dart:convert';

class UserModel {
  final String userId;
  final String name;
  final String email;
  final String profilePic;
  final String bio;

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.profilePic,
    required this.bio,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'profilePic': profilePic,
    };
  }

  static UserModel? fromMap(Map<String, dynamic>? user) {
    if (user == null) return null;
    try {
      return UserModel(
          userId: user['userId'],
          name: user['name'],
          email: user['email'],
          profilePic: user['profilePic'],
          bio: user['bio']);
    } catch (e) {
      return null;
    }
  }

  String toJson() => json.encode(toMap());

  static UserModel? fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
