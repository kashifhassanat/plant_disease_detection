import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/loginscreen.dart';
import 'package:plant_disease_detection/app/screens/loginscreen.dart';

class MainPage extends StatefulWidget{
  final User user;
  const MainPage({Key key, this.user}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    key: _scaffoldKey;
    body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(widget.user.displayName,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: OutlineButton(
              onPressed: () async{
                _signOut().whenComplete((){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                    return LoginScreen();
                  }));
                });
              },
              child: Text ("Logout"),
            ),
          )
        ],
      ),
    );
  }
  Future _signOut() async {
    await _auth.signOut();
  }
}