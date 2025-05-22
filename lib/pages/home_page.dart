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
        backgroundColor: Colors.blue,
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
                color: Colors.white,
              ))
        ],
        title: const Text(
          'Wather App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is WeatherInitialstate) {
          return const NowatherBody();
        } else if (state is WeatherLaodedState) {
          return const WeatherInfoBody();
        } else {
          return const Center(
              child: Text(
            'opps there was an error',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ));
        }
      }),
    );
  }
}
