class User {
  final int? id;
  final String identity;
  final String password;
  final String name;
  final String email;
  final String? profileImage;
  final String? bio;
  final List<int>? followers;
  final List<int>? following;
  final String? birthDate;

  User({
    this.id,
    required this.identity,
    required this.name,
    required this.email,
    this.profileImage,
    this.bio,
    this.followers,
    this.following,
    this.birthDate,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      identity: json['identity'],
      name: json['name'],
      email: json['email'],
      profileImage: json['profile_image'],
      bio: json['bio'],
      followers: List<int>.from(json['followers'] ?? []),
      following: List<int>.from(json['following'] ?? []),
      birthDate: json['birth_date'],
      password: '',
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
    if (followers != null) data['followers'] = followers;
    if (following != null) data['following'] = following;
    if (birthDate != null) data['birth_date'] = birthDate;

    return data;
  }
}
