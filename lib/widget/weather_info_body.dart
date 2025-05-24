import 'package:flutter/material.dart';
import 'package:wather_app/model/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(weatherModel.cityName,
              style:
                  const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          Text(
            'updated at ${weatherModel.date} ',
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
                  Image.asset('assets/images/cloudy.png'),
              Text(
                weatherModel.temp.toString(),
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp: ${weatherModel.maxTemp}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mintemp: ${weatherModel.minTemp}',
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
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
