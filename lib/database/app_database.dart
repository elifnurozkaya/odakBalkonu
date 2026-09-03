import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

// Prototip tablosu: En az kimlik ve metin alanı içerir
class MockItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get content => text()();
}

@DriftDatabase(tables: [MockItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Temel CRUD İşlemleri
  Future<List<MockItem>> getAllItems() => select(mockItems).get();
  Future<int> insertItem(MockItemsCompanion item) =>
      into(mockItems).insert(item);
  Future<bool> updateItem(MockItem item) => update(mockItems).replace(item);
  Future<int> deleteItem(MockItem item) => delete(mockItems).delete(item);
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'prototype_db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
