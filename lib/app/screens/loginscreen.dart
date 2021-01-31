import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainPage.dart';


  class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var password;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        key: _scaffoldKey,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(

                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/main.png'), fit: BoxFit.cover),
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50),
                        buildEmail(),
                        SizedBox(height: 20),
                        buildPassword(),
                        buildForgetPasBtn(),
                        buildRememberCb(),
                        buildLoginBtn(),
                        buildLoginfbBtn(),
                        buildSignUpBtn(),
                      ],
                    ),
                  ),

                )
              ],
            ),
          ),
        ),
      );
    }

  bool isRememberMe = false;

  //Widget build(BuildContext context){
  //   return Scaffold(
  //     body: Column(
  //       children: [
  //         Image(
  //           image: AssetImage("images/pddlogo.png"),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular( 10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0,2),
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller: _emailController,
            validator: (String val){
              if (val.isEmpty){
                return "Please enter your email";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              //prefix: Icon(
              //  Icons.email,
              //  color: Color(0xff5ac18e),
              //),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular( 10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0,2),
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            obscureText: true,
            controller: _passwordController,
            validator: (String val){
              if (val.isEmpty){
                return "Please enter your password";
              }
              return null;
            },
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              //prefix: Icon(
              //  Icons.lock,
              //  color: Color(0xff5ac18e),
              //),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget buildForgetPasBtn(){
    return Container(
      alignment: Alignment.centerLeft,
      child: FlatButton(
        onPressed: () => print("Forget Password Pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forget Password?',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }


  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  isRememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () async {
          if(_formKey.currentState.validate()){
            _signinWithEmailPassword();

          }
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.black,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget buildLoginfbBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Login With Facebook Is Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.blue,
        child: Text(
          'Login With Facebook',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: () => print('Sign Up Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              )
            ),
            TextSpan(
              text: 'Register',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ]
        ),
      ),
    );
  }
  Future<void> _signinWithEmailPassword() async {
    try{
      final User user =
      (await _auth.signInWithEmailAndPassword
        (email: _emailController.text, password: _passwordController.text)).user;
      if(!user.emailVerified){
        await user.sendEmailVerification();
      }
      Navigator.of(context).push(MaterialPageRoute(builder: (_){
        return MainPage(user: user,);
      }));
    } catch (e){
      // ignore: deprecated_member_use
      _scaffoldKey.currentState.showSnackBar(SnackBar
        (content: Text("Failed to SignIn with email and password"),
      ));
      print(e);
    }
  }
}