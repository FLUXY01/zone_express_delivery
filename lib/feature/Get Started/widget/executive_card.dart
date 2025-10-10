import 'package:flutter/material.dart';
import '../../../utils/constants/font.dart';
import '../../../utils/constants/images.dart';

class ExecutiveCard extends StatelessWidget {
  final VoidCallback onTap;
  const ExecutiveCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.22,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
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
            Image.asset(TImages.delivery_truck, width: 100, height: 100),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Work as Zone Express \nExecutvie',
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
                    'Apply today and earn with each delivered shipment',
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
