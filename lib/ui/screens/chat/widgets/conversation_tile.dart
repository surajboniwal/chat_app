import 'package:car_store/ui/screens/chat/temp_data/data.dart';
import 'package:car_store/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_store/utils/extensions/extensions.dart';

class ConversationTile extends StatelessWidget {
  const ConversationTile({Key? key, required this.conversation}) : super(key: key);

  final Conversation conversation;

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
              conversation.image,
            ),
          ),
          if (conversation.isOnline)
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
        conversation.recieverName,
        style: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        children: [
          if (conversation.read)
            SvgPicture.asset(
              AppIcons.read,
              height: 20.0,
              width: 20.0,
              color: AppColors.textSecondary,
            ),
          if (conversation.read) const SizedBox(width: 4.0),
          Expanded(
            child: Text(
              conversation.lastMessage,
              maxLines: 1,
              style: TextStyle(
                color: AppColors.textSecondary,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            conversation.time.conversationTime,
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
          CircleAvatar(
            backgroundColor: conversation.pendingMesageCount > 0 ? AppColors.primary : Colors.transparent,
            radius: 12.0,
            child: Text(
              conversation.pendingMesageCount.toString(),
              style: TextStyle(
                color: AppColors.background,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
