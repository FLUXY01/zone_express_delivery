import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/feature/delivery/screen/vehicle_options.dart';

import '../../../utils/constants/font.dart';
import '../widget/profile_stepper.dart';

class LicenseVerificSuccessfull extends StatefulWidget {
  const LicenseVerificSuccessfull({super.key});

  @override
  State<LicenseVerificSuccessfull> createState() =>
      _LicenseVerificSuccessfullState();
}

class _LicenseVerificSuccessfullState extends State<LicenseVerificSuccessfull> {
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
              StepProgress(currentStep: 0),
              SizedBox(height: screenHeight * 0.02),
              Divider(color: Colors.grey[200], thickness: 8),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "License Number Verified",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: Tfonts.plusJakartaSansFont,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    Icon(Icons.check_circle, color: Colors.green),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SizedBox(
                  width: screenWidth * 0.9, // adjust width as needed
                  child: TextField(
                    readOnly: true,
                    controller: TextEditingController(text: "*********3265"),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200, // grey background
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black54,
                          width: 1.2,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 12,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Your details will remain secure with us",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                    fontFamily: Tfonts.workSansFont,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: Tfonts.plusJakartaSansFont,
                    ),
                    children: const [
                      TextSpan(
                        text: "Congratulations! 🎉Your License is verified.",
                      ),
                      TextSpan(text: "\nPlease find the details below."),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 0.0,
                ), // smaller outer padding
                child: ListTile(
                  dense: true, // makes tile more compact
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 0.0,
                  ), // reduced inner padding
                  title: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  trailing: Text(
                    "Vimanyu Jain",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[300], thickness: 1),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 0.0,
                ), // smaller outer padding
                child: ListTile(
                  dense: true, // makes tile more compact
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 0.0,
                  ), // reduced inner padding
                  title: Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  trailing: Text(
                    "MALE",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[300], thickness: 1),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 0.0,
                ), // smaller outer padding
                child: ListTile(
                  dense: true, // makes tile more compact
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 0.0,
                  ), // reduced inner padding
                  title: Text(
                    "Date of Birth",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  trailing: Text(
                    "YYYY-MM-DD",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[300], thickness: 1),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 0.0,
                ), // smaller outer padding
                child: ListTile(
                  dense: true, // makes tile more compact
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 0.0,
                  ), // reduced inner padding
                  title: Text(
                    "Father's Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  trailing: Text(
                    "S/0 Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[300], thickness: 1),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 0.0,
                ), // smaller outer padding
                child: ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 0.0,
                  ),
                  title: Text(
                    "Address Details",
                    maxLines: 1, // ensures single line
                    overflow: TextOverflow
                        .ellipsis, // adds "..." if it ever overflows
                    softWrap: false, // disables wrapping
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  trailing: SizedBox(
                    width: 180, // adjust as needed
                    child: Text(
                      "XYZ Street, ABC City, 123456",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: false,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: Tfonts.workSansFont,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[300], thickness: 1),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 0.0,
                ), // smaller outer padding
                child: ListTile(
                  dense: true, // makes tile more compact
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 0.0,
                  ), // reduced inner padding
                  title: Text(
                    "Pincode",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  trailing: Text(
                    "Number",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[300], thickness: 1),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: CommonButtonYellow(
                    label: "Next",
                    onPressed: () {
                      Get.to(() => const VehicleOptions());
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
