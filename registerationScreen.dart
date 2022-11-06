import 'package:easy_jobs/constants.dart';
import 'package:easy_jobs/screens/login_screen.dart';
import 'package:easy_jobs/screens/screens.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class registerationScreen extends StatelessWidget {
  static const String idScreen = "register";
  // TextEditingController nameTextEditingController = TextEditingController();
  // TextEditingController emailTextEditingController = TextEditingController();
  // TextEditingController phoneTextEditingController = TextEditingController();
  // TextEditingController passwordTextEditingController = TextEditingController();

  const registerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff154c79),
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/img1.png',
                  //fit: BoxFit.cover,
                  height: 280,
                  width: 300,
                ),
              ),
              // Image(
              //   image: AssetImage('assets/images/logo.png'),
              //   height: 250.0,
              //   width: 400.0,
              //   alignment: Alignment.center,
              // ),
              SizedBox(height: 0),
              Text("Find Your Dream Job",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Brand Bold", fontSize: 24.0,
                    color: Colors.white,
                    //textAlign: TextAlign.center
                  )),
              SizedBox(
                height: 15,
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      //controller: nameTextEditingController,
                      //obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon:
                              Icon(Icons.person, color: Colors.white, size: 30),
                          hintText: "Your Name",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: " Brand-Regular "),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: 15,
                      width: 20,
                    ),
                    TextField(
                      //controller: emailTextEditingController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon:
                              Icon(Icons.email, color: Colors.white, size: 30),
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
                      height: 15,
                      width: 20,
                    ),
                    TextField(
                      //controller: phoneTextEditingController,
                      //obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon:
                              Icon(Icons.phone, color: Colors.white, size: 30),
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: " Brand-Regular "),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: 15,
                      width: 20,
                    ),
                    TextField(
                      // controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon: Icon(Icons.lock, color: Colors.white, size: 30),
                          hintText: "Your Password",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: " Brand-Regular "),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: 15,
                      width: 5,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomeScreen())));
                        // if (nameTextEditingController.text.length < 3) {
                        //   displayToastMessage(
                        //       "Name must be at least 3 characters.", context);
                        // }
                        // // ignore: non_constant_identifier_names
                        // else if (!emailTextEditingController.text
                        //     .contains("@")) {
                        //   displayToastMessage(
                        //       "Email address is not Valid", context);
                        // } else if (passwordTextEditingController.text.isEmpty) {
                        //   displayToastMessage(
                        //       "Phone number is mandatory", context);
                        // } else if (passwordTextEditingController.text.length <
                        //     6) {
                        //   displayToastMessage(
                        //       "Password must be at least 6 Characters.",
                        //       context);
                        // } else {
                        //   registerNewUser(context);
                        // }
                      },
                      color: Colors.white,
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                          child: Text("Submit",
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
                          builder: (context) => LoginScreen(),
                        ));
                    // Navigator.pop(MaterialPageRoute(
                    //     builder: ((context) => loginScreen())));
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, LoginScreen.idScreen, (route) => true);
                  },
                  child: Text(
                    "Already have an account? Sign in",
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
