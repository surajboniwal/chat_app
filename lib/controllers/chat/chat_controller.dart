import 'package:car_store/ui/screens/chat/temp_data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatController extends StateNotifier<List<Conversation>> {
  ChatController() : super(Conversation.list);

  static final provider = StateNotifierProvider<ChatController, List<Conversation>>((ref) => ChatController());
}
