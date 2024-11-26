import 'package:flutter/material.dart';
import 'package:wather_app/widget/no_weater_body.dart';

class Homeviem extends StatelessWidget {
  const Homeviem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Wather App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const NowatherBody());
  }
}
