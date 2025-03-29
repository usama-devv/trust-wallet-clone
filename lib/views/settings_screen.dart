import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_wallet_clone/views/widgets/settings_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.grey),
            title: Text("Wallets", style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            subtitle: Text("Khokhar"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.nightlight_round, color: Colors.grey),
            title: Text("Dark Mode", style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
            trailing: Switch(value: isDarkMode, onChanged: (value){}),
          ),
          Divider(),

          SettingListTile(icon: Icons.attach_money, title: "Price Alerts"),
          SettingListTile(icon: Icons.contacts, title: "Address Book"),
          SettingListTile(icon: Icons.verified_user, title: "Trust Handles"),
          SettingListTile(icon: Icons.qr_code_scanner, title: "Scan QR code"),
          SettingListTile(icon: Icons.link, title: "WalletConnect"),

          Divider(),

          SettingListTile(icon: Icons.settings, title: "Preferences"),
          SettingListTile(icon: Icons.lock, title: "Security"),
          SettingListTile(icon: Icons.notifications, title: "Notifications"),

          Divider(),

          SettingListTile(icon: Icons.help_outline, title: "Help Center"),
          SettingListTile(icon: Icons.headset_mic, title: "Support"),
          SettingListTile(icon: Icons.info_outline, title: "About"),

          Divider(),

          SettingListTile(icon: Icons.alternate_email, title: "X"),
          SettingListTile(icon: Icons.send, title: "Telegram"),
          SettingListTile(icon: Icons.facebook, title: "Facebook"),
          SettingListTile(icon: Icons.reddit, title: "Reddit"),
          SettingListTile(icon: Icons.video_library, title: "YouTube"),
          SettingListTile(icon: Icons.camera_alt, title: "Instagram"),
          SettingListTile(icon: Icons.music_note, title: "TikTok"),
        ],
      ),
    );
  }
}