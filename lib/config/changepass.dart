import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> resetEmailAddress(
      String newEmail, String oldEmail, String password) async {
    var authResult = await _auth.signInWithEmailAndPassword(
        email: oldEmail, password: password);
    await authResult.user.updateEmail(newEmail);
    await FirebaseFirestore.instance.collection('createusers')
        .doc(authResult.user.uid)
        .update({'email': newEmail});
  }

   Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
  