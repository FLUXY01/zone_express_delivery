import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/utils/constants/images.dart';

import '../../../common/common_button_yellow.dart';
import '../../../utils/constants/font.dart';
import '../../SignupLogin/screen/signup_login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentIndex = 0;

  final List<String> images = [TImages.delivery, TImages.delivery_scooter];

  final List<Map<String, String>> slideTexts = [
    {
      "title": "Welcome to Zone Express!",
      "subtitle":
          "Become a part of Zone Express, World's leading logistics platform",
    },
    {
      "title": "Deliver More, Earn More",
      "subtitle": "Earn for every order you deliver and get paid weekly",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Carousel
          CarouselSlider(
            items: images.map((imgPath) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 350,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),

          // Title + Subtitle
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
            child: Column(
              children: [
                Text(
                  slideTexts[_currentIndex]["title"]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: Tfonts.plusJakartaSansFont,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  slideTexts[_currentIndex]["subtitle"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontFamily: Tfonts.workSansFont,
                  ),
                ),
              ],
            ),
          ),

          // Dots Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                width: _currentIndex == index ? 12 : 8,
                height: _currentIndex == index ? 12 : 8,
                decoration: BoxDecoration(
                  color: _currentIndex == index ? Colors.black : Colors.black26,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
          SizedBox(height: screenHeight * 0.05),
          SizedBox(
            width: screenWidth * 0.8,
            child: CommonButtonYellow(
              label: "Get Started",
              onPressed: () {
                Get.off(() => const SignUpLogin());
              },
            ),
          ),
        ],
      ),
    );
  }
}
