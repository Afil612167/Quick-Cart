import 'package:flutter/cupertino.dart';

class EditProfileScreenController extends ChangeNotifier {
  //for male =true ,
  bool gender = false;
  //for click checkign
  bool isClick = false;
  //if clicked light red else light grey
  bool clickColor1 = false;
  bool clickColor2 = false;
  isClickUpdate({required bool click}) {
    isClick = click;
    notifyListeners();
  }

  genderUpate({required bool gender1}) {
    gender = gender1;
    notifyListeners();
  }

  colorUpate({required bool colorClick}) {
    clickColor1 = colorClick;
    clickColor2 = false;
    notifyListeners();
  }

  colorUpate2({required bool colorClick}) {
    clickColor2 = colorClick;
    clickColor1 = false;
    notifyListeners();
  }

  //text field controlling
  final TextEditingController firstNameCtrl = TextEditingController();
  final TextEditingController lastNameCtrl = TextEditingController();

}
