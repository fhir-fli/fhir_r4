import 'package:drift/drift.dart';

/// General key-value storage table.
class GeneralStorage extends Table {
  /// Auto-incrementing primary key
  IntColumn get id => integer().autoIncrement()();

  /// Optional lookup key for named entries
  TextColumn get key => text().nullable()();

  /// JSON-encoded value
  TextColumn get value => text()();
}
