import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/feature/delivery/screen/payout_options.dart';
import 'package:zone_express_delivery/feature/delivery/widget/vehicle_options_card.dart';
import 'package:zone_express_delivery/utils/constants/images.dart';
import '../../../utils/constants/font.dart';
import '../widget/profile_stepper.dart';

class VehicleOptions extends StatefulWidget {
  const VehicleOptions({super.key});

  @override
  State<VehicleOptions> createState() => _VehicleOptionsState();
}

class _VehicleOptionsState extends State<VehicleOptions> {
  final TextEditingController _otherVehicleController = TextEditingController();
  String selectedOption = "";

  @override
  void dispose() {
    _otherVehicleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---- HEADER ----
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
              StepProgress(currentStep: 1),
              SizedBox(height: screenHeight * 0.02),
              Divider(color: Colors.grey[200], thickness: 8),
              SizedBox(height: screenHeight * 0.02),

              // ---- TITLE ----
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Select Mode of Vehicle",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: Tfonts.plusJakartaSansFont,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "What type of vehicle are you going to use?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                    fontFamily: Tfonts.plusJakartaSansFont,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              // ---- VEHICLE CARDS ----
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SelectableCard(
                      title: "Bike",
                      isSelected: selectedOption == "Bike",
                      icon: Image.asset(TImages.bike, height: 80),
                      onTap: () {
                        setState(() {
                          selectedOption = "Bike";
                          _otherVehicleController.clear();
                        });
                      },
                    ),
                    SelectableCard(
                      title: "Bicycle",
                      isSelected: selectedOption == "Bicycle",
                      icon: Image.asset(TImages.bicycle, height: 80),
                      onTap: () {
                        setState(() {
                          selectedOption = "Bicycle";
                          _otherVehicleController.clear();
                        });
                      },
                    ),
                    SelectableCard(
                      title: "Truck",
                      isSelected: selectedOption == "Truck",
                      icon: Image.asset(TImages.truck, height: 80),
                      onTap: () {
                        setState(() {
                          selectedOption = "Truck";
                          _otherVehicleController.clear();
                        });
                      },
                    ),

                    // ---- ADDING THE "OTHER" CARD ----
                    SelectableCard(
                      title: "Other",
                      isSelected: selectedOption == "Other",
                      onTap: () {
                        setState(() {
                          selectedOption = "Other";
                        });
                      },
                    ),

                    // ---- TEXTFIELD FOR "OTHER" ----
                    if (selectedOption == "Other") ...[
                      const SizedBox(height: 12),
                      TextField(
                        controller: _otherVehicleController,
                        decoration: InputDecoration(
                          hintText: "Enter your vehicle type",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: Tfonts.plusJakartaSansFont,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // ---- NEXT BUTTON ----
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: double.infinity,
                  child: CommonButtonYellow(
                    label: "Next",
                    onPressed: () {
                      Get.to(() => const PayoutOptions());
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
