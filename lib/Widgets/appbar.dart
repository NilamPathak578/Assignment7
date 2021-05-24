import 'package:flutter/material.dart';

class CustomFlexiableAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      height: statusBarHeight,
      width: double.infinity,
      color: Color(0xff12B0E8)..withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Nilam Pathak",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Application Developer",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white70,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColumn("Photos", "160"),
                buildColumn("Followers", "2154"),
                buildColumn("Following", "1234")
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildColumn(String title, String subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
