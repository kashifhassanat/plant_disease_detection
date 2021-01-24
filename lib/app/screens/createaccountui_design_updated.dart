
import 'package:flutter/material.dart';
import 'package:plant_disease_detection/homescreen.dart';

import 'app/common_widget/CustomRaisedButton.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccountUi extends StatefulWidget {
  @override
  _CreateAccountUi createState() => _CreateAccountUi();
}

class _CreateAccountUi extends State<CreateAccountUi> {


  bool checkboxValue = false;
  String valuechoose;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/main.png'), fit: BoxFit.fill)),
        child: ListView(
          /// crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    height: 140.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('images/pddlogo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.6),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Container(
                      child: Container(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                      // padding: EdgeInsets.all(10.0),
                      // child: TextField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //     hintText: 'Password',
                      //     hintStyle: TextStyle(color: Colors.grey),
                      //   ),
                      // ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Full Name",
                          hintText: "Enter your name",
                          // hoverColor: Colors.black,
                          fillColor: Colors.white, filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            // borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Land Address",
                          hintText: "Enter your land address",
                          // hoverColor: Colors.black,
                          fillColor: Colors.white, filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            // borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                          
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email Adress",
                          hintText: "Enter your email",
                          // hoverColor: Colors.black,
                          fillColor: Colors.white, filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            // borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                           
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password",
                          // hoverColor: Colors.black,
                          fillColor: Colors.white, filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            // borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            
                          });
                        },
                        obscureText: true,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          CheckboxListTile(
                            secondary: const Icon(Icons.alarm),
                            title: Text('Get further email updates'),
                            value: this.checkboxValue,
                            onChanged: (bool value) {
                              setState(() {
                                this.checkboxValue = value;
                              });
                            },
                          ),
                          CheckboxListTile(
                            secondary: const Icon(Icons.admin_panel_settings),
                            title: Text('I accept the terms of use'),
                            value: this.checkboxValue,
                            onChanged: (bool value) {
                              setState(() {
                                this.checkboxValue = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            height: 55.0,
                            child: CustomRaisedButton(
                                color: Color(0xFFB2002D),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '  CREATE ACCOUNT',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
