import 'dart:developer';

import 'package:flutter/material.dart';

class SearchViem extends StatelessWidget {
  const SearchViem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Search a city',
            //style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: TextField(
              onChanged: (value) {
                log(value);
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                hintText: 'Enter city name',
                suffixIcon: const Icon(Icons.search),
                // label: const Text('Search'),
                labelText: 'Search',
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
