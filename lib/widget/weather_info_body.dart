import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(weatherModel.cityName,
              style:
                  const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
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
                weatherModel.temp.toString(),
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
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
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
