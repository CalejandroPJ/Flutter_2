class UserModel {
  final String name;
  final int age;
  final String category;
  final String image;
  final String? address;
  final String? email;
  final String? phone;
  final String? bio;
  

  UserModel({
    required this.name,
    required this.age,
    required this.category,
    required this.image,
    this.address,
    this.email,
    this.phone,
    this.bio,
  });
}
