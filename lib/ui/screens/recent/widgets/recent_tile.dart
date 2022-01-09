import 'package:car_store/ui/screens/recent/temp_data/data.dart';
import 'package:car_store/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:car_store/utils/extensions/date_time.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentTile extends StatelessWidget {
  const RecentTile({Key? key, required this.recent}) : super(key: key);

  final Recent recent;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.background,
            backgroundImage: NetworkImage(
              recent.image,
            ),
          ),
          if (recent.online)
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: AppColors.background,
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: AppColors.green,
                ),
              ],
            ),
        ],
      ),
      title: Text(
        recent.name,
        style: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(recent.time.conversationTime),
      trailing: SvgPicture.asset(
        recent.callType == CallType.VOICE ? AppIcons.voice : AppIcons.video,
        color: AppColors.primary,
      ),
    );
  }
}
