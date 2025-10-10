import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import 'package:zone_express_delivery/feature/Get%20Started/screens/get_started.dart';
import 'package:zone_express_delivery/feature/SignupLogin/screen/signup_login.dart';

import '../../../utils/constants/font.dart';

class OtpVerification extends StatefulWidget {
  final String phoneNumber;
  const OtpVerification({super.key, required this.phoneNumber});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  late List<TextEditingController> _otpControllers;
  late List<FocusNode> _focusNodes;

  Timer? _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    _otpControllers = List.generate(6, (_) => TextEditingController());
    _focusNodes = List.generate(6, (_) => FocusNode());
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() {
      _start = 60;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
    if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  void _resendOtp() {
    // 👇 Call your backend here
    print("Resend OTP API called for ${widget.phoneNumber}");
    _startTimer();
  }

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
                "Verify Your Number",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "we've sent the verification OTP to: \n${widget.phoneNumber}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                  fontFamily: Tfonts.plusJakartaSansFont,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => SignUpLogin());
                },
                child: Text(
                  "Change Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade600,
                    fontFamily: Tfonts.plusJakartaSansFont,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  6,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 45,
                    child: TextField(
                      controller: _otpControllers[index],
                      focusNode: _focusNodes[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onChanged: (value) => _onOtpChanged(value, index),
                      decoration: const InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              _start > 0
                  ? Text(
                      "Resend in 00:${_start.toString().padLeft(2, '0')}",
                      style: TextStyle(color: Colors.grey[800]),
                      textAlign: TextAlign.center,
                    )
                  : GestureDetector(
                      onTap: _resendOtp,
                      child: const Text(
                        "Resend OTP",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
              const Spacer(),
              Center(
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: CommonButtonYellow(
                    label: "Verify OTP",
                    onPressed: () {
                      Get.off(() => GetStarted());
                    },
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
