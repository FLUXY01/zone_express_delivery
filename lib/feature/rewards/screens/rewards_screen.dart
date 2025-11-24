import 'package:flutter/material.dart';
import 'package:zone_express_delivery/feature/rewards/widget/day_dot.dart';
import 'package:zone_express_delivery/feature/rewards/widget/rewards_item.dart';
import 'package:zone_express_delivery/utils/constants/images.dart';

import '../../../utils/constants/font.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.02),
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
                        "Rewards",
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
                SizedBox(height: screenHeight * 0.05),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row: Circle Initial + Name + points
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFFF1EEDC),
                            ),
                            child: const Center(
                              child: Text(
                                "SY",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "SHIVAM YADAV",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Courier #ID",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Shift: Active     Rating: ⭐ 4.8",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  "Completed: 13",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Points Earned
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: screenHeight * 0.04),
                              Text(
                                "1,420",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "Points earned",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: screenHeight * 0.025),

                      // Bronze > Silver
                      Row(
                        children: [
                          const Text(
                            "Bronze → Silver",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                              fontFamily: Tfonts.workSansFont,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "580/2000",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      // Progress Bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: LinearProgressIndicator(
                          value: 580 / 2000,
                          minHeight: 8,
                          backgroundColor: Colors.grey.shade300,
                          valueColor: AlwaysStoppedAnimation(
                            Colors.amber.shade600,
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Delivery Streak",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: Tfonts.workSansFont,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),

                      const Text(
                        "Maintain your streak & unlock bonuses",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: Tfonts.workSansFont,
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      // Streak Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DayDot(day: "M", active: true),
                          DayDot(day: "T", active: true),
                          DayDot(day: "W", active: true),
                          DayDot(day: "T", active: false),
                          DayDot(day: "F", active: false),
                          DayDot(day: "S", active: false),

                          Column(
                            children: [
                              //SizedBox(height: screenHeight * 0.01),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.transparent,
                                  child: Image.asset(
                                    TImages.gift,
                                  ), // GIFT IMAGE PLACEHOLDER
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const Text(
                        "Keep your streak for 3 more days to claim Bronze Box",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black26,
                          fontFamily: Tfonts.workSansFont,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                RewardItem(
                  title: "Bronze Box",
                  description:
                      "Complete 2 more streaks to unlock.\nIncludes ₹50 bonus & free delivery coupon.",
                  status: "Locked",
                  isLocked: true,
                ),

                RewardItem(
                  title: "Silver Coupon",
                  description:
                      "Available at 2000 points — Get ₹150 off on fuel & accessories.",
                  status: "Claim",
                ),

                RewardItem(
                  title: "Gold Gift",
                  description:
                      "Milestone reward for 5000 points — limited stock.",
                  status: "Notify",
                ),

                RewardItem(
                  title: "Priority Shift",
                  description:
                      "Use 1200 points to get priority for morning shifts.",
                  status: "Use",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
