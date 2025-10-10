import 'package:flutter/material.dart';
import 'package:zone_express_delivery/feature/referal/widget/rate_card.dart';

import '../../../utils/constants/font.dart';

class DeliveryCard extends StatelessWidget {
  final VoidCallback onTap;
  const DeliveryCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.22,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Work as Delivery Executive",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontFamily: Tfonts.workSansFont,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.grey[800],
                  size: 25,
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RateCard(
                    bgColor: Colors.yellow[200]!,
                    title: "\$500",
                    titleColor: Colors.yellow[800]!,
                    subtitle: "Max.\nweekly\npayout /\nRider",
                    subColor: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  RateCard(
                    bgColor: Colors.white,
                    title: "240",
                    titleColor: Colors.black,
                    subtitle: "Weekly\ndeliveries\n/ Rider",
                    subColor: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  RateCard(
                    bgColor: Colors.white,
                    title: "270",
                    titleColor: Colors.black,
                    subtitle: "Weekly\ndeliveries\n/ Rider",
                    subColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
