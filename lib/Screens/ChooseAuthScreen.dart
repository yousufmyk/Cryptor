import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseAuthScreen extends StatefulWidget {
  const ChooseAuthScreen({super.key});

  @override
  State<ChooseAuthScreen> createState() => _ChooseAuthScreenState();
}

class _ChooseAuthScreenState extends State<ChooseAuthScreen> {
  @override
  Widget build(BuildContext context) {
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
          child: Center(
            child: Column(
              children: [
                const Image(
                    image: AssetImage(
                        "Assets/Images/Screenshot_from_2023-02-25_21-34-37-removebg-preview.png")),
                const Text(
                  "One Stop Solution For All \n Of Your Crypto Needs",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print("Loign Button Pressed");
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(colors: [
                        Color(0xffc79cbf),
                        Color(0xffa94f8d)
                        //add more colors
                      ]),
                    ),
                    child: const Center(
                        child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print("Register Button Pressed");
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(colors: [
                        Color(0xffc79cbf),
                        Color(0xffa94f8d)
                        //add more colors
                      ]),
                    ),
                    child: const Center(
                        child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
