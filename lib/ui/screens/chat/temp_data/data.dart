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

  Conversation({
    required this.recieverName,
    required this.lastMessage,
    required this.read,
    required this.time,
    required this.image,
  });

  static List<Conversation> list = [
    Conversation(
      recieverName: 'Himmat Singh',
      lastMessage: 'Hey, how are you?',
      read: true,
      time: DateTime.now(),
      image: 'https://randomuser.me/api/portraits/men/52.jpg',
    ),
    Conversation(
      recieverName: 'Krish Bhanushali',
      lastMessage: 'Kisu automason bot!',
      read: false,
      time: DateTime.now().subtract(Duration(days: 3, hours: 4)),
      image: 'https://randomuser.me/api/portraits/men/53.jpg',
    ),
    Conversation(
      recieverName: 'Rahul Bhanushali',
      lastMessage: 'Lets go gumandev! Today is saturday, also ask Himmat!',
      read: false,
      time: DateTime.now().subtract(Duration(days: 1, hours: 12)),
      image: 'https://randomuser.me/api/portraits/men/54.jpg',
    ),
  ];
}
