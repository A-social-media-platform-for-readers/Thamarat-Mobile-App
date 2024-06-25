class User2 {
  final int id;
  final String name;
  final String? profileImage; // Nullable profileImage
  final String? bio; // Nullable bio

  User2({
    required this.id,
    required this.name,
    this.profileImage,
    this.bio,
  });

  factory User2.fromJson(Map<String, dynamic> json) {
    return User2(
      id: json['id'],
      name: json['name'],
      profileImage: json['profile_image'], // May be null, handle in UI
      bio: json['bio'], // May be null, handle in UI
    );
  }
}
