import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'feature/Get Started/screens/get_started.dart';
import 'feature/SignupLogin/screen/otp_verification.dart';
import 'feature/SignupLogin/screen/signup_login.dart';
import 'feature/referal/screen/referal_signup.dart';
import 'feature/welcome screen/screen/welcome_screen.dart';

void main() {
  runApp(GetMaterialApp(home: WelcomeScreen()));
}
