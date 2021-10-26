// ignore_for_file: file_names

// SELECT  p.title, p.like_count, p.support_count, u.profile_picture_url FROM Posts p INNER JOIN User_information u ON p.user_id = u.user_id ORDER BY p.support_count DESC

import 'package:arialist/models/Post.dart';
import 'package:arialist/models/User_Information.dart';

class GetMostSupport {
  Post title;
  Post like_count;
  Post support_count;
  User_Information profile_picture_url;

  GetMostSupport(this.title, this.like_count, this.support_count,
      this.profile_picture_url);

  factory GetMostSupport.fromJson(Map<String, dynamic> json) {
    return GetMostSupport(
        json["title"] as Post,
        json["like_count"] as Post,
        json["support_count"] as Post,
        json["profile_picture_url"] as User_Information);
  }
}
