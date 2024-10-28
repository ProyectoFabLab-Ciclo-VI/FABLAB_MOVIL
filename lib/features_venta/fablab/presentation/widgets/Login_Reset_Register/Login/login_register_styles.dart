import 'package:flutter/material.dart';

BoxDecoration loginDecoration(bool isSelected) {
  return BoxDecoration(
    color: isSelected ? Color(0xFF586579) : Colors.white,
    borderRadius: const BorderRadius.horizontal(
      left: Radius.circular(20),
    ),
  );
}

BoxDecoration registerDecoration(bool isSelected) {
  return BoxDecoration(
    color: isSelected ? Color(0xFF586579) : Colors.white,
    borderRadius: const BorderRadius.horizontal(
      right: Radius.circular(20),
    ),
  );
}

TextStyle textStyle(bool isSelected) {
  return TextStyle(
    color: isSelected ? Colors.white : Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}