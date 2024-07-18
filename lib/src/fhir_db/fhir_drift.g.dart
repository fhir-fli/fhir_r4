// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fhir_drift.dart';

// ignore_for_file: type=lint
class $ResourcesTable extends Resources
    with TableInfo<$ResourcesTable, ResourceEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResourcesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'UNIQUE NOT NULL');
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _jsonMeta = const VerificationMeta('json');
  @override
  late final GeneratedColumn<String> json = GeneratedColumn<String>(
      'json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, resourceType, json];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'resources';
  @override
  VerificationContext validateIntegrity(Insertable<ResourceEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('json')) {
      context.handle(
          _jsonMeta, json.isAcceptableOrUnknown(data['json']!, _jsonMeta));
    } else if (isInserting) {
      context.missing(_jsonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResourceEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResourceEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      json: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}json'])!,
    );
  }

  @override
  $ResourcesTable createAlias(String alias) {
    return $ResourcesTable(attachedDatabase, alias);
  }
}

class ResourceEntity extends DataClass implements Insertable<ResourceEntity> {
  final String id;
  final String resourceType;
  final String json;
  const ResourceEntity(
      {required this.id, required this.resourceType, required this.json});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['resource_type'] = Variable<String>(resourceType);
    map['json'] = Variable<String>(json);
    return map;
  }

  ResourcesCompanion toCompanion(bool nullToAbsent) {
    return ResourcesCompanion(
      id: Value(id),
      resourceType: Value(resourceType),
      json: Value(json),
    );
  }

  factory ResourceEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResourceEntity(
      id: serializer.fromJson<String>(json['id']),
      resourceType: serializer.fromJson<String>(json['resourceType']),
      json: serializer.fromJson<String>(json['json']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'resourceType': serializer.toJson<String>(resourceType),
      'json': serializer.toJson<String>(json),
    };
  }

  ResourceEntity copyWith({String? id, String? resourceType, String? json}) =>
      ResourceEntity(
        id: id ?? this.id,
        resourceType: resourceType ?? this.resourceType,
        json: json ?? this.json,
      );
  ResourceEntity copyWithCompanion(ResourcesCompanion data) {
    return ResourceEntity(
      id: data.id.present ? data.id.value : this.id,
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      json: data.json.present ? data.json.value : this.json,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResourceEntity(')
          ..write('id: $id, ')
          ..write('resourceType: $resourceType, ')
          ..write('json: $json')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, resourceType, json);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResourceEntity &&
          other.id == this.id &&
          other.resourceType == this.resourceType &&
          other.json == this.json);
}

class ResourcesCompanion extends UpdateCompanion<ResourceEntity> {
  final Value<String> id;
  final Value<String> resourceType;
  final Value<String> json;
  final Value<int> rowid;
  const ResourcesCompanion({
    this.id = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.json = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResourcesCompanion.insert({
    required String id,
    required String resourceType,
    required String json,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        resourceType = Value(resourceType),
        json = Value(json);
  static Insertable<ResourceEntity> custom({
    Expression<String>? id,
    Expression<String>? resourceType,
    Expression<String>? json,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (resourceType != null) 'resource_type': resourceType,
      if (json != null) 'json': json,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResourcesCompanion copyWith(
      {Value<String>? id,
      Value<String>? resourceType,
      Value<String>? json,
      Value<int>? rowid}) {
    return ResourcesCompanion(
      id: id ?? this.id,
      resourceType: resourceType ?? this.resourceType,
      json: json ?? this.json,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(json.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourcesCompanion(')
          ..write('id: $id, ')
          ..write('resourceType: $resourceType, ')
          ..write('json: $json, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ResourceHistoryTable extends ResourceHistory
    with TableInfo<$ResourceHistoryTable, ResourceHistoryEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResourceHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _versionIdMeta =
      const VerificationMeta('versionId');
  @override
  late final GeneratedColumn<String> versionId = GeneratedColumn<String>(
      'version_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _jsonMeta = const VerificationMeta('json');
  @override
  late final GeneratedColumn<String> json = GeneratedColumn<String>(
      'json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, resourceType, versionId, json];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'resource_history';
  @override
  VerificationContext validateIntegrity(
      Insertable<ResourceHistoryEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('version_id')) {
      context.handle(_versionIdMeta,
          versionId.isAcceptableOrUnknown(data['version_id']!, _versionIdMeta));
    } else if (isInserting) {
      context.missing(_versionIdMeta);
    }
    if (data.containsKey('json')) {
      context.handle(
          _jsonMeta, json.isAcceptableOrUnknown(data['json']!, _jsonMeta));
    } else if (isInserting) {
      context.missing(_jsonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, versionId};
  @override
  ResourceHistoryEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResourceHistoryEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      versionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version_id'])!,
      json: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}json'])!,
    );
  }

  @override
  $ResourceHistoryTable createAlias(String alias) {
    return $ResourceHistoryTable(attachedDatabase, alias);
  }
}

class ResourceHistoryEntity extends DataClass
    implements Insertable<ResourceHistoryEntity> {
  final String id;
  final String resourceType;
  final String versionId;
  final String json;
  const ResourceHistoryEntity(
      {required this.id,
      required this.resourceType,
      required this.versionId,
      required this.json});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['resource_type'] = Variable<String>(resourceType);
    map['version_id'] = Variable<String>(versionId);
    map['json'] = Variable<String>(json);
    return map;
  }

  ResourceHistoryCompanion toCompanion(bool nullToAbsent) {
    return ResourceHistoryCompanion(
      id: Value(id),
      resourceType: Value(resourceType),
      versionId: Value(versionId),
      json: Value(json),
    );
  }

  factory ResourceHistoryEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResourceHistoryEntity(
      id: serializer.fromJson<String>(json['id']),
      resourceType: serializer.fromJson<String>(json['resourceType']),
      versionId: serializer.fromJson<String>(json['versionId']),
      json: serializer.fromJson<String>(json['json']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'resourceType': serializer.toJson<String>(resourceType),
      'versionId': serializer.toJson<String>(versionId),
      'json': serializer.toJson<String>(json),
    };
  }

  ResourceHistoryEntity copyWith(
          {String? id,
          String? resourceType,
          String? versionId,
          String? json}) =>
      ResourceHistoryEntity(
        id: id ?? this.id,
        resourceType: resourceType ?? this.resourceType,
        versionId: versionId ?? this.versionId,
        json: json ?? this.json,
      );
  ResourceHistoryEntity copyWithCompanion(ResourceHistoryCompanion data) {
    return ResourceHistoryEntity(
      id: data.id.present ? data.id.value : this.id,
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      versionId: data.versionId.present ? data.versionId.value : this.versionId,
      json: data.json.present ? data.json.value : this.json,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResourceHistoryEntity(')
          ..write('id: $id, ')
          ..write('resourceType: $resourceType, ')
          ..write('versionId: $versionId, ')
          ..write('json: $json')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, resourceType, versionId, json);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResourceHistoryEntity &&
          other.id == this.id &&
          other.resourceType == this.resourceType &&
          other.versionId == this.versionId &&
          other.json == this.json);
}

class ResourceHistoryCompanion extends UpdateCompanion<ResourceHistoryEntity> {
  final Value<String> id;
  final Value<String> resourceType;
  final Value<String> versionId;
  final Value<String> json;
  final Value<int> rowid;
  const ResourceHistoryCompanion({
    this.id = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.versionId = const Value.absent(),
    this.json = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResourceHistoryCompanion.insert({
    required String id,
    required String resourceType,
    required String versionId,
    required String json,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        resourceType = Value(resourceType),
        versionId = Value(versionId),
        json = Value(json);
  static Insertable<ResourceHistoryEntity> custom({
    Expression<String>? id,
    Expression<String>? resourceType,
    Expression<String>? versionId,
    Expression<String>? json,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (resourceType != null) 'resource_type': resourceType,
      if (versionId != null) 'version_id': versionId,
      if (json != null) 'json': json,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResourceHistoryCompanion copyWith(
      {Value<String>? id,
      Value<String>? resourceType,
      Value<String>? versionId,
      Value<String>? json,
      Value<int>? rowid}) {
    return ResourceHistoryCompanion(
      id: id ?? this.id,
      resourceType: resourceType ?? this.resourceType,
      versionId: versionId ?? this.versionId,
      json: json ?? this.json,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (versionId.present) {
      map['version_id'] = Variable<String>(versionId.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(json.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourceHistoryCompanion(')
          ..write('id: $id, ')
          ..write('resourceType: $resourceType, ')
          ..write('versionId: $versionId, ')
          ..write('json: $json, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$FhirDriftDb extends GeneratedDatabase {
  _$FhirDriftDb(QueryExecutor e) : super(e);
  $FhirDriftDbManager get managers => $FhirDriftDbManager(this);
  late final $ResourcesTable resources = $ResourcesTable(this);
  late final $ResourceHistoryTable resourceHistory =
      $ResourceHistoryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [resources, resourceHistory];
}

typedef $$ResourcesTableCreateCompanionBuilder = ResourcesCompanion Function({
  required String id,
  required String resourceType,
  required String json,
  Value<int> rowid,
});
typedef $$ResourcesTableUpdateCompanionBuilder = ResourcesCompanion Function({
  Value<String> id,
  Value<String> resourceType,
  Value<String> json,
  Value<int> rowid,
});

class $$ResourcesTableTableManager extends RootTableManager<
    _$FhirDriftDb,
    $ResourcesTable,
    ResourceEntity,
    $$ResourcesTableFilterComposer,
    $$ResourcesTableOrderingComposer,
    $$ResourcesTableCreateCompanionBuilder,
    $$ResourcesTableUpdateCompanionBuilder> {
  $$ResourcesTableTableManager(_$FhirDriftDb db, $ResourcesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ResourcesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ResourcesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> resourceType = const Value.absent(),
            Value<String> json = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourcesCompanion(
            id: id,
            resourceType: resourceType,
            json: json,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String resourceType,
            required String json,
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourcesCompanion.insert(
            id: id,
            resourceType: resourceType,
            json: json,
            rowid: rowid,
          ),
        ));
}

class $$ResourcesTableFilterComposer
    extends FilterComposer<_$FhirDriftDb, $ResourcesTable> {
  $$ResourcesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get resourceType => $state.composableBuilder(
      column: $state.table.resourceType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get json => $state.composableBuilder(
      column: $state.table.json,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ResourcesTableOrderingComposer
    extends OrderingComposer<_$FhirDriftDb, $ResourcesTable> {
  $$ResourcesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get resourceType => $state.composableBuilder(
      column: $state.table.resourceType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get json => $state.composableBuilder(
      column: $state.table.json,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ResourceHistoryTableCreateCompanionBuilder = ResourceHistoryCompanion
    Function({
  required String id,
  required String resourceType,
  required String versionId,
  required String json,
  Value<int> rowid,
});
typedef $$ResourceHistoryTableUpdateCompanionBuilder = ResourceHistoryCompanion
    Function({
  Value<String> id,
  Value<String> resourceType,
  Value<String> versionId,
  Value<String> json,
  Value<int> rowid,
});

class $$ResourceHistoryTableTableManager extends RootTableManager<
    _$FhirDriftDb,
    $ResourceHistoryTable,
    ResourceHistoryEntity,
    $$ResourceHistoryTableFilterComposer,
    $$ResourceHistoryTableOrderingComposer,
    $$ResourceHistoryTableCreateCompanionBuilder,
    $$ResourceHistoryTableUpdateCompanionBuilder> {
  $$ResourceHistoryTableTableManager(
      _$FhirDriftDb db, $ResourceHistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ResourceHistoryTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ResourceHistoryTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> resourceType = const Value.absent(),
            Value<String> versionId = const Value.absent(),
            Value<String> json = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourceHistoryCompanion(
            id: id,
            resourceType: resourceType,
            versionId: versionId,
            json: json,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String resourceType,
            required String versionId,
            required String json,
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourceHistoryCompanion.insert(
            id: id,
            resourceType: resourceType,
            versionId: versionId,
            json: json,
            rowid: rowid,
          ),
        ));
}

class $$ResourceHistoryTableFilterComposer
    extends FilterComposer<_$FhirDriftDb, $ResourceHistoryTable> {
  $$ResourceHistoryTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get resourceType => $state.composableBuilder(
      column: $state.table.resourceType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get versionId => $state.composableBuilder(
      column: $state.table.versionId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get json => $state.composableBuilder(
      column: $state.table.json,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ResourceHistoryTableOrderingComposer
    extends OrderingComposer<_$FhirDriftDb, $ResourceHistoryTable> {
  $$ResourceHistoryTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get resourceType => $state.composableBuilder(
      column: $state.table.resourceType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get versionId => $state.composableBuilder(
      column: $state.table.versionId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get json => $state.composableBuilder(
      column: $state.table.json,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $FhirDriftDbManager {
  final _$FhirDriftDb _db;
  $FhirDriftDbManager(this._db);
  $$ResourcesTableTableManager get resources =>
      $$ResourcesTableTableManager(_db, _db.resources);
  $$ResourceHistoryTableTableManager get resourceHistory =>
      $$ResourceHistoryTableTableManager(_db, _db.resourceHistory);
}
