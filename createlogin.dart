import 'package:flutter/material.dart';

import 'package:plant_disease_detection/app/common_widget/CustomRaisedButton.dart';

class CreateLogin extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CreateLogin> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildcreateContainer(),
    );
  }

  Widget buildcreateContainer() {
    return Stack(
      children: [
        Container(
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 1.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/main.png'), fit: BoxFit.fill),
              ),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.0, right: 16.0, bottom: 5.0),
                  child: Container(
                    margin: const EdgeInsets.only(top: 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/pddlogo.png'),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0.0, right: 300.0),
                            child: Container(
                              height: 5.0,
                              width: 70.0,
                              color: Color(0xFFB2002D),
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'CREATE ACCOUNT',
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55.0,
                                child: TextField(
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 22.0, color: Color(0xFFbdc6cf)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: 'Username',
                                    contentPadding: const EdgeInsets.only(
                                        left: 14.0, bottom: 8.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              SizedBox(
                                height: 55.0,
                                child: TextField(
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 22.0, color: Color(0xFFbdc6cf)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: 'Email',
                                    contentPadding: const EdgeInsets.only(
                                        left: 14.0, bottom: 8.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                height: 55.0,
                                child: TextField(
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 22.0, color: Color(0xFFbdc6cf)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: 'Password',
                                    contentPadding: const EdgeInsets.only(
                                        left: 14.0, bottom: 8.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                height: 55.0,
                                child: TextField(
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 22.0, color: Color(0xFFbdc6cf)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: 'Address',
                                    contentPadding: const EdgeInsets.only(
                                        left: 14.0, bottom: 8.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                height: 55.0,
                                child: CustomRaisedButton(
                                    color: Color(0xFFB2002D),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    onPressed: () {
                                      print("button pressed");
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
