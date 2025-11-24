import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zone_express_delivery/feature/Delivery/screen/delivery_details.dart';
import 'package:zone_express_delivery/feature/Delivery/screen/delivery_request.dart';
import 'package:zone_express_delivery/feature/dashboard/screen/dashboard.dart';
import 'package:zone_express_delivery/feature/payments/screens/payment_screen.dart';
import 'package:zone_express_delivery/feature/rewards/screens/rewards_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  // Pages for each tab
  final List<Widget> _pages = [
    const CourierDashboard(), // Home
    const DeliveryRequest(), // Orders
    const RewardScreen(), // Orders
    const PaymentScreen(), // Orders
    Center(child: Text("Profile()")), // Orders
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // show selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFF5F2E5), // light cream bg
        selectedItemColor: Colors.black87, // gold/olive for selected
        unselectedItemColor: const Color(0xFF9E8F47).withOpacity(0.6),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping_outlined),
            activeIcon: Icon(Icons.local_shipping),
            label: "Deliveries",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_outlined),
            activeIcon: Icon(Icons.emoji_events),
            label: "Rewards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_outlined),
            activeIcon: Icon(Icons.payment),
            label: "Earnings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
