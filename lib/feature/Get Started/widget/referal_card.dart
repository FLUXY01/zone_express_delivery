import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/constants/font.dart';
import '../../referal/screen/referal_signup.dart';

class ReferalCard extends StatelessWidget {
  final VoidCallback onTap;
  const ReferalCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.22,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.group_add, color: Colors.green, size: 32),
                SizedBox(width: 8),
                Icon(Icons.monetization_on, color: Colors.green, size: 32),
              ],
            ),
            SizedBox(width: screenWidth * 0.04),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.04),
                  Text(
                    'Refer and Earn',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: Tfonts.plusJakartaSansFont,
                    ),
                    softWrap: true,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Refer your friends and earn upto \$50 per referral',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: Tfonts.workSansFont,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_sharp, color: Colors.grey[800], size: 20),
          ],
        ),
      ),
    );
  }
}
