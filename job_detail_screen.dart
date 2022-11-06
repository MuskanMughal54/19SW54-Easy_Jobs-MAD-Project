import 'dart:ui';

import 'package:easy_jobs/constants.dart';
import 'package:easy_jobs/widgets/app_feature.dart';
import 'package:easy_jobs/widgets/icons_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen(
      {Key? key,
      required this.jobTitle,
      required this.description,
      required this.company,
      required this.info,
      required this.responsibilty})
      : super(key: key);

  final String jobTitle;
  final String description;
  final String company;
  final String responsibilty;
  final String info;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButton(context),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Image.asset('assets/images/master2.png'),
                    Text(jobTitle,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 10),
                    Text(jobTitle,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: kYellowColor,
                        )),
                    const SizedBox(height: 10),
                    Text(info,
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.5,
                          color: Colors.grey,
                        )),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Job Description',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                //letterSpacing: 0.5,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 10),
                          Text(description,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              )),
                          const SizedBox(height: 10),
                          const Text('Responsibilty',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                //letterSpacing: 0.5,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 10),
                          Text(responsibilty,
                              style: TextStyle(
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: Colors.grey)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Stack(
                      children: [
                        AppFeature(
                          title: 'Earn Skill Badge',
                          subTitle:
                              'Skills assessments help you to stand Out to recruiters',
                          color: kYellowColor,
                          height: size.height / 4,
                          component: const IconBox(
                            width: 50,
                            height: 50,
                            radius: 20,
                            color: Colors.white,
                            icon: CupertinoIcons.arrow_right,
                            iconColor: Colors.black,
                          ),
                        ),
                        AppFeature(
                          title: 'Similar Job Alert',
                          subTitle:
                              'Product Designer | Typrography | Google LLC',
                          color: kPurpleColor,
                          height: 110,
                          margin: const EdgeInsets.only(top: 100),
                          component: SizedBox(
                            width: 50,
                            child: Switch(
                              activeColor: Colors.black,
                              activeTrackColor: Colors.white,
                              value: true,
                              onChanged: (val) {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: IconButton(
          color: Colors.white,
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.arrow_left)),
    );
  }
}
