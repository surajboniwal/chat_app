import 'package:car_store/ui/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationController extends StateNotifier<int> {
  NavigationController(this.ref) : super(0);

  static final provider = StateNotifierProvider<NavigationController, int>((ref) => NavigationController(ref));

  final ref;

  void changePage(int index) {
    state = index;
  }

  String get title {
    switch (state) {
      case 0:
        return 'Recent chats';

      case 1:
        return 'Chat App';

      case 2:
        return 'Recent calls';

      case 3:
        return 'Settings';

      default:
        return 'Chat App';
    }
  }

  Widget get screen {
    switch (state) {
      case 0:
        return ChatScreen();

      case 1:
        return ChatScreen();

      case 2:
        return RecentScreen();

      case 3:
        return ProfileScreen();

      default:
        return Container(
          child: Text('Maybe you\'ve lost?'),
        );
    }
  }
}
