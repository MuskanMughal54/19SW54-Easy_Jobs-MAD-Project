import 'package:flutter/material.dart';
import 'package:easy_jobs/widgets/widgets.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox(
      {Key? key,
      this.width = 115,
      this.height,
      required this.boxColor,
      required this.title,
      required this.iconBox,
      required this.subTitle})
      : super(key: key);

  final double width;
  final double? height;
  final String title;
  final String subTitle;
  final IconBox iconBox;
  final Color boxColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: boxColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              iconBox,
              const SizedBox(height: 10),
              Text(title,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 5),
              Text(subTitle,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const CustomButton(
                text: "View Jobs",
                width: double.infinity,
                radius: 5,
              ),
            ],
          ),
        ));
  }
}
