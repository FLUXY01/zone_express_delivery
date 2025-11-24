import 'package:flutter/material.dart';
import 'package:zone_express_delivery/feature/dashboard/widget/delivery_details_card.dart';
import 'package:zone_express_delivery/feature/dashboard/widget/stat_square_box.dart';
import '../../../utils/constants/font.dart';

class OnlineUI extends StatefulWidget {
  final double screenHeight;
  const OnlineUI({super.key, required this.screenHeight});

  @override
  State<OnlineUI> createState() => _OnlineUIState();
}

class _OnlineUIState extends State<OnlineUI> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = widget.screenHeight;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // TOP PROFILE CARD
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFFFFD55E),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.05),
                blurRadius: 24,
                spreadRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE8B2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    "SY",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SHIVAM YADAV #ID",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontFamily: Tfonts.workSansFont,
                      ),
                    ),
                    const SizedBox(height: 6),

                    Row(
                      children: [
                        const Text(
                          "Shift: Active",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontFamily: Tfonts.workSansFont,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Rating: 4.8",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontFamily: Tfonts.workSansFont,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 6),

                    Row(
                      children: [
                        const Text(
                          "Today's Earning:\$85",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            fontFamily: Tfonts.workSansFont,
                          ),
                          softWrap: true,
                        ),
                        const Spacer(),
                        Text(
                          "Completed: 5",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontFamily: Tfonts.workSansFont,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: screenHeight * 0.02),

        // STATS ROW
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: StatSquareBox(number: "13", label: "Delivered"),
              ),
            ),
            Expanded(
              child: StatSquareBox(number: "5", label: "Progress"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: StatSquareBox(number: "1", label: "Issue"),
              ),
            ),
          ],
        ),

        // -------------------------
        // CAROUSEL
        // -------------------------
        SizedBox(
          height: 240,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            children: [
              DeliveryDetailsCard(
                title: "Out for Delivery",
                time: "On Time",
                textColor: Colors.green,
                borderColor: Colors.green[50],
              ),
              DeliveryDetailsCard(
                title: "Delayed",
                time: "Delayed",
                textColor: Colors.orange,
                borderColor: Colors.orange[50],
              ),
              DeliveryDetailsCard(
                title: "New assignment",
                time: "New",
                textColor: Colors.orange,
                borderColor: Colors.orange[50],
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        // -------------------------
        // DOT INDICATOR
        // -------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 8,
              width: currentIndex == index ? 20 : 8,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? Colors.black
                    : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  if (currentIndex == index)
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                ],
              ),
            );
          }),
        ),
        SizedBox(height: screenHeight * 0.04),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
                width: screenWidth * 0.5,
                child: StatSquareBox(number: "92%", label: "On-Time Delivery"),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: screenWidth * 0.4,
              child: StatSquareBox(number: "24m", label: "Avg Delivery Time"),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.02),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
                width: screenWidth * 0.5,
                child: StatSquareBox(
                  number: "Customer Rating",
                  fontSize: 18,
                  label: "⭐ 4.8",
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: screenWidth * 0.4,
              child: StatSquareBox(
                number: "Distance Today",
                fontSize: 18,
                label: "18.6 km",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
