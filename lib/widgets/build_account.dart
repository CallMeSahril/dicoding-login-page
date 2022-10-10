import 'package:flutter/material.dart';

class BuildAccount extends StatelessWidget {
  final String titleAccont;
  final Widget? sufixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  const BuildAccount({
    Key? key,
    required this.titleAccont,
    this.sufixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: titleAccont,
        focusedBorder: OutlineInputBorder(),
        border: OutlineInputBorder(),
        isDense: true,
        suffixIcon: sufixIcon,
      ),
    );
  }
}
