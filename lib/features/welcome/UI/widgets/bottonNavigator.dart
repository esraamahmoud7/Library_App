import 'package:flutter/material.dart';

class ButtonNavigator extends StatefulWidget {
  const ButtonNavigator({super.key});

  @override
  State<ButtonNavigator> createState() => _ButtonNavigatorState();
}

class _ButtonNavigatorState extends State<ButtonNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Info Page")),
    Center(child: Text("Orders Page")),
    Center(child: Text("Bookings Page")),
    Center(child: Text("More Page")),
  ];

  void onItemSelect(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
