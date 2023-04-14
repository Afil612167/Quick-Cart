// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

class SignInController extends ChangeNotifier {
  String phoneNumber = '';
  String otp = '';
  String varificationId = '';
  varificationIdUpdate({required varificationId2}) {
    varificationId = varificationId2;
    notifyListeners();
  }

  otpUpdate({required otp2}) {
    otp = otp2.toString();
    print(otp);
    notifyListeners();
  }

  phoneNumberUpdate({required phoneNum}) {
    phoneNumber = phoneNum.toString();
    print(phoneNum);
    notifyListeners();
  }
}
