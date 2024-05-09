import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Photos",
              style: TextStyle(
                color: Color.fromARGB(255, 167, 172, 208),
              ),
            ),
          ),
          Container(
            width: 2,
            height: 25,
            color: const Color.fromARGB(150, 167, 172, 208),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Videos",
              style: TextStyle(
                color: Color.fromARGB(255, 167, 172, 208),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
