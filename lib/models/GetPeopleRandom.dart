// SELECT ui.user_id, u.name, u.surname, ui.profile_picture_url FROM User_information ui INNER JOIN user u ON u.user_id = ui.user_id  ORDER BY rand() LIMIT 3

// ignore_for_file: file_names

import 'package:arialist/models/User_Information.dart';

import 'User.dart';

class GetPeopleRandom {
  User_Information id;
  User name;
  User_Information profile_picture_url;

  GetPeopleRandom(this.id, this.name, this.profile_picture_url);

  factory GetPeopleRandom.fromJson(Map<String, dynamic> json) {
    return GetPeopleRandom(
        json["id"] as User_Information,
        json["name"] as User,
        json["profile_picture_url"] as User_Information);
  }
}
