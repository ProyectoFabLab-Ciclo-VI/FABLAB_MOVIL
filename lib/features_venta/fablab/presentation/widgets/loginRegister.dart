import 'package:flutter/material.dart';

class LoginRegisterToggle extends StatefulWidget {
  const LoginRegisterToggle({super.key});

  @override
  _LoginRegisterToggleState createState() => _LoginRegisterToggleState();
}

class _LoginRegisterToggleState extends State<LoginRegisterToggle> {
  int _selectedIndex = 0; // 0 for login, 1 for register

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => _onItemTapped(0),
          child: Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              color: _selectedIndex == 0 ? Colors.blueGrey : Colors.transparent,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
            ),
            child: const Text(
              'Log in',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _onItemTapped(1),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              color: _selectedIndex == 1 ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
            ),
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
