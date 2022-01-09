extension DateTimeConversationTime on DateTime {
  String get conversationTime {
    Duration difference = DateTime.now().difference(this);
    String conversationTime = '';

    if (difference.inDays > 7) {
      conversationTime = this.formattedDate;
    } else if (difference.inDays > 1) {
      conversationTime = this.dayName;
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else {
      return this.time;
    }

    return conversationTime;
  }
}

extension DateTimeFormattedDate on DateTime {
  String get formattedDate {
    return '${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year}';
  }
}

extension DateTimeDay on DateTime {
  String get dayName {
    List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

    return days[this.weekday - 1];
  }
}

extension DateTimeTime on DateTime {
  String get time {
    return '${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}';
  }
}
