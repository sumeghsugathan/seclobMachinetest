import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.imageUrls,
  });

  final List imageUrls;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: 8.0, top: 8.0, bottom: 8.0),
          child: CircleAvatar(
            radius: 45,
            backgroundImage: imageUrls.length > 7
                ? NetworkImage(imageUrls[7])
                : null,
          ),
        ),
        const Text(
          "Riyan Moon",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "Photographer",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
