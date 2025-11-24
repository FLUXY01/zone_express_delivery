import 'package:flutter/material.dart';
import 'package:zone_express_delivery/common/custom_button.dart';

import '../../../utils/constants/font.dart';

class DeliveryDetailsScreen extends StatelessWidget {
  const DeliveryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Delivery Details",
          style: TextStyle(
            fontFamily: Tfonts.plusJakartaSansFont,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Mini map preview (tap to open full route)",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // START NAVIGATION BUTTON
            SizedBox(
              width: double.infinity,
              child: CustomButton(text: "Start Navigation", onPressed: () {}),
            ),

            const SizedBox(height: 18),

            // ---------------------------
            // CUSTOMER CARD
            // ---------------------------
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF1C9),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Customer",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Name"),
                      Text(
                        "Rahul Sharma",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Phone"),
                      Text(
                        "+91 983444 43210",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Address"),
                      Expanded(
                        child: Text(
                          "Sector 45, Noida",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Call Support
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(text: "Call Support", onPressed: () {}),
                  ),

                  const SizedBox(height: 10),

                  // Copy Address
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(text: "Copy Address", onPressed: () {}),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ---------------------------
            // ORDER INFO
            // ---------------------------
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFF0C7),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order Info",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  const SizedBox(height: 12),

                  buildOrderRow("Order ID", "ORD-23452"),
                  buildOrderRow("Package", "Parcel"),
                  buildOrderRow("COD Amount", "₹ 250"),
                  buildOrderRow("Status", "Pending"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF1C9),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Checklist",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  const SizedBox(height: 12),

                  CustomButton(text: "Marked Package Picked", onPressed: () {}),
                  const SizedBox(height: 8),

                  CustomButton(text: "Reached Location", onPressed: () {}),
                  const SizedBox(height: 8),

                  CustomButton(text: "Verify OTP", onPressed: () {}),
                  const SizedBox(height: 8),

                  CustomButton(text: "Collect COD", onPressed: () {}),
                  const SizedBox(height: 8),

                  CustomButton(text: "Upload Delivery Proof", onPressed: () {}),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF1C9),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Extra",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: Tfonts.workSansFont,
                    ),
                  ),
                  const SizedBox(height: 12),

                  const Text("Delivery Notes"),
                  const SizedBox(height: 6),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Write note if any",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    maxLines: 2,
                  ),

                  const SizedBox(height: 14),

                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(text: "Report Issue", onPressed: () {}),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(text: "Complete Delivery", onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget buildOrderRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
