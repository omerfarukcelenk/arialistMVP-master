import 'package:arialist/models/GetMostLiking.dart';

class MostLikingResponse {
  List<GetMostLiking> data;
  String status;
  String message;

  MostLikingResponse(this.data, this.status, this.message);

  factory MostLikingResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["GetMostLiking"] as List;
    List<GetMostLiking> mostLikingList = jsonArray
        .map((jsonArrayVariable) => GetMostLiking.fromJson(jsonArrayVariable))
        .toList();
    return MostLikingResponse(mostLikingList, json["stasus"], json["message"]);
  }
}
