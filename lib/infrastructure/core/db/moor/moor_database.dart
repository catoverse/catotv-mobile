import 'package:cato_feed/infrastructure/core/db/moor/moor_dao.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'moor_database.g.dart';

@DataClassName("MUser")
class Users extends Table {
  TextColumn get id => text()();
  TextColumn get googleId => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get jwtToken => text()();
  TextColumn get avatar => text()();
  BoolColumn get isTopicSelected => boolean()();
  DateTimeColumn get jwtIssueDate =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();

  @override
  Set<Column> get primaryKey => {id, googleId};
}

@DataClassName("MTopic")
class Topics extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get color => text()();
  TextColumn get imageUrl => text()();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName("MPost")
class Posts extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get authorName => text()();
  TextColumn get authorAvatar => text()();
  IntColumn get startTimestamp => integer()();
  IntColumn get endTimestamp => integer()();
  TextColumn get videoUrl => text()();
  TextColumn get topicId => text()();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();

  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'cato.sqlite'));
    return VmDatabase(file);
  });
}

@LazySingleton()
@UseMoor(tables: [Users, Topics, Posts], daos: [UsersDao, TopicsDao, PostsDao])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
