import 'package:car_store/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/navigation_controller.dart';
import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_item.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                ref.watch(NavigationController.provider);
                final screen = ref.read(NavigationController.provider.notifier).screen;
                return screen;
              },
            ),
          ),
          Container(
            height: 65,
            decoration: BoxDecoration(
              color: AppColors.background,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -2),
                  blurRadius: 15.0,
                  color: AppColors.textSecondary.withOpacity(0.2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavigationItem(icon: AppIcons.chat, index: 0),
                BottomNavigationItem(icon: AppIcons.clock, index: 1),
                BottomNavigationItem(icon: AppIcons.call, index: 2),
                BottomNavigationItem(icon: AppIcons.profile, index: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
