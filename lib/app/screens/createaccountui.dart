import 'package:flutter/material.dart';
import 'package:flutter_app/app/common_widget/CustomRaisedButton.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccount createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
  SignUpModel signUpModel = SignUpModel(name, address, email, password);
  GlobalKey<FormState> _formKey = GlobalKey();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  get checkboxValue => null;

  static String get address => null;

  static String get name => null;

  static String get password => null;

  static String get email => null;

  save(){
  if(_formKey.currentState.validate()){
    _formKey.currentState.save();
    _firebaseAuth.createUserWithEmailAndPassword(
        email: signUpModel.email,
        password: signUpModel.password
    );
    print(signUpModel.name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/main.png'),
                fit: BoxFit.fill)
        ),
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
                  child: Form(
    key: _formKey,

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
                      child: TextFormField(
    validator: (text){
      if(text.isEmpty)
        return "Required Field";
      return null;
    },
    onSaved:(text) => signUpModel.name = text,
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
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: TextFormField(
    validator: (text){
    if(text.isEmpty)
    return "Required Field";
    return null;
    },
    onSaved:(text) => signUpModel.address = text,
                        decoration: InputDecoration(
                          labelText: "Address",
                          hintText: "Enter your Address",
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
                      ),
                    ),
    //                Container(
              //                  child: Container(
              //          padding: const EdgeInsets.all(4.7),
              //          decoration: BoxDecoration(
              //            border: Border.all(color: Colors.grey),
              //            color: Colors.white,
              //            borderRadius: BorderRadius.circular(50.0),
              //          ),
              //          child: DropdownButton(
              //            // dropdownColor: Colors.red,
              //            hint: Text("  Select Country: "),
              //            isExpanded: true,
              //            style: TextStyle(
              //              color: Colors.black,
              //              fontSize: 16,
              //              fontWeight: FontWeight.w400,
              //            ),
                          // value: valuechoose,
    //            onChanged: (newValue) {
    //                      setState(() {
    //                        valuechoose = newValue;
    //                      });
              //                    },
                //          items: listitem.map((valueItem) {
    //          return DropdownMenuItem(
    //                        value: valueItem,
    //                        child: Text(valueItem),
    //                      );
              //                    }).toList(),
              //        ),
              //      ),
                    //    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: TextFormField(
    validator: (text){
    if(text.isEmpty)
    return "Required Field";
    return null;
    },
                      onSaved:(text) => signUpModel.email = text,
                        decoration: InputDecoration(
                          labelText: "Email Address",
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
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      child: TextFormField(
    validator: (text){
    if(text.isEmpty)
    return "Required Field";
    return null;
    },
    onSaved:(text) => signUpModel.password = text,
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
                      ),
                    ),

                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            height: 55.0,
                            child: CustomRaisedButton(
    onPressed: save,
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
    )
    )
                                ]
    )
    )
    )
    )
    )
    ]
    )
    ));
  }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

class SignUpModel {
  String name;
  String address;
  String email;
  String password;
  SignUpModel(
      this.name,
      this.address,
      this.email,
      this.password,
      );
}