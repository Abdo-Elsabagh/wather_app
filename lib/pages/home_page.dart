import 'package:flutter/material.dart';
import 'package:wather_app/pages/search_page.dart';
import 'package:wather_app/widget/weather_info_body.dart';

class Homeviem extends StatelessWidget {
  const Homeviem({super.key});

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
        body: const WatherInfoBody());
  }
}
