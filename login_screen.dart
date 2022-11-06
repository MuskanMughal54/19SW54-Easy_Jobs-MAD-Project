import 'package:easy_jobs/constants.dart';
import 'package:easy_jobs/screens/home_screen.dart';
import 'package:easy_jobs/screens/registerationScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String idScreen = "login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 45.0),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/img1.png',
                  //fit: BoxFit.cover,
                  height: 240,
                  width: 300,
                ),
              ),
              SizedBox(height: 20),
              Text("Welcome to Easy Jobs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Brand Bold", fontSize: 24.0,
                    color: Colors.white,
                    //textAlign: TextAlign.center
                  )),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      //controller: EmailTextEdiingController,
                      //obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon:
                              Icon(Icons.person, color: Colors.white, size: 30),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: " Brand-Regular "),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      //controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon:
                              Icon(Icons.email, color: Colors.white, size: 30),
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: " Brand-Regular "),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, MainScreen.idScreen, (route) => false);
                        // // print("You Sign In");
                        // if (!EmailTextEdiingController.text.contains("@")) {
                        //   displayToastMessage(
                        //       "Email address is not Valid", context);
                        // } else if (passwordTextEditingController.text.isEmpty) {
                        //   displayToastMessage(
                        //       "password is mandatory.", context);
                        // } else {
                        //   loginAndAuthenticateUser(context);
                        // }
                      },
                      color: Colors.white,
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                          child: Text("Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: " Brand-Regular ")),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ],
                ),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => registerationScreen(),
                        ));
                    //Navigator.push(context, route)
                    //  Navigator.pushNamedAndRemoveUntil(context,
                    //      registerationScreen.idScreen, (route) => false);
                  },
                  child: Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Brand-Regular"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
