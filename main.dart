import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main(){
    runApp(MaterialApp(
        title: 'Login',
        home: HomeScreen()
    ));
}

class HomeScreen extends StatelessWidget{

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Login',
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
        );
    }
}