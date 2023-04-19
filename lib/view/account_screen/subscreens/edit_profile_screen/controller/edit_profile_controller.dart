import 'package:flutter/cupertino.dart';

class EditProfileScreenController extends ChangeNotifier {
  //for male =true ,
  bool gender = false;
  //for click checkign
  bool isClick = false;
  //if clicked light red else light grey
  bool clickColor1 = false;
  bool clickColor2 = false;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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

  String? get errorText {
    // at any time, we can get the text from _controller.value.text
    final text = firstNameCtrl.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }
  String? get errorText2 {
    // at any time, we can get the text from _controller.value.text
    final text = firstNameCtrl.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 2) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }

}
