import 'package:flutter/material.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/features/welcome/UI/HomeView.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';
//47
import '../../Services/About Us/UI/info.dart';

class NavigatorControl extends StatefulWidget {
  const NavigatorControl({super.key});

  @override
  State<NavigatorControl> createState() => _NavigatorControlState();
}

class _NavigatorControlState extends State<NavigatorControl> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeVew(),
    const InfoPage(),
    // const OrdersPage(),
    // const BookRoom(),
    // const MorePage(),
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // keeps all icons visible
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: "Info",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_outlined),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More",
            ),
          ]
      ),
      body: _pages[_selectedIndex]
    );
  }
}

