import 'package:arialist/models/GetPopularMusic.dart';
import 'package:arialist/models/Post.dart';
import 'package:arialist/models/User.dart';

class PopularMusicResponse {
  List<GetPopularMusic> data;
  String status;
  String message;

  PopularMusicResponse(this.data, this.status, this.message);

  factory PopularMusicResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["GetPopularMusic"] as List;
    List<GetPopularMusic> popularMusicList = jsonArray
        .map((jsonArrayVariable) => GetPopularMusic.fromJson(jsonArrayVariable))
        .toList();
    return PopularMusicResponse(popularMusicList, json["stasus"], json["message"]);
  }
}
