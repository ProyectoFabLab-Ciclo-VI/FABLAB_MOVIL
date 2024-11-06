import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

BoxDecoration loginDecoration(bool isSelected) {
  return BoxDecoration(
    color: isSelected ? const Color(0xFF586579) : Colors.white,
    borderRadius: const BorderRadius.horizontal(
      left: Radius.circular(12),
    ),
  );
}

BoxDecoration registerDecoration(bool isSelected) {
  return BoxDecoration(
    color: isSelected ? const Color(0xFF586579) : Colors.white,
    borderRadius: const BorderRadius.horizontal(
      right: Radius.circular(12),
    ),
  );
}

TextStyle textStyle(bool isSelected) {
  return TextStyle(
    color: isSelected ? Colors.white : Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
  );
}
