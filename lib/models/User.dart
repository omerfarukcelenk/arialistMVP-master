// ignore: file_names
// ignore_for_file: file_names

class User {
  int id;
  String name;
  String email;
  String password;

  User(this.id, this.name, this.email, this.password);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json["id"] as int, json["name"] as String,
        json["emnil"] as String, json["password"] as String);
  }
}
