import 'package:car_store/ui/screens/settings/widgets/setting_tile.dart';
import 'package:car_store/ui/theme/app_colors.dart';
import 'package:car_store/ui/theme/app_icons.dart';
import 'package:car_store/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

import 'widgets/setting_tile_toggle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: SizeHelper.wBlock * 12, vertical: SizeHelper.hBlock * 8),
            leading: CircleAvatar(
              radius: 32.0,
              backgroundColor: AppColors.background,
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/24.jpg',
              ),
            ),
            title: Text(
              'Suraj Boniwal',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Hey there! I am using Boni\'s Chat app.',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.textSecondary,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode,
                color: AppColors.primary,
              ),
            ),
          ),
          Divider(),
          SettingTileToggle(),
          SettingTile(icon: AppIcons.account, label: 'Account'),
          SettingTile(icon: AppIcons.notification, label: 'Notification'),
          SettingTile(icon: AppIcons.chat, label: 'Chat Settings'),
          SettingTile(icon: AppIcons.dataAndStorage, label: 'Data and Storage'),
          SettingTile(icon: AppIcons.privacyAndSecurity, label: 'Privacy and Security'),
          SettingTile(icon: AppIcons.about, label: 'About', leading: false),
        ],
      ),
    );
  }
}
