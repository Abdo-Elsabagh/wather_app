import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wather_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String apiKey = '8fbb788b8b8e44f3820234313250604';
  final String baseUrl = 'https://api.weatherapi.com/v1';
  WeatherService(this.dio);
  Future<WeatherModel> getWather({required cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error, try later');
    }
  }
}
