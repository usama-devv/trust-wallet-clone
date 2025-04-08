import 'package:flutter/material.dart';

class BuildActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const BuildActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        CircleAvatar(
          backgroundColor: isDark ? Colors.grey[900] : Colors.grey[100],
          radius: 25,
          child: Icon(icon, color: isDark ? Colors.white : Colors.black),
        ),
        SizedBox(height: 7),
        Text(label, style: TextStyle(color: isDark ? Colors.white : Colors.black, fontWeight: FontWeight.bold,),),
      ],
    );
  }
}

