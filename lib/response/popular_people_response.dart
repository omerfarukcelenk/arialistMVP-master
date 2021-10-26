import 'package:arialist/models/GetPopularMusic.dart';
import 'package:arialist/models/GetPopularPeople.dart';
import 'package:arialist/models/Post.dart';
import 'package:arialist/models/User.dart';

class PopularPeopleResponse {
  List<GetPopularPeople> data;
  String status;
  String message;

  PopularPeopleResponse(this.data, this.status, this.message);

  factory PopularPeopleResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["GetPopularPeople"] as List;
    List<GetPopularPeople> popularPeopleList = jsonArray
        .map(
            (jsonArrayVariable) => GetPopularPeople.fromJson(jsonArrayVariable))
        .toList();
    return PopularPeopleResponse(
        popularPeopleList, json["stasus"], json["message"]);
  }
}
