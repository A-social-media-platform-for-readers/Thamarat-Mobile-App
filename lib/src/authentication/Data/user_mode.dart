class User {
  final String identity;
  final String name;
  final String email;
  final String password;
  final String? birthDate;
  final String? gender;
  final String? profileImage;
  final String? bio;
  final String? phone;
  final int? address;

  User({
    required this.identity,
    required this.name,
    required this.email,
    required this.password,
    this.birthDate,
    this.gender,
    this.profileImage,
    this.bio,
    this.phone,
    this.address,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      "identity": identity,
      "name": name,
      "email": email,
      "password": password,
    };

    if (profileImage != null) data["profile_image"] = profileImage;
    if (bio != null) data["bio"] = bio;
    if (birthDate != null) data["birth_date"] = birthDate;
    if (gender != null) data["gender"] = gender;
    if (phone != null) data["phone"] = phone;
    if (address != null) data["address"] = address;

    return data;
  }
}
