import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_cubit.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_states.dart';
import 'package:wather_app/pages/search_page.dart';
import 'package:wather_app/widget/no_weater_body.dart';
import 'package:wather_app/widget/weather_info_body.dart';

class Homeviem extends StatefulWidget {
  const Homeviem({super.key});

  @override
  State<Homeviem> createState() => _HomeviemState();
}

class _HomeviemState extends State<Homeviem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SearchViem(),
                ));
              },
              icon: const Icon(
                Icons.search,
                size: 26,
                color: Colors.black  ,
              ))
        ],
        title: const Text(
          'Wather App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is WeatherInitialstate) {
          return const NowatherBody();
        } else if (state is WeatherLaodedState) {
          return WeatherInfoBody(
            wearther: state.weatherModel,
          );
        } else {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              'opps, there was an error.\nPlease check the city name and try again',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
          );
        }
      }),
    );
  }
}
