import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

User? user = FirebaseAuth.instance.currentUser;

var firestoreCollections = FirebaseFirestore.instance
    .collection('user')
    .doc(user!.phoneNumber)
    .collection('User Info')
    .doc('User Info')
    .snapshots();

var docUser = FirebaseFirestore.instance
    .collection("user")
    .doc(user!.phoneNumber)
    .collection("User Info")
    .doc('User Info');

var wishListFireStore = FirebaseFirestore.instance
    .collection('user')
    .doc(user!.phoneNumber)
    .collection('wishList');
