import 'package:car_store/controllers/chat/chat_sort_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatTypesController extends StateNotifier<List<String>> {
  ChatTypesController(this.ref) : super(['All Chats', 'Personal', 'Work', 'Group']);

  static final provider = StateNotifierProvider<ChatTypesController, List<String>>((ref) => ChatTypesController(ref));
  String selectedType = 'All Chats';
  final ref;

  void changeType(String type) {
    selectedType = type;
    state = [...state];
    ref.read(ChatSortController.provider.notifier).changeType(type);
  }
}
