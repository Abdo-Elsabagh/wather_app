import 'package:dio/dio.dart';
import 'package:wather_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String apiKey = '4be996dcada64284adb42603240312';
  final String baseUrl = 'https://api.weatherapi.com/v1';
  WeatherService(this.dio);
  Future<WeatherModel?> getWather({required cityName}) async {
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
    if (response.statusCode == 200) {
      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
    } else {
      final String errormessage = response.data['error']['message'];
      throw Exception(errormessage);
    }
    return null;

    // return weatherModel;
  }
}
