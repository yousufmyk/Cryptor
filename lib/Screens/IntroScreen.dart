import 'package:cryptor/Controllers/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

import 'ChooseAuthScreen.dart';
import 'LoginScreen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: AlignmentDirectional.topEnd,
              colors: [Color(0xFF1d1963), Color(0XFF3a1362)],
              radius: 1.5,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Image(image: AssetImage("Assets/Images/cloudsPic (1).png")),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Convert Cash Into",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const Text(
                "Crypto, Simply",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const SizedBox(height: 10),
              const Text(
                "Connect your bank account and get",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              const Text(
                "access to more than 76000 crypto",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              const Text(
                "currencies and tokens",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              const SizedBox(
                height: 75,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: [
                    Color(0xffc79cbf),
                    Color(0xffa94f8d)
                    //add more colors
                  ]),
                ),
                child: SliderButton(
                  baseColor: Colors.white,
                  buttonColor: Colors.deepPurpleAccent,
                  highlightedColor: Colors.deepPurpleAccent,
                  backgroundColor: Colors.transparent,
                  action: () {
                    //controller.navigateToService();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseAuthScreen()),
                    );
                    print("hello");
                  },
                  label: const Text(
                    "Get Started        ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    //textAlign: TextAlign.start,
                  ),
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
