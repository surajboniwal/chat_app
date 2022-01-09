enum CallType {
  VOICE,
  VIDEO,
}

enum CallStatus {
  SENT,
  RECIEVED,
}

class Recent {
  final String name;
  final String image;
  final bool online;
  final DateTime time;
  final CallType callType;
  final CallStatus callStatus;

  Recent({
    required this.name,
    required this.image,
    required this.online,
    required this.time,
    required this.callStatus,
    required this.callType,
  });

  static final List<Recent> list = [
    Recent(
      name: 'Krish Bhanushali',
      image: 'https://randomuser.me/api/portraits/men/33.jpg',
      online: true,
      time: DateTime.now().subtract(Duration(days: 1)),
      callStatus: CallStatus.RECIEVED,
      callType: CallType.VOICE,
    ),
    Recent(
      name: 'Himmat Singh',
      image: 'https://randomuser.me/api/portraits/men/34.jpg',
      online: false,
      time: DateTime.now().subtract(Duration(days: 3)),
      callStatus: CallStatus.RECIEVED,
      callType: CallType.VOICE,
    ),
    Recent(
      name: 'Himmat Singh',
      image: 'https://randomuser.me/api/portraits/men/34.jpg',
      online: false,
      time: DateTime.now().subtract(Duration(days: 4)),
      callStatus: CallStatus.SENT,
      callType: CallType.VOICE,
    ),
    Recent(
      name: 'Rahul Chaudhary',
      image: 'https://randomuser.me/api/portraits/men/35.jpg',
      online: true,
      time: DateTime.now().subtract(Duration(days: 6)),
      callStatus: CallStatus.SENT,
      callType: CallType.VIDEO,
    ),
    Recent(
      name: 'Suraj Boniwal',
      image: 'https://randomuser.me/api/portraits/men/36.jpg',
      online: false,
      time: DateTime.now().subtract(Duration(days: 34)),
      callStatus: CallStatus.RECIEVED,
      callType: CallType.VIDEO,
    ),
  ];
}
