import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final String hintText;
  final Icon prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onPressed;

  const MyTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: IconButton(
              icon: Icon(suffixIcon, color: Colors.grey[700]),
              onPressed: onPressed,
            )),
        obscureText: obscureText,
      ),
    );
  }
}
