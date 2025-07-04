import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wather_app/pages/home_page.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Homeviem(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: const Color(0xffFEF6DB),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/svg/splash.json',
              ),
              const Text(
                'Weather  App',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Your personal weather assistant',
                  style: TextStyle(fontSize: 22, color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
