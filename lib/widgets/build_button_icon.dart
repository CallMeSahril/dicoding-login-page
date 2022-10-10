import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildButtonIcon extends StatelessWidget {
  final FaIcon icon;
  final Widget label;
  final Function() onPressed;
  const BuildButtonIcon({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.black),
      ),
      icon: icon,
      label: label,
    );
  }
}
