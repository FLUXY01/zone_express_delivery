import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/utils/constants/font.dart';
import 'package:zone_express_delivery/utils/constants/images.dart';

import '../widget/license_textfield.dart';
import '../widget/profile_stepper.dart';
import 'license_verific_successfull.dart';

class LicenseVerification extends StatefulWidget {
  const LicenseVerification({super.key});

  @override
  State<LicenseVerification> createState() => _LicenseVerificationState();
}

class _LicenseVerificationState extends State<LicenseVerification> {
  final TextEditingController licenseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
            StepProgress(currentStep: 0),
            SizedBox(height: screenHeight * 0.05),
            Container(
              height: screenHeight * 0.05,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.vertical(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.grey.shade600.withOpacity(0.6),
                  ),
                  Text(
                    "Fill your details in 5 mins and start working",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Share License Details",
                style: TextStyle(
                  fontSize: 18,
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
                "Your details will remain secure with us",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                // Grey background layer (slightly smaller)
                Container(
                  height:
                      screenHeight *
                      0.25, // tweak these to be a bit smaller than your image
                  width: screenWidth * 0.85,
                  color: Colors.grey[200],
                ),

                // Your image on top
                Image.asset(TImages.id_card, fit: BoxFit.contain),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "License Number",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LicenseTextfield(
                hintText: "License Number",
                controller: licenseController,
                isObscure: false,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SizedBox(
                width: screenWidth * 0.9,
                child: CommonButtonYellow(
                  label: "Verify",
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                            left: 16,
                            right: 16,
                            top: 24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Enter OTP",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Tfonts.plusJakartaSansFont,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Text(
                                "We’ve sent a 6-digit code to your registered mobile number.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                  fontFamily: Tfonts.plusJakartaSansFont,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  6,
                                  (index) => SizedBox(
                                    width: 45,
                                    height: 55,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              // Enter OTP Button
                              SizedBox(
                                width: double.infinity,
                                child: CommonButtonYellow(
                                  label: "Enter OTP",
                                  onPressed: () {
                                    Get.to(() => LicenseVerificSuccessfull());
                                  },
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
