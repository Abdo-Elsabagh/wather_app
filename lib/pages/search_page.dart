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
              decoration: InputDecoration(
                hintText: 'Enter city name',
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(color: Colors.green)),
                // enabledBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(16),
                //     borderSide: const BorderSide(color: Colors.green)),
                // focusedBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(16),
                //     borderSide: const BorderSide(color: Colors.grey))
              ),
            ),
          ),
        ));
  }
}
