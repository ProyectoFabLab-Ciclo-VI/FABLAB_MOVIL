import 'package:flutter/material.dart';

class LoginRegisterToggle extends StatefulWidget {
  const LoginRegisterToggle({super.key});

  @override
  LoginRegisterToggleState createState() => LoginRegisterToggleState();
}

class LoginRegisterToggleState extends State<LoginRegisterToggle> {
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
        Expanded(
          child: GestureDetector(
            onTap: () => _onItemTapped(0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: _selectedIndex == 0 ? Color(0xFF586579) : Colors.white,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(20),
                ),
                // border: Border.all(color: Colors.blueGrey, width: 2),
              ),
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => _onItemTapped(1),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: _selectedIndex == 1 ? Color(0xFF586579) : Colors.white,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
                // border: Border.all(color: Colors.blue, width: 2),
              ),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.white : Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
