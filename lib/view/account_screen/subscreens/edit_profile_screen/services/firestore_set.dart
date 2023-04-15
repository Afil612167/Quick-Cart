import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future updateName({required String firstName, required String lastName}) async {
  String mobileNo = FirebaseAuth.instance.currentUser!.phoneNumber.toString();
  final docUser = FirebaseFirestore.instance
      .collection("user")
      .doc(mobileNo)
      .collection("User Info").doc();
  final json = {
    "firstName": firstName,
    "secondName": lastName,
    "lastUpdate": DateTime.now()
  };
  try {
    await docUser.set(json);
  } catch (e) {
    print("Firestore Name Exception is $e");
  }
}
