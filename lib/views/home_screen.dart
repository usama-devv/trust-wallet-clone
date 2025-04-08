import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_wallet_clone/views/settings_screen.dart';
import 'package:trust_wallet_clone/views/widgets/build_action_button.dart';
import 'package:trust_wallet_clone/views/widgets/square_bg_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDark ? Colors.black : Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.to(() => SettingsScreen());
          },
          icon: Icon(Icons.settings, color: Colors.grey),
        ),
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.grey),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: isDark ? Colors.grey[900] : Colors.grey[300],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                style: TextStyle(color: isDark ? Colors.white : Colors.black),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: isDark ? Colors.grey[500] : Colors.grey[700],
                    fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Khokhar",
                      style: TextStyle(
                        color: isDark ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: [
                    SquareBGIcon(icon: Icons.copy),
                    SizedBox(width: 10),
                    SquareBGIcon(icon: Icons.fullscreen),
                    SizedBox(width: 10),
                    SquareBGIcon(icon: Icons.notifications),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "PKR 15,987.18",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.remove_red_eye, color: Colors.grey, size: 18),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildActionButton(icon: Icons.arrow_upward, label:  "Send"),
                SizedBox(width: 6),
                BuildActionButton(icon:  Icons.arrow_downward, label:  "Receive"),
                SizedBox(width: 6),
                BuildActionButton(icon:  Icons.account_balance_wallet, label:  "Buy"),
                SizedBox(width: 6),
                BuildActionButton(icon:  Icons.account_balance, label:  "Sell"),
                SizedBox(width: 6),
                BuildActionButton(icon:  Icons.history, label:  "History"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}