import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.imageUrls,
  });

  final List imageUrls;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Color.fromARGB(255, 30, 46, 93),
      ),
      child: BottomNavigationBar(
        currentIndex: 4,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined),
            label: 'Camera',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage:
                  imageUrls.length > 7 ? NetworkImage(imageUrls[7]) : null,
            ),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}
