import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_states.dart';
import 'package:wather_app/model/weather_model.dart';
import 'package:wather_app/pages/search_page.dart';
import 'package:wather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);

  getWeather({required String cityName}) async {
   WeatherModel weatherModel = await WeatherService(Dio()).getWather(cityName: cityName);
  }
}
