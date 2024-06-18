class UserModel {
  final String identity;
  final String name;
  final String email;
  final String password;

  UserModel({
    required this.identity,
    required this.name,
    required this.email,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      identity: json['identity'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'identity': identity,
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
