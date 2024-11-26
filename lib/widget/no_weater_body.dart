import 'package:flutter/material.dart';

class NowatherBody extends StatelessWidget {
  const NowatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('There is no weather 😔 start',
                style: TextStyle(
                  fontSize: 24,
                )),
            Text('searching now 🔍',
                style: TextStyle(
                  fontSize: 24,
                )),
          ],
        ),
      ),
    );
  }
}
