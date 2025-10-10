import 'package:flutter/material.dart';

import '../../../utils/constants/font.dart';

class RateCard extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String subtitle;
  final Color titleColor;
  final Color subColor;
  const RateCard({
    super.key,
    required this.bgColor,
    required this.title,
    required this.subtitle,
    required this.titleColor,
    required this.subColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: titleColor,
              fontFamily: Tfonts.plusJakartaSansFont,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: subColor,
              fontFamily: Tfonts.workSansFont,
            ),
          ),
        ],
      ),
    );
  }
}
