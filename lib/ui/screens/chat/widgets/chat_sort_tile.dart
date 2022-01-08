import 'package:car_store/ui/theme/theme.dart';
import 'package:car_store/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class ChatSortTile extends StatelessWidget {
  const ChatSortTile({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeHelper.wBlock * 8),
        height: SizeHelper.hBlock * 12,
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.background,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: AppColors.textSecondary.withOpacity(0.05),
            ),
          ],
        ),
        child: Center(
          child: Opacity(
            opacity: selected ? 1 : 0.5,
            child: Text(
              label,
              style: TextStyle(
                color: selected ? AppColors.background : AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
