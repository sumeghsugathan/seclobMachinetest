import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "🌟 You are beautiful , and ",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text(
            "I'm here to capture it! 🌟",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
