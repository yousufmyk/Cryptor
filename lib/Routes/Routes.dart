import 'package:get/get.dart';

import '../Screens/LoginScreen.dart';

class Routes {
  static const String loginScreen = '/loginScreen';

  static var list = [
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
    ),
  ];
}
