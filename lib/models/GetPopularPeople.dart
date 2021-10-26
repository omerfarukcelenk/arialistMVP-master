// ignore_for_file: file_names

// SELECT ui.user_id, u.name, u.surname, ui.profile_picture_url FROM User_information ui INNER JOIN user u ON u.user_id = ui.user_id ORDER BY ui.support_count DESC LIMIT 10

import 'package:arialist/models/User_Information.dart';

import 'User.dart';

class GetPopularPeople {
  User_Information id;
  User name;
  User surname;
  User_Information profile_picture_url;

  GetPopularPeople(this.id, this.name, this.surname, this.profile_picture_url);
  factory GetPopularPeople.fromJson(Map<String, dynamic> json) {
    return GetPopularPeople(
        json["id"] as User_Information,
        json["name"] as User,
        json["surname"] as User,
        json["profile_picture_url"] as User_Information);
  }
}
