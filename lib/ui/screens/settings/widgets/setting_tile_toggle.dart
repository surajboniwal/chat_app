import 'package:car_store/ui/theme/theme.dart';
import 'package:car_store/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingTileToggle extends StatelessWidget {
  const SettingTileToggle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(AppIcons.moon),
      contentPadding: EdgeInsets.symmetric(horizontal: SizeHelper.wBlock * 32, vertical: SizeHelper.hBlock * 3),
      title: Text(
        'Dark Mode',
        style: TextStyle(
          color: AppColors.textSecondary,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Switch(
        onChanged: (val) {},
        value: false,
        activeColor: AppColors.primary,
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary;
          } else {
            return AppColors.textSecondary.withOpacity(0.25);
          }
        }),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary.withOpacity(0.2);
          } else {
            return AppColors.textSecondary.withOpacity(0.07);
          }
        }),
      ),
    );
  }
}
