import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';

import '../../../utils/constants/font.dart';
import '../widget/phone_textfield.dart';
import 'otp_verification.dart';

class SignUpLogin extends StatefulWidget {
  const SignUpLogin({super.key});

  @override
  State<SignUpLogin> createState() => _SignUpLoginState();
}

class _SignUpLoginState extends State<SignUpLogin> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.04),
              Text(
                "Enter your \nmobile number",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "We'll send you an OTP via SMS to confirm your mobile number",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              const SizedBox(height: 24),
              PhoneTextField(
                hintText: "Enter your country code & phone",
                controller: phoneController,
                isObscure: false,
                keyboardType: TextInputType.phone,
                maxLength: 13, // total length with country code
                prefixText: "+",
              ),
              const Spacer(),
              Column(
                children: [
                  SizedBox(
                    width: screenWidth * 0.9,
                    child: CommonButtonYellow(
                      label: "Get OTP",
                      onPressed: () {
                        Get.off(
                          () => OtpVerification(
                            phoneNumber: phoneController.text,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "By continuing, you agree to our terms and conditions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                      fontFamily: Tfonts.plusJakartaSansFont,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
