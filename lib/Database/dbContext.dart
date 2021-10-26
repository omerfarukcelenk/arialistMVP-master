// ignore_for_file: file_names
// "http://www.arialistapp.com/api/GetPopularMusic
import 'dart:convert';
import 'package:arialist/models/GetPopularMusic.dart';
import 'package:arialist/response/popular_music_response.dart';
import 'package:http/http.dart' as http;

class dbContext {
  Future<PopularMusicResponse> popularMusics() async {
    var url = Uri.parse("https://bonybom.com/api/category/all");
    var response = await http.get(url);
    return PopularMusicResponse.fromJson(response.body);
  }
}
