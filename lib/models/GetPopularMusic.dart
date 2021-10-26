// ignore: file_names
// ignore_for_file: file_names

import 'package:arialist/models/Post.dart';
import 'package:arialist/models/User.dart';

// SELECT u.user_id,p.title, u.name, u.surname, p.post_photo_url FROM Posts p INNER JOIN user u ON u.user_id = p.user_id ORDER BY p.like_count DESC LIMIT 10"

class GetPopularMusic {
  User id;
  Post title;
  User name;
  User surname;
  Post post_photo_url;

  GetPopularMusic(
      this.id, this.title, this.name, this.surname, this.post_photo_url);

  factory GetPopularMusic.fromJson(Map<String, dynamic> json) {
    return GetPopularMusic(
        json["id"] as User,
        json["title"] as Post,
        json["name"] as User,
        json["surname"] as User,
        json["post_photo_url"] as Post);
  }
}
