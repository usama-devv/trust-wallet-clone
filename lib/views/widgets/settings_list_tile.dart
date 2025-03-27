import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap; // Optional onTap for flexibility

  const SettingListTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),
      onTap: onTap ?? () {}, // Default empty function if not provided
    );
  }
}
