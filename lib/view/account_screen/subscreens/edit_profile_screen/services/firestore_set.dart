import '../../../../../servieces/firebse_current_user.dart';

Future updateNameGender(
    {required String firstName,
    required String lastName,
    required bool gender}) async {
  final json = {
    "firstName": firstName,
    "secondName": lastName,
    "gender": gender,
    "lastUpdate": DateTime.now()
  };
  try {
    await docUser.set(json);
  } catch (e) {
    print("Firestore Name Exception is $e");
  }
}

Future updateGender() async {
  final gender = {
    'gender': true,
    "firstName": 'QuickCart',
    "secondName": 'Customer',
  };
  try {
    if (await firestoreCollections.isEmpty == false) {
      await docUser.set(gender);
    }
  } catch (e) {}
}
