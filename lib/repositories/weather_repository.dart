import 'dart:convert';
import 'package:weather_app_flutter_bloc/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  final String _apiKey = '3f00989d1726fb527f50cf81b140eaa5';
  String weatherUrl(String cityName) {
    return 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$_apiKey&units=metric';
  }

  Future<WeatherModel> fetchWeather(String cityName) async {
    final url = Uri.parse(weatherUrl(cityName));
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Şehir bulunamadı.');
    }
  }
}
