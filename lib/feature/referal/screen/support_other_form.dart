import 'package:flutter/material.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/feature/SignupLogin/widget/phone_textfield.dart';
import 'package:zone_express_delivery/feature/referal/widget/custom_textfield.dart';

import '../../../utils/constants/font.dart';

class SupportOtherForm extends StatefulWidget {
  const SupportOtherForm({super.key});

  @override
  State<SupportOtherForm> createState() => _SupportOtherFormState();
}

class _SupportOtherFormState extends State<SupportOtherForm> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
            text: "Refer and Fill for Others",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontFamily: Tfonts.plusJakartaSansFont,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Text(
                "Contact Number",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              PhoneTextField(
                hintText: "Enter here",
                controller: phoneController,
                isObscure: false,
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "First Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomTextField(
                hintText: "Enter here",
                controller: fNameController,
                isObscure: false,
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "Last Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomTextField(
                hintText: "Enter here",
                controller: lNameController,
                isObscure: false,
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "City",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomTextField(
                hintText: "Enter here",
                controller: cityController,
                isObscure: false,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: CommonButtonYellow(label: "Submit", onPressed: () {}),
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
