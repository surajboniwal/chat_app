import 'package:car_store/ui/screens/navigation/controller/navigation_controller.dart';
import 'package:car_store/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    Key? key,
    required this.icon,
    required this.index,
  }) : super(key: key);

  final String icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) {
        final selected = ref.watch(NavigationController.provider) == index;
        final controller = ref.watch(NavigationController.provider.notifier);
        return IconButton(
          highlightColor: Colors.transparent,
          onPressed: () {
            controller.changePage(index);
          },
          icon: Opacity(
            opacity: selected ? 1 : 0.5,
            child: SvgPicture.asset(
              icon,
              color: selected ? AppColors.primary : AppColors.textSecondary,
            ),
          ),
        );
      },
    );
  }
}
