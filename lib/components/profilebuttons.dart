import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 145,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 24, 74, 192),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
                child: Text(
              "Edit Profile",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 145,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 40, 66, 107),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
                child: Text(
              "Edit Profile",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 45,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(203, 24, 74, 192),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
                child: Icon(
              Icons.call_outlined,
              color: Colors.white,
            )),
          ),
        ),
      ],
    );
  }
}
