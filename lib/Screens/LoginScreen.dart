import 'package:flutter/material.dart';

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
            //borderRadius: BorderRadius.circular(40),
            gradient: RadialGradient(
              center: AlignmentDirectional.topEnd,
              //center: Alignment(-0.8, -0.8),
              colors: [Color(0xFF1d1963), Color(0XFF3a1362)],
              radius: 1.5,
            ),
            // borderRadius: BorderRadius.circular(300),
            //image: DecorationImage(
            // image:
            //   AssetImage("Assets/Images/crpytorBackgroundImage.png"))),
          ),
          child: const Column(
            children: [
              Image(
                  //width: 400,
                  image: AssetImage("Assets/Images/cloudsPic (1).png")),
            ],
          )),
    );
  }
}
