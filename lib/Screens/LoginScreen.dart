import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                height: 15,
              ),
              SliderButton(
                //buttonColor: Colors.deepPurpleAccent,
                //baseColor: Colors.deepPurpleAccent,
                // backgroundColor: ,
                // backgroundColor: (LinearGradient(colors: colors)),

                action: () {
                  ///Do something here
                  //Navigator.of(context).pop();
                },
                label: const Text(
                  "Slide to cancel Event",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                // icon: const Text(
                //   "x",
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontWeight: FontWeight.w400,
                //     fontSize: 44,
                //   ),
                // ),
                icon: const Icon(
                  Icons.arrow_circle_right_rounded,
                  size: 70,
                  color: Colors.deepPurpleAccent,
                ),
              )
            ],
          )),
    );
  }
}
