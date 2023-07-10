import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        SizedBox(height: 5,),
        Text(subtitle, style: TextStyle(
          fontSize: 16,
          color: Colors.white70
        ),),

      ],
    );
  }
}
