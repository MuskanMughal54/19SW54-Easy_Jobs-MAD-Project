import 'package:easy_jobs/constants.dart';
import 'package:easy_jobs/screens/job_detail_screen.dart';
import 'package:easy_jobs/screens/profile_screen.dart';
import 'package:easy_jobs/screens/splash_screen.dart';
import 'package:easy_jobs/widgets/category_box.dart';
import 'package:easy_jobs/widgets/icons_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String idScreen = "home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SplashScreen()));
                          },
                          color: Colors.white,
                          iconSize: 30,
                          icon: const Icon(
                              CupertinoIcons.line_horizontal_3_decrease)),
                      avatar(context),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 10),
                      child: Text(
                        "Find the World\s most Amazing Jobs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    searchForJobs(size),
                    const SizedBox(height: 15),
                    const Text(
                      "Jobs Matched",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    jobMatched(context, size),
                    const SizedBox(height: 10),
                    const Text(
                      "Jobs Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    jobCategory(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  avatar(BuildContext context) {
    return InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()));
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: kPurpleColor,
          child: Image.asset("assets/images/employee3.jpg"),
        ));
  }
}

jobCategory() {
  return Row(
    children: const [
      Expanded(
          flex: 1,
          child: CategoryBox(
              boxColor: kYellowColor,
              title: "Designing",
              iconBox: IconBox(
                height: 30,
                width: 40,
                radius: 10,
                color: Colors.white,
                icon: CupertinoIcons.wand_stars_inverse,
                iconColor: kPrimaryLightColor,
              ),
              subTitle: "3.2k jobs")),
      SizedBox(width: 5),
      Expanded(
          flex: 1,
          child: CategoryBox(
              boxColor: kPurpleColor,
              title: "DevOps",
              iconBox: IconBox(
                height: 30,
                width: 40,
                radius: 10,
                color: Colors.white,
                icon: CupertinoIcons.flowchart_fill,
                iconColor: kPrimaryLightColor,
              ),
              subTitle: "4.3k jobs")),
      SizedBox(width: 5),
      Expanded(
          flex: 1,
          child: CategoryBox(
              boxColor: kGreenColor,
              title: "Flutter",
              iconBox: IconBox(
                height: 30,
                width: 40,
                radius: 10,
                color: Colors.white,
                icon: CupertinoIcons.checkmark_seal_fill,
                iconColor: kPrimaryLightColor,
              ),
              subTitle: "4.3k jobs")),
    ],
  );
}

jobMatched(BuildContext context, Size size) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const JobDetailScreen(
                    jobTitle: 'Flutter Developer',
                    company: 'Master Card',
                    description:
                        "We're team of youthful, intelligent and dedicated creatives who have an unrivaled energy and passion for crafting beautiful and meaningful products. We strive to follow al UX processes of ideation, research and MVP for our product designs to enable output that is both aesthetic and strategic.",
                    responsibilty:
                        'Keep the interface beautiful and ease to use.',
                    info: '1600 Amphitheatre Parkway, Mountain View',
                  )));
    },
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kGreenColor),
      child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: size.width / 15,
            right: size.width / 15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " Master Card",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Image.asset("assets/images/master1.png")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    //MainAxisAlignment.start,
                    "Sr. Flutter Developer",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  features('User Interface'),
                  SizedBox(width: 10),
                  features('User Research / Flow'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                  Icon(
                    CupertinoIcons.clock,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    //MainAxisAlignment.start,
                    "Be in the first",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(width: 2),
                  Text(
                    //MainAxisAlignment.start,
                    "86 applicats",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      employees(imageUrl: "assets/images/employee1.jpg"),
                      Container(
                        child:
                            employees(imageUrl: "assets/images/employee2.jpg"),
                        margin: const EdgeInsets.only(left: 35),
                      ),
                      Container(
                        //child: employees(text: "86"),
                        child:
                            employees(imageUrl: "assets/images/employee3.jpg"),
                        margin: const EdgeInsets.only(left: 70),
                      ),
                      // Container(
                      //   child: employees(text: "88+"),
                      //   margin: const EdgeInsets.only(left: 100),
                      // ),
                    ],
                  ),
                  const Text("6 Hours Ago",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(height: 10),
            ],
          )),
    ),
  );
}

employees({imageUrl = "", text}) {
  return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: imageUrl != " "
          ? CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imageUrl),
            )
          : CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black87,
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ));
}

features(text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child:
        Text(text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
  );
}

searchForJobs(Size size) {
  return Container(
    width: size.width,
    height: 65,
    decoration: BoxDecoration(
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        IconButton(
            padding: const EdgeInsets.only(left: 20, right: 20),
            onPressed: () {},
            color: Colors.white,
            iconSize: 28,
            icon: const Icon(CupertinoIcons.search)),
        Expanded(
            child: SizedBox(
          child: TextFormField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              hintText: "Search for Jobs",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
              border: InputBorder.none,
            ),
          ),
        )),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconBox(
            width: 55,
            height: 55,
            icon: CupertinoIcons.slider_horizontal_3,
          ),
        )
      ],
    ),
  );
}
