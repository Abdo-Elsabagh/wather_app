import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_cubit.dart';
import 'package:wather_app/main.dart';
import 'package:wather_app/model/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
    super.key,
    required this.wearther,
  });
  final WeatherModel wearther;
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getThemeColor(weatherModel.watherCondition),
              getThemeColor(weatherModel.watherCondition)[300]!,
              getThemeColor(weatherModel.watherCondition)[200]!,
              getThemeColor(weatherModel.watherCondition)[50]!
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(weatherModel.cityName,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold)),
              Text(
                'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    'https:${weatherModel.image}',
                  ),
                  Text(
                    weatherModel.temp.round().toString(),
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text(
                        'Maxtemp: ${weatherModel.maxTemp.round()}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Mintemp: ${weatherModel.minTemp.round()}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                weatherModel.watherCondition,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          )),
        ),
      ),
    );
  }
}
