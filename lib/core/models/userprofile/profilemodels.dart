import 'package:hive/hive.dart';

part 'profilemodels.g.dart';

@HiveType(typeId: 3)
class WatchTime extends HiveObject {
  @HiveField(0)
  final DateTime dateTime;

  @HiveField(1)
  final int minutesWatched;

  WatchTime({required this.dateTime, required this.minutesWatched});

  @override
  String toString() {
    print("WatchTime(date: $dateTime, minutesWatched: $minutesWatched)");
    return super.toString();
  }
}

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
