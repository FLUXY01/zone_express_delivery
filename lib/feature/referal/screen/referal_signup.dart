import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/feature/referal/screen/referal_dashboard.dart';
import '../../../utils/constants/font.dart';
import '../widget/custom_textfield.dart';

class ReferalSignup extends StatefulWidget {
  const ReferalSignup({super.key});

  @override
  State<ReferalSignup> createState() => _ReferalSignupState();
}

class _ReferalSignupState extends State<ReferalSignup> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController bankController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    bankController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Create Referrer Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontFamily: Tfonts.plusJakartaSansFont,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create your profile to refer other people",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "First Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomTextField(
                  hintText: "Enter Here",
                  controller: firstNameController,
                  isObscure: false,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "Last Name (Optional)",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomTextField(
                  hintText: "Enter Here",
                  controller: lastNameController,
                  isObscure: false,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "Bank Details (Optional)",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomTextField(
                  hintText: "Enter Bank Details",
                  controller: bankController,
                  isObscure: false,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "You will receive referral bonus on this bank account",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontFamily: Tfonts.workSansFont,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 8.0,
                ),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: CommonButtonYellow(
                    label: "Create Profile",
                    onPressed: () {
                      Get.off(() => const ReferalDashboard());
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
