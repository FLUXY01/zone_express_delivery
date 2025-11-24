import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/feature/bottom_nav_screen.dart';
import '../../../utils/constants/font.dart';
import '../widget/location_card.dart';
import '../widget/profile_stepper.dart';

class LocationSelection extends StatefulWidget {
  const LocationSelection({super.key});

  @override
  State<LocationSelection> createState() => _LocationSelectionState();
}

class _LocationSelectionState extends State<LocationSelection> {
  String selectedCard = "";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Create Profile",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: Tfonts.workSansFont,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              StepProgress(currentStep: 3),
              SizedBox(height: screenHeight * 0.02),
              Divider(color: Colors.grey[200], thickness: 8),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Select Location",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: Tfonts.plusJakartaSansFont,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "select location from where you want to work",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LocationCard(
                  title: "Sector 45, Noida",
                  subtitle: "Earn \$1200",
                  isSelected: selectedCard == "noida",
                  onTap: () {
                    setState(() {
                      selectedCard = "noida";
                    });
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LocationCard(
                  title: "ABC address",
                  subtitle: "Earn \$1000",
                  isSelected: selectedCard == "ABC",
                  onTap: () {
                    setState(() {
                      selectedCard = "ABC";
                    });
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LocationCard(
                  title: "XYZ Address",
                  subtitle: "Earn \$700",
                  isSelected: selectedCard == "XYZ",
                  onTap: () {
                    setState(() {
                      selectedCard = "XYZ";
                    });
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LocationCard(
                  title: "Dale",
                  subtitle: "Earn \$900",
                  isSelected: selectedCard == "Dale",
                  onTap: () {
                    setState(() {
                      selectedCard = "Dale";
                    });
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: CommonButtonYellow(
                    label: "Next",
                    onPressed: () {
                      Get.to(() => const BottomNavScreen());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
