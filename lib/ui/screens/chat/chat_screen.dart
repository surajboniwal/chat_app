import 'package:car_store/controllers/chat/chat_sort_controller.dart';
import 'package:car_store/controllers/chat/chat_types_controller.dart';
import 'package:car_store/ui/theme/theme.dart';
import 'package:car_store/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            height: SizeHelper.hBlock * 24,
            child: Consumer(
              builder: (context, ref, child) {
                final List<String> types = ref.watch(ChatTypesController.provider);
                final provider = ref.watch(ChatTypesController.provider.notifier);
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: SizeHelper.wBlock * 12),
                  itemCount: types.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: SizeHelper.wBlock * 12),
                  itemBuilder: (context, index) => ChatSortTile(
                    label: types[index],
                    selected: types[index] == provider.selectedType,
                    onTap: () {
                      provider.changeType(types[index]);
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final List<Conversation> conversations = ref.watch(ChatSortController.provider);
                return ListView.separated(
                  itemCount: conversations.length,
                  separatorBuilder: (context, index) => SizedBox(height: 12.0),
                  itemBuilder: (context, index) => ConversationTile(
                    conversation: conversations[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
