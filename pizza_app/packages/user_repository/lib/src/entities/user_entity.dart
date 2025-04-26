class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, Object?> toJson() {
    return {
      "userId": userId,
      "email": email,
      "name": name,
      "hasActiveCart": hasActiveCart
    };
  }

  static MyUserEntity fromJson(Map<String, dynamic> jsonMap) {
    return MyUserEntity(
        userId: jsonMap["userId"],
        email: jsonMap["email"],
        name: jsonMap["name"],
        hasActiveCart: jsonMap["hasActiveCart"]
    );
  }
}