import 'package:cloud_firestore/cloud_firestore.dart';

class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageURL;
  final DateTime lastActive;

  ChatUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.imageURL,
    required this.lastActive,
  });

  factory ChatUser.fromJSON(Map<String, dynamic> _json) {
    return ChatUser(
      uid: _json["uid"],
      name: _json["name"],
      email: _json["email"],
      imageURL: _json["image"],
      lastActive: _json["last_active"].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "image": imageURL,
      "last_active": lastActive,
    };
  }

  String lastDateActive() {
    return "${lastActive.month}/${lastActive.day}/${lastActive.year}";
  }

  bool wasRecentlyActive() {
    return DateTime.now().difference(lastActive).inHours < 2;
  }
}
