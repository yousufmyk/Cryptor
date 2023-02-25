import 'package:cryptor/Routes/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }

  navigateToService() {
    Get.toNamed(Routes.loginScreen);
  }

  // navigateToSendMoney() {
  //   Get.toNamed(Routes.addNumberSendMoneyScreen);
  // }

  // navigateToAddNumberMobileRecharge() {
  //   Get.toNamed(Routes.addNumberMobileRechargeScreen);
  // }

  // navigateToAddNumberCashOutScreen() {
  //   Get.toNamed(Routes.addNumberCashOutScreen);
  // }

  // navigateToAddNumberPaymentScreen() {
  //   Get.toNamed(Routes.addNumberPaymentScreen);
  // }

  // navigateToAddSourceScreen() {
  //   Get.toNamed(Routes.addSourceBankToXPayScreen);
  // }

  // navigateToAddOrganizationScreen() {
  //   Get.toNamed(Routes.addOrganizationScreen);
  // }

  // navigateToAddSourceTransferMoneyScreen() {
  //   Get.toNamed(Routes.addSourceTransferMoneyScreen);
  // }

  // navigateToSavingRulesScreen() {
  //   Get.toNamed(Routes.savingRulesScreen);
  // }

  // navigateToRemittanceSourceScreen() {
  //   Get.toNamed(Routes.remittanceSourceScreen);
  // }

  // navigateToTransactionsHistoryScreen() {
  //   Get.toNamed(Routes.transactionsScreen);
  // }

  // navigateToDailyLimitScreen() {
  //   Get.toNamed(Routes.dailyLimitScreen);
  // }

  // navigateToCouponScreen() {
  //   Get.toNamed(Routes.couponScreen);
  // }

  // navigateToInformationUpdateScreen() {
  //   Get.toNamed(Routes.informationUpdateScreen);
  // }

  // navigateToReferToXPayScreen() {
  //   Get.toNamed(Routes.referToXPayScreen);
  // }

  // navigateToXPayMapScreen() {
  //   Get.toNamed(Routes.omaSmartPayMapScreen);
  // }

  // navigateToSettingScreen() {
  //   Get.toNamed(Routes.settingScreen);
  // }

  // navigateToChangeNameScreen() {
  //   Get.toNamed(Routes.changeNameScreen);
  // }

  // navigateToChangePictureScreen() {
  //   Get.toNamed(Routes.changePictureScreen);
  // }

  // navigateToSupportScreen() {
  //   Get.toNamed(Routes.supportScreen);
  // }

  // navigateToLiveChatScreen() {
  //   Get.toNamed(Routes.liveChatScreen);
  // }

  // navigateToSetImg() {
  //   Get.toNamed(Routes.setimgScreen);
  // }

  // navigateTosetDashboardScreen() {
  //   Get.toNamed(Routes.setDashboardScreen);
  // }

  // navigateTosetRatingScreen() {
  //   Get.toNamed(Routes.setRatingScreen);
  // }

  // navigateTogoBackToLogin() {
  //   Get.toNamed(Routes.goBackToLogin);
  // }

  // navigateTogoStartupCouponScreen() {
  //   Get.toNamed(Routes.startupCoupon);
  // }

  // navigateTogoToQRcodeAddNumber() {
  //   Get.toNamed(Routes.goToQRcodeAddNumber);
  // }

  // navigateToLoanTermsScreen() {
  //   Get.toNamed(Routes.goToLoadTermsScreen);
  // }

  // navigateTogoToCardScreen() {
  //   Get.toNamed(Routes.goToCardScreen);
  // }

  // navigateTogoToIntroSendMoney() {
  //   Get.toNamed(Routes.goToIntroSendMoneyScreen);
  // }

  // navigategoToIntroMobileRechargeScreen() {
  //   Get.toNamed(Routes.goToIntroMobileRechargeScreen);
  // }

  // navigateTogoToIntroCashoutScreen() {
  //   Get.toNamed(Routes.goToIntroCashoutScreen);
  // }
}
