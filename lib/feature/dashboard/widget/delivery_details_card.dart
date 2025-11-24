import 'package:flutter/material.dart';

import '../../../utils/constants/font.dart';

class DeliveryDetailsCard extends StatefulWidget {
  final String? title;
  final String? time;
  final Color? textColor;
  final Color? borderColor;
  const DeliveryDetailsCard({
    super.key,
    required this.title,
    required this.time,
    required this.textColor,
    required this.borderColor,
  });

  @override
  State<DeliveryDetailsCard> createState() => _DeliveryDetailsCardState();
}

class _DeliveryDetailsCardState extends State<DeliveryDetailsCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.8,
      height: screenHeight * 0.25,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.07),
            blurRadius: 50,
            spreadRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "#PKG-8821 .  MR. RAHUL",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontFamily: Tfonts.workSansFont,
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            widget.title ?? "Out for Delivery",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontFamily: Tfonts.workSansFont,
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Row(
            children: [
              Text(
                "ETA",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
              const Spacer(),
              Text(
                "18 MINS",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              Container(
                width: screenWidth * 0.25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1.5),
                  color: widget.borderColor ?? Colors.green[50],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.time ?? "On Time",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: widget.textColor ?? Colors.green,
                        fontFamily: Tfonts.workSansFont,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                "Navigate →",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                  fontFamily: Tfonts.workSansFont,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
