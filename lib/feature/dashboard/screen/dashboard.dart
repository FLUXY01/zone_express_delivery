import 'package:flutter/material.dart';
import 'package:zone_express_delivery/feature/dashboard/widget/custom_switch.dart';
import 'package:zone_express_delivery/feature/dashboard/widget/customer_supp_container.dart';

import '../../../utils/constants/font.dart';
import 'offline_dashboard.dart';
import 'online_dashboard.dart';

class CourierDashboard extends StatefulWidget {
  const CourierDashboard({super.key});

  @override
  State<CourierDashboard> createState() => _CourierDashboardState();
}

class _CourierDashboardState extends State<CourierDashboard> {
  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.07),

              // TOP ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 14,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE8B2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Courier Dashboard",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: Tfonts.workSansFont,
                              ),
                            ),
                            const Text(
                              "Welcome, Agent",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
                                fontFamily: Tfonts.workSansFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // TOGGLE
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomIOSSwitch(
                            value: isOnline,
                            onChanged: (val) {
                              setState(() {
                                isOnline = val;
                              });
                            },
                          ),
                          const SizedBox(width: 6),
                          Text(
                            isOnline ? "Active" : "Offline",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontFamily: Tfonts.workSansFont,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        isOnline ? "" : "Tap to start your shift",
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.07),

              // CONDITIONAL UI BASED ON ONLINE/OFFLINE
              isOnline
                  ? OnlineUI(screenHeight: screenHeight)
                  : offlineUI(screenHeight),

              SizedBox(height: screenHeight * 0.05),
              customerSupportTile(),
            ],
          ),
        ),
      ),
    );
  }
}
