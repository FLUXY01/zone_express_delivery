import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/common/common_button_yellow.dart';
import '../../../utils/constants/font.dart';
import '../widget/payout_option_card.dart';
import '../widget/profile_stepper.dart';
import 'location_selection.dart';

class PayoutOptions extends StatefulWidget {
  const PayoutOptions({super.key});

  @override
  State<PayoutOptions> createState() => _PayoutOptionsState();
}

class _PayoutOptionsState extends State<PayoutOptions> {
  String selectedPayPerPackage = "";
  String selectedFixedSalary = "";
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
            StepProgress(currentStep: 2),
            SizedBox(height: screenHeight * 0.02),
            Divider(color: Colors.grey[200], thickness: 8),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Select Payout Model",
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
                "How would you like to be paid?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            PayoutOptionCard(
              title: "Pay Per Package",
              subtitle: "Daily Earning upto \$1100",
              options: const ["Get paid every week"],
              selectedOption: selectedPayPerPackage,
              onSelected: (value) {
                setState(() {
                  selectedPayPerPackage = value;
                  selectedFixedSalary = ""; // deselect the other model
                });
              },
            ),
            SizedBox(height: screenHeight * 0.04),
            PayoutOptionCard(
              title: "Fixed Monthly Salary",
              subtitle: "Earn upto \$25,000 a month",
              options: const ["Get paid monthly", "Get paid every week"],
              selectedOption: selectedFixedSalary,
              onSelected: (value) {
                setState(() {
                  selectedFixedSalary = value;
                  selectedPayPerPackage = ""; // deselect the other model
                });
              },
            ),
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: double.infinity,
                child: CommonButtonYellow(
                  label: "Next",
                  onPressed: () {
                    Get.to(() => const LocationSelection());
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
