import 'package:wather_app/model/weather_model.dart';

class WeatherState {}

class WeatherInitialstate extends WeatherState {}

class WeatherLaodedState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLaodedState({required this.weatherModel});
}

class WeatherFailureState extends WeatherState {}
