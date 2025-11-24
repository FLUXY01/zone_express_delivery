import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zone_express_delivery/feature/Get%20Started/widget/executive_card.dart';
import 'package:zone_express_delivery/feature/Get%20Started/widget/referal_card.dart';
import '../../../utils/constants/font.dart';
import '../../Delivery Setup/screen/license_verification.dart';
import '../../referal/screen/referal_signup.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.04),
              Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Choose how you would like to earn with zone express",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              ExecutiveCard(
                onTap: () {
                  Get.to(() => const LicenseVerification());
                },
              ),
              SizedBox(height: screenHeight * 0.04),
              ReferalCard(
                onTap: () {
                  Get.to(() => const ReferalSignup());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
