import 'package:arialist/models/GetPeopleRandom.dart';

class RamdomPeopleResponse {
  List<GetPeopleRandom> data;
  String status;
  String message;

  RamdomPeopleResponse(this.data, this.status, this.message);

  factory RamdomPeopleResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["GetPeopleRandom"] as List;
    List<GetPeopleRandom> randomPeopleList = jsonArray
        .map((jsonArrayVariable) => GetPeopleRandom.fromJson(jsonArrayVariable))
        .toList();
    return RamdomPeopleResponse(
        randomPeopleList, json["status"], json["message"]);
  }
}
