import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key, required this.icons, required this.title});

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Column(
        children: [
          Icon(icons),
          const SizedBox(
            height: 10.0,
          ),
          Text(title)
        ],
      ),
    );
  }
}
