import 'package:dio/dio.dart';
import 'package:wather_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);
  Future<WeatherModel> getWather({required cityName}) async {
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=4be996dcada64284adb42603240312&q=$cityName&days=1');
    WeatherModel weatherModel = WeatherModel.fromjson(response.data);

    return weatherModel;
  }
}
