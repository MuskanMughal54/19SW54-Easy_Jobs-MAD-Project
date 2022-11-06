import 'package:easy_jobs/constants.dart';
import 'package:easy_jobs/widgets/app_feature.dart';
import 'package:easy_jobs/widgets/custom_statistics.dart';
import 'package:easy_jobs/widgets/icons_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.arrow_left),
                iconSize: 30,
                color: Colors.white,
              ),
            ),
            profileImg(),
            Container(
              width: size.width,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sarah\n Sr. Flutter Developer",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        jobSearchStatus(),
                        SizedBox(height: 40),
                        statistics(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.09),
                    child: AppFeature(
                        title: "Complete Profile",
                        subTitle: "Personal | Job Experience | Certificaton",
                        color: kGreenColor,
                        component: const IconBox(
                          icon: Icons.edit,
                          height: 35,
                          width: 35,
                          radius: 20,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

statistics() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      CustomStatistics(title: "Applied", value: "93"),
      CustomStatistics(title: "Review", value: "77"),
      CustomStatistics(title: "Contacted", value: "43"),
    ],
  );
}

jobSearchStatus() {
  return Row(
    children: const [
      Text(
        'Actively Looking',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
          color: Colors.grey,
        ),
      ),
      SizedBox(width: 20),
      IconBox(
        color: Colors.blue,
        width: 30,
        height: 30,
        icon: CupertinoIcons.checkmark_alt,
        iconColor: Colors.black,
      ),
    ],
  );
}

profileImg() {
  return Container(
    alignment: Alignment.center,
    child: Image.asset(
      'assets/images/employee3.jpg',
      scale: 1.8,
    ),
  );
}
