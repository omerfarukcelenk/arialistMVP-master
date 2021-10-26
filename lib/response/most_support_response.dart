import 'package:arialist/models/GetMostSupport..dart';

class MostSupportResponse {
  List<GetMostSupport> data;
  String status;
  String message;

  MostSupportResponse(this.data, this.status, this.message);

  factory MostSupportResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["GetMostSupport"] as List;
    List<GetMostSupport> mostSupportList = jsonArray
        .map((jsonArrayVariable) => GetMostSupport.fromJson(jsonArrayVariable))
        .toList();
    return MostSupportResponse(
        mostSupportList, json["status"], json["message"]);
  }
}
