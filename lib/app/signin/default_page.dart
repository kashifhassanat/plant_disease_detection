import 'package:flutter/material.dart';
import 'package:plant_disease_detection/app/common_widget/CustomRaisedButton.dart';


class DefaultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContainer(),
    );
  }

  Widget buildContainer() {
//     return Container(
//       child: Image(
// image: AssetImage('images/main.png') , fit: BoxFit.fill,),

//     );

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
                              text: 'A modern solution for farmer in ',
                              style: TextStyle(
                                fontSize: 19.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'detecting ',
                              style: TextStyle(
                                fontSize: 19.0,
                                color: Color(0xFFB2002D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'the disease',
                              style: TextStyle(
                                fontSize: 19.0,
                                color: Color(0xFFB2002D),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 70.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55.0,
                                child: CustomRaisedButton(
                                    color: Colors.black87,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'images/gmail.png',
                                          width: 30,
                                          height: 25,
                                        ),
                                        Text(
                                          '   SIGN IN WITH GMAIL',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      print("button pressed");
                                    }),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              SizedBox(
                                height: 55.0,
                                child: CustomRaisedButton(
                                    color: Color(0xFF334D92),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'images/fb.png',
                                          width: 30,
                                          height: 25,
                                        ),
                                        Text(
                                          '  SIGN IN WITH FACEBOOK',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      print("button pressed");
                                    }),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'OR',
                                style: TextStyle(
                                    fontSize: 100.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF35693e)),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                height: 55.0,
                                child: CustomRaisedButton(
                                    color: Colors.white70,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                       
                                        Image.asset(
                                          'images/mail.png',
                                          width: 30,
                                          height: 25,
                                        ),
                                        Text(
                                          '  CREATE AN ACCOUNT',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      print("button pressed");
                                    }),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: 'ALREADY HAVE AN ACCOUNT ? ',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'LOG IN ',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
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
