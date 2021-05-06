class VideoWatched {
  final String topic;
  final int count;

  VideoWatched({required this.topic, required this.count});

  @override
  String toString() {
    print("VideoWatched(topic: $topic, count: $count)");
    return super.toString();
  }
}

class Count {
  final String date;
  final int count;

  Count({required this.date, required this.count});

  @override
  String toString() {
    print("Count(date: $date, count: $count)");
    return super.toString();
  }
}
