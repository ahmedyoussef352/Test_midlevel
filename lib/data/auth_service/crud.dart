// ignore_for_file: avoid_print, prefer_const_constructors, depend_on_referenced_packages

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/post_model.dart';
import '../models/weather_model.dart';

// ignore: prefer_interpolation_to_compose_strings
class Crud {
  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch posts');
    }
  }

  Future<Weather> fetchWeather(String cityName) async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=9f1a1416373afe3c54077a664fce9571';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return Weather.fromJson(jsonMap);
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
