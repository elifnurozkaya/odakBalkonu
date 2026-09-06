import 'package:drift/drift.dart';
// Platform Web ise web_connection.dart, Android ise native_connection.dart yüklenir
import 'native_connection.dart'
    if (dart.library.js_interop) 'web_connection.dart'
    as connection;

part 'app_database.g.dart';

class MockItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get content => text()();
}

@DriftDatabase(tables: [MockItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(connection.openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<MockItem>> getAllItems() => select(mockItems).get();
  Future<int> insertItem(MockItemsCompanion item) =>
      into(mockItems).insert(item);
  Future<bool> updateItem(MockItem item) => update(mockItems).replace(item);
  Future<int> deleteItem(MockItem item) => delete(mockItems).delete(item);
}
