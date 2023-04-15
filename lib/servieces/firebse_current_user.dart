import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

var collection = FirebaseFirestore.instance
    .collection(FirebaseAuth.instance.currentUser!.phoneNumber.toString());
