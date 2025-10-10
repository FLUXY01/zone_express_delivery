import 'package:flutter/material.dart';

import '../../../utils/constants/font.dart';

class ReferalDrawer extends StatelessWidget {
  final String name;
  final String phone;

  const ReferalDrawer({Key? key, required this.name, required this.phone})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.deepPurple,
            child: Text(
              name.trim().isNotEmpty
                  ? name.trim().split(' ').length > 1
                        ? '${name.trim().split(' ')[0][0].toUpperCase()}${name.trim().split(' ')[1][0].toUpperCase()}'
                        : name.trim()[0].toUpperCase()
                  : "",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: Tfonts.workSansFont,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: screenHeight * 0.008),
          Text(phone, style: TextStyle(fontSize: 16, color: Colors.grey)),
          SizedBox(height: screenHeight * 0.025),
          Divider(),
          SizedBox(height: screenHeight * 0.02),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Profile"),
            onTap: () {},
          ),
          SizedBox(height: screenHeight * 0.01),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Privacy Policy"),
            onTap: () {},
          ),
          SizedBox(height: screenHeight * 0.01),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
