import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_wallet_clone/controllers/main_screen_controller.dart';
import 'package:trust_wallet_clone/views/home_screen.dart';

class MainScreen extends StatelessWidget {
  final MainScreenController controller = Get.put(MainScreenController());
  MainScreen({super.key});

  final List<Widget> pages = [
    Center(child: HomeScreen()),
    Center(child: Text("Swap")),
    Center(child: Text("Earn")),
    Center(child: Text("Discover")),
  ];

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Obx(
      () => Scaffold(
        body: pages[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: isDark ? Colors.black : Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey[400],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.compare_arrows), label: 'Swap'),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: 'Earn'),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          ],
        ),
      ),
    );
  }
}
