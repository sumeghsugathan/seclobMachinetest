import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:seclobtest/components/bottomnav.dart';
import 'package:seclobtest/components/gridview.dart';
import 'dart:convert';

import 'package:seclobtest/components/profilebio.dart';
import 'package:seclobtest/components/profilebuttons.dart';
import 'package:seclobtest/components/profilestats.dart';
import 'package:seclobtest/components/profiletabs.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<dynamic> imageUrls = [];

  @override
  void initState() {
    super.initState();
    fetchMediaData();
  }

  Future<void> fetchMediaData() async {
    const url = 'https://rubidya.com/api/users/get-media';
    final headers = {
      'Authorization': 'Bearer ---' //add the token to acces
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        final dynamic data = json.decode(response.body);

        if (data['sts'] == '01') {
          final List<dynamic> mediaList = data['media'];

          final List<String> urls =
              mediaList.map((item) => item['filePath'] as String).toList();

          setState(() {
            imageUrls = urls;
          });
        } else {
          debugPrint('API request failed with message: ${data['msg']}');
        }
      } else {
        debugPrint(
            'API request failed with status code ${response.statusCode}');
        debugPrint('Response body: ${response.body}');
      }
    } catch (e) {
      debugPrint('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8, top: 8),
          child: CircleAvatar(
            child: SvgPicture.asset(
              "assets/images/arrow-right.svg",
              height: 12,
              width: 12,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0, bottom: 8, top: 8),
            child: CircleAvatar(
              child: Icon(Icons.more_horiz),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(imageUrls: imageUrls),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileStats(imageUrls: imageUrls),
          const Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              top: 3,
              bottom: 3,
            ),
            child: ProfileBio(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: ProfileButtons(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 8),
            child: ProfileTabs(),
          ),
          GridViewWidget(imageUrls: imageUrls)
        ],
      ),
    );
  }
}
