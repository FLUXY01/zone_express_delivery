import 'package:flutter/material.dart';

Widget customerSupportTile() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    decoration: BoxDecoration(
      color: const Color(0xFFF5F5F5),
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      children: [
        // Icon circle
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: const Color(0xFFFFF3D6), // light yellow bg
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFFFC84D), width: 1.6),
          ),
          child: const Center(
            child: Icon(
              Icons.support_agent,
              color: Color(0xFFFFC84D),
              size: 22,
            ),
          ),
        ),

        const SizedBox(width: 14),

        // Title
        const Expanded(
          child: Text(
            "Customer Support",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),

        const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black),
      ],
    ),
  );
}
