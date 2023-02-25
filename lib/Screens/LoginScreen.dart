import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/LoginController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String tag = '/loginScreen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 8),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      )),
                ),
                const Image(
                    image: AssetImage("Assets/Images/LoginScreenImage.png")),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFc3cdf1),
                          Color(0xffa8b3e8),
                          Color(0XFF8c9ae4)
                        ],
                      ),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(10, 10))),
                  child: TextField(
                      cursorColor: const Color.fromARGB(255, 2, 48, 85),
                      controller: controller.userNameController,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 2, 48, 85))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 2, 48, 85))),
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 2, 48, 85),
                        hintText: "Username",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 2, 48, 85)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFc3cdf1),
                          Color(0xffa8b3e8),
                          Color(0XFF8c9ae4)
                        ],
                      ),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(10, 10))),
                  child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: const Color.fromARGB(255, 2, 48, 85),
                      controller: controller.passwordController,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 2, 48, 85))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10)),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 2, 48, 85))),
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Color.fromARGB(255, 2, 48, 85),
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 2, 48, 85)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                      )),
                ),
                SizedBox(
                  height: 2,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print("Sign In");
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
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account ?",
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.w500,
                        // fontSize: 17
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
