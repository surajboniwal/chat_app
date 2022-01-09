import 'package:car_store/ui/theme/theme.dart';
import 'package:car_store/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    Key? key,
    required this.icon,
    required this.label,
    this.leading = true,
  }) : super(key: key);

  final String icon;
  final String label;
  final bool leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon, color: AppColors.primary),
      contentPadding: EdgeInsets.symmetric(horizontal: SizeHelper.wBlock * 32, vertical: SizeHelper.hBlock * 3),
      title: Text(
        label,
        style: TextStyle(
          color: AppColors.textSecondary,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: leading
          ? Icon(
              Icons.chevron_right,
              color: AppColors.textSecondary.withOpacity(0.4),
            )
          : null,
    );
  }
}
