import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zone_express_delivery/feature/delivery/screen/license_verification.dart';
import 'package:zone_express_delivery/feature/referal/screen/support_other_form.dart';
import 'package:zone_express_delivery/feature/referal/widget/dashboard_card.dart';
import 'package:zone_express_delivery/feature/referal/widget/delivery_card.dart';
import 'package:zone_express_delivery/feature/referal/widget/earn_card.dart';
import 'package:zone_express_delivery/utils/constants/font.dart';
import 'package:zone_express_delivery/feature/referal/widget/referal_drawer.dart';

class ReferalDashboard extends StatefulWidget {
  const ReferalDashboard({super.key});

  @override
  State<ReferalDashboard> createState() => _ReferalDashboardState();
}

class _ReferalDashboardState extends State<ReferalDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: ReferalDrawer(name: "Vimanyu Jain", phone: "+91 9876543210"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                      onTap: _openDrawer,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.deepPurple,
                        child: Text(
                          "VJ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: Tfonts.workSansFont,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      text: "Zone",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: Tfonts.plusJakartaSansFont,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Express",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow[700],
                            fontFamily: Tfonts.plusJakartaSansFont,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: DashboardCard(onTap: () {}),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Invite people around you",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontFamily: Tfonts.plusJakartaSansFont,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: EarnCard(
                      bgColor: Colors.yellow[100]!,
                      iconColor: Colors.green,
                      leadingIcon: Icons.monetization_on,
                      title: "Refer & Earn",
                      subtitle: "Refer your friends & \nearn \$25/referral",
                      buttonText: "Refer Now",
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: EarnCard(
                      bgColor: Colors.blue[50]!,
                      iconColor: Colors.blueGrey,
                      leadingIcon: Icons.group_add_outlined,
                      title: "Support Others",
                      subtitle: "Share details to get a \n call back",
                      buttonText: "Fill for Others",
                      onPressed: () {
                        Get.to(() => const SupportOtherForm());
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Divider(color: Colors.grey[300], thickness: 1),
              SizedBox(height: screenHeight * 0.01),
              DeliveryCard(
                onTap: () {
                  Get.to(() => const LicenseVerification());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
