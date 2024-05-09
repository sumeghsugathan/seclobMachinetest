import 'package:flutter/material.dart';
import 'package:seclobtest/components/profileheader.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({
    super.key,
    required this.imageUrls,
  });

  final List imageUrls;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ProfileHeader(imageUrls: imageUrls),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "50",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              "Post",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "50",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              "Followers",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "564",
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "Following",
                style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ],
    );
  }
}
