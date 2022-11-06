import 'package:flutter/material.dart';

class CustomStatistics extends StatelessWidget {
  const CustomStatistics({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 20,
            letterSpacing: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15),
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: 0.5,
              color: Colors.white),
        ),
      ],
    );
  }
}
