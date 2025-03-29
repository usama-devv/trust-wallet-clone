import 'package:flutter/material.dart';

class SquareBGIcon extends StatelessWidget {
  final IconData icon;

  const SquareBGIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: 27,
      height: 27,
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800] : Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Icon(icon, size: 20, color: isDark ? Colors.white : Colors.grey),
      ),
    );
  }
}