class User {
  late int id;
  late String name;
  late String email;
  late String phone;

  User(
      {required this.id,
      required this.email,
      required this.name,
      required this.phone});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}
