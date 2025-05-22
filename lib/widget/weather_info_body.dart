import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('cairo',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const Text(
            'updated at ',
            style: TextStyle(
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
              const Text(
                '17',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Column(
                children: [
                  Text(
                    'Maxtemp: 24',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mintemp: 15',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Ligh Rain',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
