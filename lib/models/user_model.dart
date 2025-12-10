class UserModel {
  final String uid;
  final String username;
  final String email;
  final String photoUrl;
  final bool isVerified;

  UserModel({
    required this.uid,
    required this.username,
    required this.email,
    required this.photoUrl,
    required this.isVerified,
  });

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "username": username,
    "email": email,
    "photoUrl": photoUrl,
    "isVerified": isVerified,
  };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    uid: json["uid"],
    username: json["username"],
    email: json["email"],
    photoUrl: json["photoUrl"],
    isVerified: json["isVerified"],
  );
}