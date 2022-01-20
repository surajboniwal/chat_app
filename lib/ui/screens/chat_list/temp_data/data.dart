const List<String> sorts = [
  'All Chats',
  'Personal',
  'Work',
  'Group',
];

class Conversation {
  final String recieverName;
  final String lastMessage;
  final bool read;
  final DateTime time;
  final String image;
  final int pendingMesageCount;
  final bool isOnline;
  final String type;

  Conversation({
    required this.recieverName,
    required this.lastMessage,
    required this.read,
    required this.time,
    required this.image,
    required this.pendingMesageCount,
    required this.isOnline,
    required this.type,
  });

  static List<Conversation> list = [
    Conversation(
      recieverName: 'Himmat Singh',
      lastMessage: 'Hey, how are you?',
      read: true,
      time: DateTime.now(),
      image: 'https://randomuser.me/api/portraits/men/52.jpg',
      pendingMesageCount: 0,
      isOnline: false,
      type: 'Work',
    ),
    Conversation(
      recieverName: 'Krish Bhanushali',
      lastMessage: 'Kisu automason bot!',
      read: false,
      time: DateTime.now().subtract(Duration(days: 2, hours: 4)),
      image: 'https://randomuser.me/api/portraits/men/53.jpg',
      pendingMesageCount: 2,
      isOnline: true,
      type: 'Personal',
    ),
    Conversation(
      recieverName: 'Rahul Chaudhary',
      lastMessage: 'Lets go gumandev! Today is saturday, also ask Himmat!',
      read: false,
      time: DateTime.now().subtract(Duration(days: 375)),
      image: 'https://randomuser.me/api/portraits/men/54.jpg',
      pendingMesageCount: 1,
      isOnline: false,
      type: 'Group',
    ),
  ];
}
