// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MockItemsTable extends MockItems
    with TableInfo<$MockItemsTable, MockItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MockItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mock_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<MockItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MockItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MockItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      )!,
    );
  }

  @override
  $MockItemsTable createAlias(String alias) {
    return $MockItemsTable(attachedDatabase, alias);
  }
}

class MockItem extends DataClass implements Insertable<MockItem> {
  final int id;
  final String content;
  const MockItem({required this.id, required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['content'] = Variable<String>(content);
    return map;
  }

  MockItemsCompanion toCompanion(bool nullToAbsent) {
    return MockItemsCompanion(id: Value(id), content: Value(content));
  }

  factory MockItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MockItem(
      id: serializer.fromJson<int>(json['id']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'content': serializer.toJson<String>(content),
    };
  }

  MockItem copyWith({int? id, String? content}) =>
      MockItem(id: id ?? this.id, content: content ?? this.content);
  MockItem copyWithCompanion(MockItemsCompanion data) {
    return MockItem(
      id: data.id.present ? data.id.value : this.id,
      content: data.content.present ? data.content.value : this.content,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MockItem(')
          ..write('id: $id, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MockItem &&
          other.id == this.id &&
          other.content == this.content);
}

class MockItemsCompanion extends UpdateCompanion<MockItem> {
  final Value<int> id;
  final Value<String> content;
  const MockItemsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
  });
  MockItemsCompanion.insert({
    this.id = const Value.absent(),
    required String content,
  }) : content = Value(content);
  static Insertable<MockItem> custom({
    Expression<int>? id,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'content': content,
    });
  }

  MockItemsCompanion copyWith({Value<int>? id, Value<String>? content}) {
    return MockItemsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MockItemsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MockItemsTable mockItems = $MockItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [mockItems];
}

typedef $$MockItemsTableCreateCompanionBuilder =
    MockItemsCompanion Function({Value<int> id, required String content});
typedef $$MockItemsTableUpdateCompanionBuilder =
    MockItemsCompanion Function({Value<int> id, Value<String> content});

class $$MockItemsTableFilterComposer
    extends Composer<_$AppDatabase, $MockItemsTable> {
  $$MockItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MockItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $MockItemsTable> {
  $$MockItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MockItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MockItemsTable> {
  $$MockItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);
}

class $$MockItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MockItemsTable,
          MockItem,
          $$MockItemsTableFilterComposer,
          $$MockItemsTableOrderingComposer,
          $$MockItemsTableAnnotationComposer,
          $$MockItemsTableCreateCompanionBuilder,
          $$MockItemsTableUpdateCompanionBuilder,
          (MockItem, BaseReferences<_$AppDatabase, $MockItemsTable, MockItem>),
          MockItem,
          PrefetchHooks Function()
        > {
  $$MockItemsTableTableManager(_$AppDatabase db, $MockItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MockItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MockItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MockItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> content = const Value.absent(),
              }) => MockItemsCompanion(id: id, content: content),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String content,
              }) => MockItemsCompanion.insert(id: id, content: content),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MockItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MockItemsTable,
      MockItem,
      $$MockItemsTableFilterComposer,
      $$MockItemsTableOrderingComposer,
      $$MockItemsTableAnnotationComposer,
      $$MockItemsTableCreateCompanionBuilder,
      $$MockItemsTableUpdateCompanionBuilder,
      (MockItem, BaseReferences<_$AppDatabase, $MockItemsTable, MockItem>),
      MockItem,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MockItemsTableTableManager get mockItems =>
      $$MockItemsTableTableManager(_db, _db.mockItems);
}
