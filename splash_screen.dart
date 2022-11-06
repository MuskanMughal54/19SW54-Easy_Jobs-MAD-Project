import 'package:easy_jobs/constants.dart';
import 'package:easy_jobs/screens/home_screen.dart';
import 'package:easy_jobs/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  static const String idScreen = "splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Container(
        padding: EdgeInsets.only(top: 80),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/images/img1.png',
              scale: 1.1,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Job Hunting",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                //color: Color(0xff03004),
              ),
            ),
            Text(
              "made easy",
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                //color: Color(0xff5f5fff)
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LoginScreen())));
              },
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
