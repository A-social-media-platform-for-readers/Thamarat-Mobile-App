class User {
  final String identity;
  final String name;
  final String email;
  final String? profileImage; // Nullable, as it might be null in some cases
  final String? bio; // Nullable, as it might be null in some cases
  final String password;

  User({
    required this.identity,
    required this.name,
    required this.email,
    this.profileImage, // Nullable, can be provided optionally
    this.bio, // Nullable, can be provided optionally
    required this.password,
  });

  // Factory method to convert JSON to User object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      identity: json['identity'],
      name: json['name'],
      email: json['email'],
      profileImage:
          json['profileImage'], // Assuming 'profileImage' field in JSON
      bio: json['bio'], // Assuming 'bio' field in JSON
      password: json['password'], // Assuming 'password' field in JSON
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'password': password,
      'identity': identity,
      'name': name,
      'email': email,
    };

    if (profileImage != null) data['profile_image'] = profileImage;
    if (bio != null) data['bio'] = bio;

    return data;
  }
}
