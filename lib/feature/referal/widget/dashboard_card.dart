import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/constants/font.dart';

class DashboardCard extends StatelessWidget {
  final VoidCallback onTap;
  const DashboardCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.20,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
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
              children: [
                Icon(
                  FontAwesomeIcons.coins,
                  color: Color(0xFFFFC107),
                  size: 32,
                ),
                const SizedBox(width: 8),
                Icon(
                  FontAwesomeIcons.coins,
                  color: Color(0xFFFFC107),
                  size: 32,
                ),
              ],
            ),
            SizedBox(width: screenWidth * 0.04),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.04),
                  Text(
                    'Hi, Vimanyu Jain',
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
                    'Your Total Earnings \$0.0',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      fontFamily: Tfonts.workSansFont,
                    ),
                    softWrap: true,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'View Details',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontFamily: Tfonts.workSansFont,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_sharp, color: Colors.blue, size: 20),
          ],
        ),
      ),
    );
  }
}
