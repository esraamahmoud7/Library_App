import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/pageRoutes.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/features/welcome/UI/HomeView.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';
//47
import '../../Services/About Us/UI/info.dart';
import '../../Services/GradProjects/UI/GradProjects.dart';

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
    const GradProjects(),
    // const BookRoom(),
  ];

  void _onItemTapped(int index)
  {
    if (index == 3) {
      GoRouter.of(context).push(PagesRoute.more);
    }
    else
      {
        setState(() {
          _selectedIndex = index;
        });
      }

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
              icon: Icon(Icons.storage_outlined),
              label: "Orders",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.business_outlined),
            //   label: "Bookings",
            // ),
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

