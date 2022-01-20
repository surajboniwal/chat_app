import 'package:car_store/controllers/chat/chat_controller.dart';
import 'package:car_store/ui/screens/chat_list/temp_data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatSortController extends StateNotifier<List<Conversation>> {
  ChatSortController(this.ref) : super(ref.read(ChatController.provider));

  static final provider =
      StateNotifierProvider<ChatSortController, List<Conversation>>((ref) => ChatSortController(ref));

  final ref;

  void changeType(String type) {
    if (type == 'All Chats') {
      state = ref.read(ChatController.provider);
      return;
    }
    state = (ref.read(ChatController.provider) as List<Conversation>).where((element) => element.type == type).toList();
  }
}
