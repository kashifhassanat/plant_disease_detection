

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class User{
  final String uid;

  User({@required this.uid});
}

abstract class AuthBase{
  Future<User> currentUser();
  Future<void> signOut();
  Stream<User> get onAuthstateChanged;
  Future<User> signInWithFacbook() ;
}

class Auth implements AuthBase {

final _firebaseAuth =FirebaseAuth.instance;

User _userFromFirebase(FirebaseUser user){
  if(user==null){
    return null;
  }
  return User(uid: user.uid);
}
Stream<User> get onAuthstateChanged{
  return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
}
@override
Future <User> currentUser() async {

final user = await _firebaseAuth.currentUser();
return _userFromFirebase(user);



}

@override
Future<User> signInWithFacbook() async{
  final facebookLogin = FacebookLogin();
  final result = await facebookLogin.logInWithReadPermissions(
    ['public_profile']);
    if(result.accessToken != null){
      final authResult= await FirebaseAuth.instance.signInWithCredential(
        FacebookAuthProvider.getCredential(
          accessToken: result.accessToken.token
        ));
        return _userFromFirebase(authResult.user);
    }
    else{
      throw PlatformException(code: "Error_Missing_Google_Auth_Token",
      message: "Missing Auth Token");
    }
}



@override
Future <void> signOut() async {

 await _firebaseAuth.signOut();
  final facebookLogin=FacebookLogin();
    await facebookLogin.logOut();


}

}