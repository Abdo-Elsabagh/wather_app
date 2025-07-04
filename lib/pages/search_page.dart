import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app/cubits/get_waether_cubit/get_weather_cubit.dart';

class SearchViem extends StatelessWidget {
  const SearchViem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Search a city',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: TextField(
              // onChanged: (value) {
              //   log(value);
              // },
              onSubmitted: (value) async {
                var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
                getWeatherCubit.getWeather(cityName: value);
                Navigator.of(context).pop();
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                hintText: 'Enter city name',
                suffixIcon: const Icon(Icons.search),
                // label: const Text('Search'),
                labelText: 'Search 🔍',
                // label: const Icon(Icons.accessibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(color: Colors.green)),
              ),
            ),
          ),
        ));
  }
}
