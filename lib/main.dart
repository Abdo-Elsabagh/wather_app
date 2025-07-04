import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_cubit.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_states.dart';
import 'package:wather_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    useMaterial3: false,
                    colorScheme: ColorScheme.fromSwatch(
                        primarySwatch: getThemeColor(
                            BlocProvider.of<GetWeatherCubit>(context)
                                    .weatherModel
                                    ?.watherCondition ??
                                "default"))),
                home: const SplachView(),
              );
            },
          ),
        ));
  }
}

MaterialColor getThemeColor(String condition) {
  switch (condition) {
    case "Sunny":
    case "Clear":
      return Colors.amber;

    case "Partly Cloudy ":
      return Colors.orange;

    case "Cloudy":
    case "Overcast":
      return Colors.blueGrey;

    case "Mist":
    case "Fog":
    case "Haze":
      return Colors.grey;

    case "Patchy rain possible":
    case "Patchy rain nearby":
    case "Patchy light rain":
    case "Light rain":
    case "Patchy light drizzle":
    case "Light drizzle":
      return Colors.lightBlue;

    case "Moderate rain":
    case "Moderate rain at times":
    case "Heavy rain":
    case "Heavy rain at times":
      return Colors.indigo;

    case "Patchy light snow":
    case "Light snow":
    case "Moderate snow":
    case "Heavy snow":
    case "Blizzard":
      return Colors.cyan;

    case "Patchy sleet possible":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Freezing drizzle":
    case "Freezing fog":
    case "Light freezing rain":
      return Colors.teal;

    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.lightGreen;

    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Thundery outbreaks possible":
      return Colors.deepPurple;

    default:
      return Colors.blue;
  }
}
