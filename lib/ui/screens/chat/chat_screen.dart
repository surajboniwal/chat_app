import 'package:car_store/ui/theme/app_icons.dart';
import 'package:car_store/ui/util/size_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'temp_data/data.dart';
import 'widgets/chat_sort_tile.dart';
import 'widgets/conversation_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          AppIcons.addChat,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: SizeUtil.hBlock * 24,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: SizeUtil.wBlock * 12),
              itemCount: sorts.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: SizeUtil.wBlock * 12),
              itemBuilder: (context, index) => ChatSortTile(
                label: sorts[index],
                selected: index == 0,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: Conversation.list.length,
              separatorBuilder: (context, index) => SizedBox(height: 12.0),
              itemBuilder: (context, index) => ConversationTile(
                conversation: Conversation.list[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
