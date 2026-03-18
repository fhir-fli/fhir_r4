// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fhir_db.dart';

// ignore_for_file: type=lint
class $ResourcesTable extends Resources
    with TableInfo<$ResourcesTable, Resource> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResourcesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _resourceMeta =
      const VerificationMeta('resource');
  @override
  late final GeneratedColumn<String> resource = GeneratedColumn<String>(
      'resource', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [resourceType, id, resource, lastUpdated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'resources';
  @override
  VerificationContext validateIntegrity(Insertable<Resource> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('resource')) {
      context.handle(_resourceMeta,
          resource.isAcceptableOrUnknown(data['resource']!, _resourceMeta));
    } else if (isInserting) {
      context.missing(_resourceMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {resourceType, id};
  @override
  Resource map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Resource(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      resource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
    );
  }

  @override
  $ResourcesTable createAlias(String alias) {
    return $ResourcesTable(attachedDatabase, alias);
  }
}

class Resource extends DataClass implements Insertable<Resource> {
  /// FHIR resource type name (e.g. 'Patient')
  final String resourceType;

  /// Resource logical id
  final String id;

  /// Full JSON-encoded FHIR resource
  final String resource;

  /// When this version was last updated
  final int lastUpdated;
  const Resource(
      {required this.resourceType,
      required this.id,
      required this.resource,
      required this.lastUpdated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['resource'] = Variable<String>(resource);
    map['last_updated'] = Variable<int>(lastUpdated);
    return map;
  }

  ResourcesCompanion toCompanion(bool nullToAbsent) {
    return ResourcesCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      resource: Value(resource),
      lastUpdated: Value(lastUpdated),
    );
  }

  factory Resource.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Resource(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      resource: serializer.fromJson<String>(json['resource']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'resource': serializer.toJson<String>(resource),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
    };
  }

  Resource copyWith(
          {String? resourceType,
          String? id,
          String? resource,
          int? lastUpdated}) =>
      Resource(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        resource: resource ?? this.resource,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  Resource copyWithCompanion(ResourcesCompanion data) {
    return Resource(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      resource: data.resource.present ? data.resource.value : this.resource,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Resource(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('resource: $resource, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, resource, lastUpdated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Resource &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.resource == this.resource &&
          other.lastUpdated == this.lastUpdated);
}

class ResourcesCompanion extends UpdateCompanion<Resource> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<String> resource;
  final Value<int> lastUpdated;
  final Value<int> rowid;
  const ResourcesCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.resource = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResourcesCompanion.insert({
    required String resourceType,
    required String id,
    required String resource,
    required int lastUpdated,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        resource = Value(resource),
        lastUpdated = Value(lastUpdated);
  static Insertable<Resource> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<String>? resource,
    Expression<int>? lastUpdated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (resource != null) 'resource': resource,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResourcesCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<String>? resource,
      Value<int>? lastUpdated,
      Value<int>? rowid}) {
    return ResourcesCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      resource: resource ?? this.resource,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (resource.present) {
      map['resource'] = Variable<String>(resource.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourcesCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('resource: $resource, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ResourcesHistoryTable extends ResourcesHistory
    with TableInfo<$ResourcesHistoryTable, ResourcesHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResourcesHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _versionIdMeta =
      const VerificationMeta('versionId');
  @override
  late final GeneratedColumn<String> versionId = GeneratedColumn<String>(
      'version_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _resourceMeta =
      const VerificationMeta('resource');
  @override
  late final GeneratedColumn<String> resource = GeneratedColumn<String>(
      'resource', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [resourceType, id, versionId, resource, lastUpdated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'resources_history';
  @override
  VerificationContext validateIntegrity(
      Insertable<ResourcesHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('version_id')) {
      context.handle(_versionIdMeta,
          versionId.isAcceptableOrUnknown(data['version_id']!, _versionIdMeta));
    } else if (isInserting) {
      context.missing(_versionIdMeta);
    }
    if (data.containsKey('resource')) {
      context.handle(_resourceMeta,
          resource.isAcceptableOrUnknown(data['resource']!, _resourceMeta));
    } else if (isInserting) {
      context.missing(_resourceMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {resourceType, id, versionId};
  @override
  ResourcesHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResourcesHistoryData(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      versionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version_id'])!,
      resource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
    );
  }

  @override
  $ResourcesHistoryTable createAlias(String alias) {
    return $ResourcesHistoryTable(attachedDatabase, alias);
  }
}

class ResourcesHistoryData extends DataClass
    implements Insertable<ResourcesHistoryData> {
  /// FHIR resource type name (e.g. 'Patient')
  final String resourceType;

  /// Resource logical id
  final String id;

  /// Version identifier (e.g. '1', '2', or timestamp-based)
  final String versionId;

  /// Full JSON-encoded FHIR resource
  final String resource;

  /// When this version was last updated
  final int lastUpdated;
  const ResourcesHistoryData(
      {required this.resourceType,
      required this.id,
      required this.versionId,
      required this.resource,
      required this.lastUpdated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['version_id'] = Variable<String>(versionId);
    map['resource'] = Variable<String>(resource);
    map['last_updated'] = Variable<int>(lastUpdated);
    return map;
  }

  ResourcesHistoryCompanion toCompanion(bool nullToAbsent) {
    return ResourcesHistoryCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      versionId: Value(versionId),
      resource: Value(resource),
      lastUpdated: Value(lastUpdated),
    );
  }

  factory ResourcesHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResourcesHistoryData(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      versionId: serializer.fromJson<String>(json['versionId']),
      resource: serializer.fromJson<String>(json['resource']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'versionId': serializer.toJson<String>(versionId),
      'resource': serializer.toJson<String>(resource),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
    };
  }

  ResourcesHistoryData copyWith(
          {String? resourceType,
          String? id,
          String? versionId,
          String? resource,
          int? lastUpdated}) =>
      ResourcesHistoryData(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        versionId: versionId ?? this.versionId,
        resource: resource ?? this.resource,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  ResourcesHistoryData copyWithCompanion(ResourcesHistoryCompanion data) {
    return ResourcesHistoryData(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      versionId: data.versionId.present ? data.versionId.value : this.versionId,
      resource: data.resource.present ? data.resource.value : this.resource,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResourcesHistoryData(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('versionId: $versionId, ')
          ..write('resource: $resource, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(resourceType, id, versionId, resource, lastUpdated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResourcesHistoryData &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.versionId == this.versionId &&
          other.resource == this.resource &&
          other.lastUpdated == this.lastUpdated);
}

class ResourcesHistoryCompanion extends UpdateCompanion<ResourcesHistoryData> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<String> versionId;
  final Value<String> resource;
  final Value<int> lastUpdated;
  final Value<int> rowid;
  const ResourcesHistoryCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.versionId = const Value.absent(),
    this.resource = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResourcesHistoryCompanion.insert({
    required String resourceType,
    required String id,
    required String versionId,
    required String resource,
    required int lastUpdated,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        versionId = Value(versionId),
        resource = Value(resource),
        lastUpdated = Value(lastUpdated);
  static Insertable<ResourcesHistoryData> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<String>? versionId,
    Expression<String>? resource,
    Expression<int>? lastUpdated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (versionId != null) 'version_id': versionId,
      if (resource != null) 'resource': resource,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResourcesHistoryCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<String>? versionId,
      Value<String>? resource,
      Value<int>? lastUpdated,
      Value<int>? rowid}) {
    return ResourcesHistoryCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      versionId: versionId ?? this.versionId,
      resource: resource ?? this.resource,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (versionId.present) {
      map['version_id'] = Variable<String>(versionId.value);
    }
    if (resource.present) {
      map['resource'] = Variable<String>(resource.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourcesHistoryCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('versionId: $versionId, ')
          ..write('resource: $resource, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StringSearchParametersTable extends StringSearchParameters
    with TableInfo<$StringSearchParametersTable, StringSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StringSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _stringValueMeta =
      const VerificationMeta('stringValue');
  @override
  late final GeneratedColumn<String> stringValue = GeneratedColumn<String>(
      'string_value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        stringValue
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'string_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<StringSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('string_value')) {
      context.handle(
          _stringValueMeta,
          stringValue.isAcceptableOrUnknown(
              data['string_value']!, _stringValueMeta));
    } else if (isInserting) {
      context.missing(_stringValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  StringSearchParameter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StringSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      stringValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}string_value'])!,
    );
  }

  @override
  $StringSearchParametersTable createAlias(String alias) {
    return $StringSearchParametersTable(attachedDatabase, alias);
  }
}

class StringSearchParameter extends DataClass
    implements Insertable<StringSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// Normalized string value for case- and accent-insensitive searches
  final String stringValue;
  const StringSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.stringValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['string_value'] = Variable<String>(stringValue);
    return map;
  }

  StringSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return StringSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      stringValue: Value(stringValue),
    );
  }

  factory StringSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StringSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      stringValue: serializer.fromJson<String>(json['stringValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'stringValue': serializer.toJson<String>(stringValue),
    };
  }

  StringSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          String? stringValue}) =>
      StringSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        stringValue: stringValue ?? this.stringValue,
      );
  StringSearchParameter copyWithCompanion(
      StringSearchParametersCompanion data) {
    return StringSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      stringValue:
          data.stringValue.present ? data.stringValue.value : this.stringValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StringSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('stringValue: $stringValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, stringValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StringSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.stringValue == this.stringValue);
}

class StringSearchParametersCompanion
    extends UpdateCompanion<StringSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String> stringValue;
  final Value<int> rowid;
  const StringSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.stringValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StringSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required String stringValue,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        stringValue = Value(stringValue);
  static Insertable<StringSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? stringValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (stringValue != null) 'string_value': stringValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StringSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String>? stringValue,
      Value<int>? rowid}) {
    return StringSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      stringValue: stringValue ?? this.stringValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (stringValue.present) {
      map['string_value'] = Variable<String>(stringValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StringSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('stringValue: $stringValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TokenSearchParametersTable extends TokenSearchParameters
    with TableInfo<$TokenSearchParametersTable, TokenSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TokenSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _tokenSystemMeta =
      const VerificationMeta('tokenSystem');
  @override
  late final GeneratedColumn<String> tokenSystem = GeneratedColumn<String>(
      'token_system', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tokenValueMeta =
      const VerificationMeta('tokenValue');
  @override
  late final GeneratedColumn<String> tokenValue = GeneratedColumn<String>(
      'token_value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tokenDisplayMeta =
      const VerificationMeta('tokenDisplay');
  @override
  late final GeneratedColumn<String> tokenDisplay = GeneratedColumn<String>(
      'token_display', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        tokenSystem,
        tokenValue,
        tokenDisplay
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'token_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<TokenSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('token_system')) {
      context.handle(
          _tokenSystemMeta,
          tokenSystem.isAcceptableOrUnknown(
              data['token_system']!, _tokenSystemMeta));
    }
    if (data.containsKey('token_value')) {
      context.handle(
          _tokenValueMeta,
          tokenValue.isAcceptableOrUnknown(
              data['token_value']!, _tokenValueMeta));
    } else if (isInserting) {
      context.missing(_tokenValueMeta);
    }
    if (data.containsKey('token_display')) {
      context.handle(
          _tokenDisplayMeta,
          tokenDisplay.isAcceptableOrUnknown(
              data['token_display']!, _tokenDisplayMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  TokenSearchParameter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TokenSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      tokenSystem: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token_system']),
      tokenValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token_value'])!,
      tokenDisplay: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token_display']),
    );
  }

  @override
  $TokenSearchParametersTable createAlias(String alias) {
    return $TokenSearchParametersTable(attachedDatabase, alias);
  }
}

class TokenSearchParameter extends DataClass
    implements Insertable<TokenSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// The system part of the token; may be null if not provided
  final String? tokenSystem;

  /// The value (code or identifier)
  final String tokenValue;

  /// Optional display value for human-readable searches
  final String? tokenDisplay;
  const TokenSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      this.tokenSystem,
      required this.tokenValue,
      this.tokenDisplay});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    if (!nullToAbsent || tokenSystem != null) {
      map['token_system'] = Variable<String>(tokenSystem);
    }
    map['token_value'] = Variable<String>(tokenValue);
    if (!nullToAbsent || tokenDisplay != null) {
      map['token_display'] = Variable<String>(tokenDisplay);
    }
    return map;
  }

  TokenSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return TokenSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      tokenSystem: tokenSystem == null && nullToAbsent
          ? const Value.absent()
          : Value(tokenSystem),
      tokenValue: Value(tokenValue),
      tokenDisplay: tokenDisplay == null && nullToAbsent
          ? const Value.absent()
          : Value(tokenDisplay),
    );
  }

  factory TokenSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TokenSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      tokenSystem: serializer.fromJson<String?>(json['tokenSystem']),
      tokenValue: serializer.fromJson<String>(json['tokenValue']),
      tokenDisplay: serializer.fromJson<String?>(json['tokenDisplay']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'tokenSystem': serializer.toJson<String?>(tokenSystem),
      'tokenValue': serializer.toJson<String>(tokenValue),
      'tokenDisplay': serializer.toJson<String?>(tokenDisplay),
    };
  }

  TokenSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          Value<String?> tokenSystem = const Value.absent(),
          String? tokenValue,
          Value<String?> tokenDisplay = const Value.absent()}) =>
      TokenSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        tokenSystem: tokenSystem.present ? tokenSystem.value : this.tokenSystem,
        tokenValue: tokenValue ?? this.tokenValue,
        tokenDisplay:
            tokenDisplay.present ? tokenDisplay.value : this.tokenDisplay,
      );
  TokenSearchParameter copyWithCompanion(TokenSearchParametersCompanion data) {
    return TokenSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      tokenSystem:
          data.tokenSystem.present ? data.tokenSystem.value : this.tokenSystem,
      tokenValue:
          data.tokenValue.present ? data.tokenValue.value : this.tokenValue,
      tokenDisplay: data.tokenDisplay.present
          ? data.tokenDisplay.value
          : this.tokenDisplay,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TokenSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('tokenSystem: $tokenSystem, ')
          ..write('tokenValue: $tokenValue, ')
          ..write('tokenDisplay: $tokenDisplay')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, tokenSystem, tokenValue, tokenDisplay);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TokenSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.tokenSystem == this.tokenSystem &&
          other.tokenValue == this.tokenValue &&
          other.tokenDisplay == this.tokenDisplay);
}

class TokenSearchParametersCompanion
    extends UpdateCompanion<TokenSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String?> tokenSystem;
  final Value<String> tokenValue;
  final Value<String?> tokenDisplay;
  final Value<int> rowid;
  const TokenSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.tokenSystem = const Value.absent(),
    this.tokenValue = const Value.absent(),
    this.tokenDisplay = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TokenSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    this.tokenSystem = const Value.absent(),
    required String tokenValue,
    this.tokenDisplay = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        tokenValue = Value(tokenValue);
  static Insertable<TokenSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? tokenSystem,
    Expression<String>? tokenValue,
    Expression<String>? tokenDisplay,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (tokenSystem != null) 'token_system': tokenSystem,
      if (tokenValue != null) 'token_value': tokenValue,
      if (tokenDisplay != null) 'token_display': tokenDisplay,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TokenSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String?>? tokenSystem,
      Value<String>? tokenValue,
      Value<String?>? tokenDisplay,
      Value<int>? rowid}) {
    return TokenSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      tokenSystem: tokenSystem ?? this.tokenSystem,
      tokenValue: tokenValue ?? this.tokenValue,
      tokenDisplay: tokenDisplay ?? this.tokenDisplay,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (tokenSystem.present) {
      map['token_system'] = Variable<String>(tokenSystem.value);
    }
    if (tokenValue.present) {
      map['token_value'] = Variable<String>(tokenValue.value);
    }
    if (tokenDisplay.present) {
      map['token_display'] = Variable<String>(tokenDisplay.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TokenSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('tokenSystem: $tokenSystem, ')
          ..write('tokenValue: $tokenValue, ')
          ..write('tokenDisplay: $tokenDisplay, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReferenceSearchParametersTable extends ReferenceSearchParameters
    with TableInfo<$ReferenceSearchParametersTable, ReferenceSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReferenceSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _referenceValueMeta =
      const VerificationMeta('referenceValue');
  @override
  late final GeneratedColumn<String> referenceValue = GeneratedColumn<String>(
      'reference_value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceResourceTypeMeta =
      const VerificationMeta('referenceResourceType');
  @override
  late final GeneratedColumn<String> referenceResourceType =
      GeneratedColumn<String>('reference_resource_type', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceIdPartMeta =
      const VerificationMeta('referenceIdPart');
  @override
  late final GeneratedColumn<String> referenceIdPart = GeneratedColumn<String>(
      'reference_id_part', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceVersionMeta =
      const VerificationMeta('referenceVersion');
  @override
  late final GeneratedColumn<String> referenceVersion = GeneratedColumn<String>(
      'reference_version', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceBaseUrlMeta =
      const VerificationMeta('referenceBaseUrl');
  @override
  late final GeneratedColumn<String> referenceBaseUrl = GeneratedColumn<String>(
      'reference_base_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _identifierSystemMeta =
      const VerificationMeta('identifierSystem');
  @override
  late final GeneratedColumn<String> identifierSystem = GeneratedColumn<String>(
      'identifier_system', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _identifierValueMeta =
      const VerificationMeta('identifierValue');
  @override
  late final GeneratedColumn<String> identifierValue = GeneratedColumn<String>(
      'identifier_value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        referenceValue,
        referenceResourceType,
        referenceIdPart,
        referenceVersion,
        referenceBaseUrl,
        identifierSystem,
        identifierValue
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reference_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<ReferenceSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('reference_value')) {
      context.handle(
          _referenceValueMeta,
          referenceValue.isAcceptableOrUnknown(
              data['reference_value']!, _referenceValueMeta));
    }
    if (data.containsKey('reference_resource_type')) {
      context.handle(
          _referenceResourceTypeMeta,
          referenceResourceType.isAcceptableOrUnknown(
              data['reference_resource_type']!, _referenceResourceTypeMeta));
    }
    if (data.containsKey('reference_id_part')) {
      context.handle(
          _referenceIdPartMeta,
          referenceIdPart.isAcceptableOrUnknown(
              data['reference_id_part']!, _referenceIdPartMeta));
    }
    if (data.containsKey('reference_version')) {
      context.handle(
          _referenceVersionMeta,
          referenceVersion.isAcceptableOrUnknown(
              data['reference_version']!, _referenceVersionMeta));
    }
    if (data.containsKey('reference_base_url')) {
      context.handle(
          _referenceBaseUrlMeta,
          referenceBaseUrl.isAcceptableOrUnknown(
              data['reference_base_url']!, _referenceBaseUrlMeta));
    }
    if (data.containsKey('identifier_system')) {
      context.handle(
          _identifierSystemMeta,
          identifierSystem.isAcceptableOrUnknown(
              data['identifier_system']!, _identifierSystemMeta));
    }
    if (data.containsKey('identifier_value')) {
      context.handle(
          _identifierValueMeta,
          identifierValue.isAcceptableOrUnknown(
              data['identifier_value']!, _identifierValueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  ReferenceSearchParameter map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReferenceSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      referenceValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference_value']),
      referenceResourceType: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}reference_resource_type']),
      referenceIdPart: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reference_id_part']),
      referenceVersion: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reference_version']),
      referenceBaseUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reference_base_url']),
      identifierSystem: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}identifier_system']),
      identifierValue: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}identifier_value']),
    );
  }

  @override
  $ReferenceSearchParametersTable createAlias(String alias) {
    return $ReferenceSearchParametersTable(attachedDatabase, alias);
  }
}

class ReferenceSearchParameter extends DataClass
    implements Insertable<ReferenceSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// Original reference string as it appears in the resource.
  /// Nullable for identifier-only references (no URL, just identifier).
  final String? referenceValue;

  /// Parsed target resource type (e.g. 'Patient')
  final String? referenceResourceType;

  /// Parsed target resource id
  final String? referenceIdPart;

  /// Parsed version from versioned references
  final String? referenceVersion;

  /// Parsed base URL for absolute references
  final String? referenceBaseUrl;

  /// Identifier system for identifier-based references
  final String? identifierSystem;

  /// Identifier value for identifier-based references
  final String? identifierValue;
  const ReferenceSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      this.referenceValue,
      this.referenceResourceType,
      this.referenceIdPart,
      this.referenceVersion,
      this.referenceBaseUrl,
      this.identifierSystem,
      this.identifierValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    if (!nullToAbsent || referenceValue != null) {
      map['reference_value'] = Variable<String>(referenceValue);
    }
    if (!nullToAbsent || referenceResourceType != null) {
      map['reference_resource_type'] = Variable<String>(referenceResourceType);
    }
    if (!nullToAbsent || referenceIdPart != null) {
      map['reference_id_part'] = Variable<String>(referenceIdPart);
    }
    if (!nullToAbsent || referenceVersion != null) {
      map['reference_version'] = Variable<String>(referenceVersion);
    }
    if (!nullToAbsent || referenceBaseUrl != null) {
      map['reference_base_url'] = Variable<String>(referenceBaseUrl);
    }
    if (!nullToAbsent || identifierSystem != null) {
      map['identifier_system'] = Variable<String>(identifierSystem);
    }
    if (!nullToAbsent || identifierValue != null) {
      map['identifier_value'] = Variable<String>(identifierValue);
    }
    return map;
  }

  ReferenceSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return ReferenceSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      referenceValue: referenceValue == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceValue),
      referenceResourceType: referenceResourceType == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceResourceType),
      referenceIdPart: referenceIdPart == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceIdPart),
      referenceVersion: referenceVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceVersion),
      referenceBaseUrl: referenceBaseUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceBaseUrl),
      identifierSystem: identifierSystem == null && nullToAbsent
          ? const Value.absent()
          : Value(identifierSystem),
      identifierValue: identifierValue == null && nullToAbsent
          ? const Value.absent()
          : Value(identifierValue),
    );
  }

  factory ReferenceSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReferenceSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      referenceValue: serializer.fromJson<String?>(json['referenceValue']),
      referenceResourceType:
          serializer.fromJson<String?>(json['referenceResourceType']),
      referenceIdPart: serializer.fromJson<String?>(json['referenceIdPart']),
      referenceVersion: serializer.fromJson<String?>(json['referenceVersion']),
      referenceBaseUrl: serializer.fromJson<String?>(json['referenceBaseUrl']),
      identifierSystem: serializer.fromJson<String?>(json['identifierSystem']),
      identifierValue: serializer.fromJson<String?>(json['identifierValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'referenceValue': serializer.toJson<String?>(referenceValue),
      'referenceResourceType':
          serializer.toJson<String?>(referenceResourceType),
      'referenceIdPart': serializer.toJson<String?>(referenceIdPart),
      'referenceVersion': serializer.toJson<String?>(referenceVersion),
      'referenceBaseUrl': serializer.toJson<String?>(referenceBaseUrl),
      'identifierSystem': serializer.toJson<String?>(identifierSystem),
      'identifierValue': serializer.toJson<String?>(identifierValue),
    };
  }

  ReferenceSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          Value<String?> referenceValue = const Value.absent(),
          Value<String?> referenceResourceType = const Value.absent(),
          Value<String?> referenceIdPart = const Value.absent(),
          Value<String?> referenceVersion = const Value.absent(),
          Value<String?> referenceBaseUrl = const Value.absent(),
          Value<String?> identifierSystem = const Value.absent(),
          Value<String?> identifierValue = const Value.absent()}) =>
      ReferenceSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        referenceValue:
            referenceValue.present ? referenceValue.value : this.referenceValue,
        referenceResourceType: referenceResourceType.present
            ? referenceResourceType.value
            : this.referenceResourceType,
        referenceIdPart: referenceIdPart.present
            ? referenceIdPart.value
            : this.referenceIdPart,
        referenceVersion: referenceVersion.present
            ? referenceVersion.value
            : this.referenceVersion,
        referenceBaseUrl: referenceBaseUrl.present
            ? referenceBaseUrl.value
            : this.referenceBaseUrl,
        identifierSystem: identifierSystem.present
            ? identifierSystem.value
            : this.identifierSystem,
        identifierValue: identifierValue.present
            ? identifierValue.value
            : this.identifierValue,
      );
  ReferenceSearchParameter copyWithCompanion(
      ReferenceSearchParametersCompanion data) {
    return ReferenceSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      referenceValue: data.referenceValue.present
          ? data.referenceValue.value
          : this.referenceValue,
      referenceResourceType: data.referenceResourceType.present
          ? data.referenceResourceType.value
          : this.referenceResourceType,
      referenceIdPart: data.referenceIdPart.present
          ? data.referenceIdPart.value
          : this.referenceIdPart,
      referenceVersion: data.referenceVersion.present
          ? data.referenceVersion.value
          : this.referenceVersion,
      referenceBaseUrl: data.referenceBaseUrl.present
          ? data.referenceBaseUrl.value
          : this.referenceBaseUrl,
      identifierSystem: data.identifierSystem.present
          ? data.identifierSystem.value
          : this.identifierSystem,
      identifierValue: data.identifierValue.present
          ? data.identifierValue.value
          : this.identifierValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReferenceSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('referenceValue: $referenceValue, ')
          ..write('referenceResourceType: $referenceResourceType, ')
          ..write('referenceIdPart: $referenceIdPart, ')
          ..write('referenceVersion: $referenceVersion, ')
          ..write('referenceBaseUrl: $referenceBaseUrl, ')
          ..write('identifierSystem: $identifierSystem, ')
          ..write('identifierValue: $identifierValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      resourceType,
      id,
      lastUpdated,
      searchPath,
      searchName,
      paramIndex,
      referenceValue,
      referenceResourceType,
      referenceIdPart,
      referenceVersion,
      referenceBaseUrl,
      identifierSystem,
      identifierValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReferenceSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.referenceValue == this.referenceValue &&
          other.referenceResourceType == this.referenceResourceType &&
          other.referenceIdPart == this.referenceIdPart &&
          other.referenceVersion == this.referenceVersion &&
          other.referenceBaseUrl == this.referenceBaseUrl &&
          other.identifierSystem == this.identifierSystem &&
          other.identifierValue == this.identifierValue);
}

class ReferenceSearchParametersCompanion
    extends UpdateCompanion<ReferenceSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String?> referenceValue;
  final Value<String?> referenceResourceType;
  final Value<String?> referenceIdPart;
  final Value<String?> referenceVersion;
  final Value<String?> referenceBaseUrl;
  final Value<String?> identifierSystem;
  final Value<String?> identifierValue;
  final Value<int> rowid;
  const ReferenceSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.referenceValue = const Value.absent(),
    this.referenceResourceType = const Value.absent(),
    this.referenceIdPart = const Value.absent(),
    this.referenceVersion = const Value.absent(),
    this.referenceBaseUrl = const Value.absent(),
    this.identifierSystem = const Value.absent(),
    this.identifierValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReferenceSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    this.referenceValue = const Value.absent(),
    this.referenceResourceType = const Value.absent(),
    this.referenceIdPart = const Value.absent(),
    this.referenceVersion = const Value.absent(),
    this.referenceBaseUrl = const Value.absent(),
    this.identifierSystem = const Value.absent(),
    this.identifierValue = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex);
  static Insertable<ReferenceSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? referenceValue,
    Expression<String>? referenceResourceType,
    Expression<String>? referenceIdPart,
    Expression<String>? referenceVersion,
    Expression<String>? referenceBaseUrl,
    Expression<String>? identifierSystem,
    Expression<String>? identifierValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (referenceValue != null) 'reference_value': referenceValue,
      if (referenceResourceType != null)
        'reference_resource_type': referenceResourceType,
      if (referenceIdPart != null) 'reference_id_part': referenceIdPart,
      if (referenceVersion != null) 'reference_version': referenceVersion,
      if (referenceBaseUrl != null) 'reference_base_url': referenceBaseUrl,
      if (identifierSystem != null) 'identifier_system': identifierSystem,
      if (identifierValue != null) 'identifier_value': identifierValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReferenceSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String?>? referenceValue,
      Value<String?>? referenceResourceType,
      Value<String?>? referenceIdPart,
      Value<String?>? referenceVersion,
      Value<String?>? referenceBaseUrl,
      Value<String?>? identifierSystem,
      Value<String?>? identifierValue,
      Value<int>? rowid}) {
    return ReferenceSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      referenceValue: referenceValue ?? this.referenceValue,
      referenceResourceType:
          referenceResourceType ?? this.referenceResourceType,
      referenceIdPart: referenceIdPart ?? this.referenceIdPart,
      referenceVersion: referenceVersion ?? this.referenceVersion,
      referenceBaseUrl: referenceBaseUrl ?? this.referenceBaseUrl,
      identifierSystem: identifierSystem ?? this.identifierSystem,
      identifierValue: identifierValue ?? this.identifierValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (referenceValue.present) {
      map['reference_value'] = Variable<String>(referenceValue.value);
    }
    if (referenceResourceType.present) {
      map['reference_resource_type'] =
          Variable<String>(referenceResourceType.value);
    }
    if (referenceIdPart.present) {
      map['reference_id_part'] = Variable<String>(referenceIdPart.value);
    }
    if (referenceVersion.present) {
      map['reference_version'] = Variable<String>(referenceVersion.value);
    }
    if (referenceBaseUrl.present) {
      map['reference_base_url'] = Variable<String>(referenceBaseUrl.value);
    }
    if (identifierSystem.present) {
      map['identifier_system'] = Variable<String>(identifierSystem.value);
    }
    if (identifierValue.present) {
      map['identifier_value'] = Variable<String>(identifierValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReferenceSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('referenceValue: $referenceValue, ')
          ..write('referenceResourceType: $referenceResourceType, ')
          ..write('referenceIdPart: $referenceIdPart, ')
          ..write('referenceVersion: $referenceVersion, ')
          ..write('referenceBaseUrl: $referenceBaseUrl, ')
          ..write('identifierSystem: $identifierSystem, ')
          ..write('identifierValue: $identifierValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DateSearchParametersTable extends DateSearchParameters
    with TableInfo<$DateSearchParametersTable, DateSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DateSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dateStringMeta =
      const VerificationMeta('dateString');
  @override
  late final GeneratedColumn<String> dateString = GeneratedColumn<String>(
      'date_string', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateValueMeta =
      const VerificationMeta('dateValue');
  @override
  late final GeneratedColumn<DateTime> dateValue = GeneratedColumn<DateTime>(
      'date_value', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        dateString,
        dateValue
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'date_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<DateSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('date_string')) {
      context.handle(
          _dateStringMeta,
          dateString.isAcceptableOrUnknown(
              data['date_string']!, _dateStringMeta));
    } else if (isInserting) {
      context.missing(_dateStringMeta);
    }
    if (data.containsKey('date_value')) {
      context.handle(_dateValueMeta,
          dateValue.isAcceptableOrUnknown(data['date_value']!, _dateValueMeta));
    } else if (isInserting) {
      context.missing(_dateValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  DateSearchParameter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DateSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      dateString: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date_string'])!,
      dateValue: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_value'])!,
    );
  }

  @override
  $DateSearchParametersTable createAlias(String alias) {
    return $DateSearchParametersTable(attachedDatabase, alias);
  }
}

class DateSearchParameter extends DataClass
    implements Insertable<DateSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// Original date/dateTime/instant string from the resource
  final String dateString;

  /// Parsed DateTime value for range comparisons
  final DateTime dateValue;
  const DateSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.dateString,
      required this.dateValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['date_string'] = Variable<String>(dateString);
    map['date_value'] = Variable<DateTime>(dateValue);
    return map;
  }

  DateSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return DateSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      dateString: Value(dateString),
      dateValue: Value(dateValue),
    );
  }

  factory DateSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DateSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      dateString: serializer.fromJson<String>(json['dateString']),
      dateValue: serializer.fromJson<DateTime>(json['dateValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'dateString': serializer.toJson<String>(dateString),
      'dateValue': serializer.toJson<DateTime>(dateValue),
    };
  }

  DateSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          String? dateString,
          DateTime? dateValue}) =>
      DateSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        dateString: dateString ?? this.dateString,
        dateValue: dateValue ?? this.dateValue,
      );
  DateSearchParameter copyWithCompanion(DateSearchParametersCompanion data) {
    return DateSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      dateString:
          data.dateString.present ? data.dateString.value : this.dateString,
      dateValue: data.dateValue.present ? data.dateValue.value : this.dateValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DateSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('dateString: $dateString, ')
          ..write('dateValue: $dateValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, dateString, dateValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DateSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.dateString == this.dateString &&
          other.dateValue == this.dateValue);
}

class DateSearchParametersCompanion
    extends UpdateCompanion<DateSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String> dateString;
  final Value<DateTime> dateValue;
  final Value<int> rowid;
  const DateSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.dateString = const Value.absent(),
    this.dateValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DateSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required String dateString,
    required DateTime dateValue,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        dateString = Value(dateString),
        dateValue = Value(dateValue);
  static Insertable<DateSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? dateString,
    Expression<DateTime>? dateValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (dateString != null) 'date_string': dateString,
      if (dateValue != null) 'date_value': dateValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DateSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String>? dateString,
      Value<DateTime>? dateValue,
      Value<int>? rowid}) {
    return DateSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      dateString: dateString ?? this.dateString,
      dateValue: dateValue ?? this.dateValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (dateString.present) {
      map['date_string'] = Variable<String>(dateString.value);
    }
    if (dateValue.present) {
      map['date_value'] = Variable<DateTime>(dateValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DateSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('dateString: $dateString, ')
          ..write('dateValue: $dateValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NumberSearchParametersTable extends NumberSearchParameters
    with TableInfo<$NumberSearchParametersTable, NumberSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NumberSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _numberValueMeta =
      const VerificationMeta('numberValue');
  @override
  late final GeneratedColumn<double> numberValue = GeneratedColumn<double>(
      'number_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        numberValue
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'number_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<NumberSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('number_value')) {
      context.handle(
          _numberValueMeta,
          numberValue.isAcceptableOrUnknown(
              data['number_value']!, _numberValueMeta));
    } else if (isInserting) {
      context.missing(_numberValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  NumberSearchParameter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NumberSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      numberValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}number_value'])!,
    );
  }

  @override
  $NumberSearchParametersTable createAlias(String alias) {
    return $NumberSearchParametersTable(attachedDatabase, alias);
  }
}

class NumberSearchParameter extends DataClass
    implements Insertable<NumberSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// The numeric value extracted from the resource
  final double numberValue;
  const NumberSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.numberValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['number_value'] = Variable<double>(numberValue);
    return map;
  }

  NumberSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return NumberSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      numberValue: Value(numberValue),
    );
  }

  factory NumberSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NumberSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      numberValue: serializer.fromJson<double>(json['numberValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'numberValue': serializer.toJson<double>(numberValue),
    };
  }

  NumberSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          double? numberValue}) =>
      NumberSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        numberValue: numberValue ?? this.numberValue,
      );
  NumberSearchParameter copyWithCompanion(
      NumberSearchParametersCompanion data) {
    return NumberSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      numberValue:
          data.numberValue.present ? data.numberValue.value : this.numberValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NumberSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('numberValue: $numberValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, numberValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NumberSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.numberValue == this.numberValue);
}

class NumberSearchParametersCompanion
    extends UpdateCompanion<NumberSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<double> numberValue;
  final Value<int> rowid;
  const NumberSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.numberValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NumberSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required double numberValue,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        numberValue = Value(numberValue);
  static Insertable<NumberSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<double>? numberValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (numberValue != null) 'number_value': numberValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NumberSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<double>? numberValue,
      Value<int>? rowid}) {
    return NumberSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      numberValue: numberValue ?? this.numberValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (numberValue.present) {
      map['number_value'] = Variable<double>(numberValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NumberSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('numberValue: $numberValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuantitySearchParametersTable extends QuantitySearchParameters
    with TableInfo<$QuantitySearchParametersTable, QuantitySearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuantitySearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _quantityValueMeta =
      const VerificationMeta('quantityValue');
  @override
  late final GeneratedColumn<double> quantityValue = GeneratedColumn<double>(
      'quantity_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _quantityUnitMeta =
      const VerificationMeta('quantityUnit');
  @override
  late final GeneratedColumn<String> quantityUnit = GeneratedColumn<String>(
      'quantity_unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantitySystemMeta =
      const VerificationMeta('quantitySystem');
  @override
  late final GeneratedColumn<String> quantitySystem = GeneratedColumn<String>(
      'quantity_system', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityCodeMeta =
      const VerificationMeta('quantityCode');
  @override
  late final GeneratedColumn<String> quantityCode = GeneratedColumn<String>(
      'quantity_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        quantityValue,
        quantityUnit,
        quantitySystem,
        quantityCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quantity_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<QuantitySearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('quantity_value')) {
      context.handle(
          _quantityValueMeta,
          quantityValue.isAcceptableOrUnknown(
              data['quantity_value']!, _quantityValueMeta));
    } else if (isInserting) {
      context.missing(_quantityValueMeta);
    }
    if (data.containsKey('quantity_unit')) {
      context.handle(
          _quantityUnitMeta,
          quantityUnit.isAcceptableOrUnknown(
              data['quantity_unit']!, _quantityUnitMeta));
    }
    if (data.containsKey('quantity_system')) {
      context.handle(
          _quantitySystemMeta,
          quantitySystem.isAcceptableOrUnknown(
              data['quantity_system']!, _quantitySystemMeta));
    }
    if (data.containsKey('quantity_code')) {
      context.handle(
          _quantityCodeMeta,
          quantityCode.isAcceptableOrUnknown(
              data['quantity_code']!, _quantityCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  QuantitySearchParameter map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuantitySearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      quantityValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity_value'])!,
      quantityUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quantity_unit']),
      quantitySystem: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quantity_system']),
      quantityCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quantity_code']),
    );
  }

  @override
  $QuantitySearchParametersTable createAlias(String alias) {
    return $QuantitySearchParametersTable(attachedDatabase, alias);
  }
}

class QuantitySearchParameter extends DataClass
    implements Insertable<QuantitySearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// The numeric value part of the quantity
  final double quantityValue;

  /// Unit (optional)
  final String? quantityUnit;

  /// Unit system (optional)
  final String? quantitySystem;

  /// Coded representation of the unit (optional)
  final String? quantityCode;
  const QuantitySearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.quantityValue,
      this.quantityUnit,
      this.quantitySystem,
      this.quantityCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['quantity_value'] = Variable<double>(quantityValue);
    if (!nullToAbsent || quantityUnit != null) {
      map['quantity_unit'] = Variable<String>(quantityUnit);
    }
    if (!nullToAbsent || quantitySystem != null) {
      map['quantity_system'] = Variable<String>(quantitySystem);
    }
    if (!nullToAbsent || quantityCode != null) {
      map['quantity_code'] = Variable<String>(quantityCode);
    }
    return map;
  }

  QuantitySearchParametersCompanion toCompanion(bool nullToAbsent) {
    return QuantitySearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      quantityValue: Value(quantityValue),
      quantityUnit: quantityUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityUnit),
      quantitySystem: quantitySystem == null && nullToAbsent
          ? const Value.absent()
          : Value(quantitySystem),
      quantityCode: quantityCode == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityCode),
    );
  }

  factory QuantitySearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuantitySearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      quantityValue: serializer.fromJson<double>(json['quantityValue']),
      quantityUnit: serializer.fromJson<String?>(json['quantityUnit']),
      quantitySystem: serializer.fromJson<String?>(json['quantitySystem']),
      quantityCode: serializer.fromJson<String?>(json['quantityCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'quantityValue': serializer.toJson<double>(quantityValue),
      'quantityUnit': serializer.toJson<String?>(quantityUnit),
      'quantitySystem': serializer.toJson<String?>(quantitySystem),
      'quantityCode': serializer.toJson<String?>(quantityCode),
    };
  }

  QuantitySearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          double? quantityValue,
          Value<String?> quantityUnit = const Value.absent(),
          Value<String?> quantitySystem = const Value.absent(),
          Value<String?> quantityCode = const Value.absent()}) =>
      QuantitySearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        quantityValue: quantityValue ?? this.quantityValue,
        quantityUnit:
            quantityUnit.present ? quantityUnit.value : this.quantityUnit,
        quantitySystem:
            quantitySystem.present ? quantitySystem.value : this.quantitySystem,
        quantityCode:
            quantityCode.present ? quantityCode.value : this.quantityCode,
      );
  QuantitySearchParameter copyWithCompanion(
      QuantitySearchParametersCompanion data) {
    return QuantitySearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      quantityValue: data.quantityValue.present
          ? data.quantityValue.value
          : this.quantityValue,
      quantityUnit: data.quantityUnit.present
          ? data.quantityUnit.value
          : this.quantityUnit,
      quantitySystem: data.quantitySystem.present
          ? data.quantitySystem.value
          : this.quantitySystem,
      quantityCode: data.quantityCode.present
          ? data.quantityCode.value
          : this.quantityCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuantitySearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('quantityValue: $quantityValue, ')
          ..write('quantityUnit: $quantityUnit, ')
          ..write('quantitySystem: $quantitySystem, ')
          ..write('quantityCode: $quantityCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      resourceType,
      id,
      lastUpdated,
      searchPath,
      searchName,
      paramIndex,
      quantityValue,
      quantityUnit,
      quantitySystem,
      quantityCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuantitySearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.quantityValue == this.quantityValue &&
          other.quantityUnit == this.quantityUnit &&
          other.quantitySystem == this.quantitySystem &&
          other.quantityCode == this.quantityCode);
}

class QuantitySearchParametersCompanion
    extends UpdateCompanion<QuantitySearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<double> quantityValue;
  final Value<String?> quantityUnit;
  final Value<String?> quantitySystem;
  final Value<String?> quantityCode;
  final Value<int> rowid;
  const QuantitySearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.quantityValue = const Value.absent(),
    this.quantityUnit = const Value.absent(),
    this.quantitySystem = const Value.absent(),
    this.quantityCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuantitySearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required double quantityValue,
    this.quantityUnit = const Value.absent(),
    this.quantitySystem = const Value.absent(),
    this.quantityCode = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        quantityValue = Value(quantityValue);
  static Insertable<QuantitySearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<double>? quantityValue,
    Expression<String>? quantityUnit,
    Expression<String>? quantitySystem,
    Expression<String>? quantityCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (quantityValue != null) 'quantity_value': quantityValue,
      if (quantityUnit != null) 'quantity_unit': quantityUnit,
      if (quantitySystem != null) 'quantity_system': quantitySystem,
      if (quantityCode != null) 'quantity_code': quantityCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuantitySearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<double>? quantityValue,
      Value<String?>? quantityUnit,
      Value<String?>? quantitySystem,
      Value<String?>? quantityCode,
      Value<int>? rowid}) {
    return QuantitySearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      quantityValue: quantityValue ?? this.quantityValue,
      quantityUnit: quantityUnit ?? this.quantityUnit,
      quantitySystem: quantitySystem ?? this.quantitySystem,
      quantityCode: quantityCode ?? this.quantityCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (quantityValue.present) {
      map['quantity_value'] = Variable<double>(quantityValue.value);
    }
    if (quantityUnit.present) {
      map['quantity_unit'] = Variable<String>(quantityUnit.value);
    }
    if (quantitySystem.present) {
      map['quantity_system'] = Variable<String>(quantitySystem.value);
    }
    if (quantityCode.present) {
      map['quantity_code'] = Variable<String>(quantityCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuantitySearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('quantityValue: $quantityValue, ')
          ..write('quantityUnit: $quantityUnit, ')
          ..write('quantitySystem: $quantitySystem, ')
          ..write('quantityCode: $quantityCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UriSearchParametersTable extends UriSearchParameters
    with TableInfo<$UriSearchParametersTable, UriSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UriSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uriValueMeta =
      const VerificationMeta('uriValue');
  @override
  late final GeneratedColumn<String> uriValue = GeneratedColumn<String>(
      'uri_value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        uriValue
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'uri_search_parameters';
  @override
  VerificationContext validateIntegrity(Insertable<UriSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('uri_value')) {
      context.handle(_uriValueMeta,
          uriValue.isAcceptableOrUnknown(data['uri_value']!, _uriValueMeta));
    } else if (isInserting) {
      context.missing(_uriValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  UriSearchParameter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UriSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      uriValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri_value'])!,
    );
  }

  @override
  $UriSearchParametersTable createAlias(String alias) {
    return $UriSearchParametersTable(attachedDatabase, alias);
  }
}

class UriSearchParameter extends DataClass
    implements Insertable<UriSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// The URI value, stored as text
  final String uriValue;
  const UriSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.uriValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['uri_value'] = Variable<String>(uriValue);
    return map;
  }

  UriSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return UriSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      uriValue: Value(uriValue),
    );
  }

  factory UriSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UriSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      uriValue: serializer.fromJson<String>(json['uriValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'uriValue': serializer.toJson<String>(uriValue),
    };
  }

  UriSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          String? uriValue}) =>
      UriSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        uriValue: uriValue ?? this.uriValue,
      );
  UriSearchParameter copyWithCompanion(UriSearchParametersCompanion data) {
    return UriSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      uriValue: data.uriValue.present ? data.uriValue.value : this.uriValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UriSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('uriValue: $uriValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, uriValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UriSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.uriValue == this.uriValue);
}

class UriSearchParametersCompanion extends UpdateCompanion<UriSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String> uriValue;
  final Value<int> rowid;
  const UriSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.uriValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UriSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required String uriValue,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        uriValue = Value(uriValue);
  static Insertable<UriSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? uriValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (uriValue != null) 'uri_value': uriValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UriSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String>? uriValue,
      Value<int>? rowid}) {
    return UriSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      uriValue: uriValue ?? this.uriValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (uriValue.present) {
      map['uri_value'] = Variable<String>(uriValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UriSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('uriValue: $uriValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompositeSearchParametersTable extends CompositeSearchParameters
    with TableInfo<$CompositeSearchParametersTable, CompositeSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompositeSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _component1Meta =
      const VerificationMeta('component1');
  @override
  late final GeneratedColumn<String> component1 = GeneratedColumn<String>(
      'component1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _component2Meta =
      const VerificationMeta('component2');
  @override
  late final GeneratedColumn<String> component2 = GeneratedColumn<String>(
      'component2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        component1,
        component2
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'composite_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<CompositeSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('component1')) {
      context.handle(
          _component1Meta,
          component1.isAcceptableOrUnknown(
              data['component1']!, _component1Meta));
    } else if (isInserting) {
      context.missing(_component1Meta);
    }
    if (data.containsKey('component2')) {
      context.handle(
          _component2Meta,
          component2.isAcceptableOrUnknown(
              data['component2']!, _component2Meta));
    } else if (isInserting) {
      context.missing(_component2Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  CompositeSearchParameter map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompositeSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      component1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}component1'])!,
      component2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}component2'])!,
    );
  }

  @override
  $CompositeSearchParametersTable createAlias(String alias) {
    return $CompositeSearchParametersTable(attachedDatabase, alias);
  }
}

class CompositeSearchParameter extends DataClass
    implements Insertable<CompositeSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// First component of the composite value
  final String component1;

  /// Second component of the composite value
  final String component2;
  const CompositeSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.component1,
      required this.component2});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['component1'] = Variable<String>(component1);
    map['component2'] = Variable<String>(component2);
    return map;
  }

  CompositeSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return CompositeSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      component1: Value(component1),
      component2: Value(component2),
    );
  }

  factory CompositeSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompositeSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      component1: serializer.fromJson<String>(json['component1']),
      component2: serializer.fromJson<String>(json['component2']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'component1': serializer.toJson<String>(component1),
      'component2': serializer.toJson<String>(component2),
    };
  }

  CompositeSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          String? component1,
          String? component2}) =>
      CompositeSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        component1: component1 ?? this.component1,
        component2: component2 ?? this.component2,
      );
  CompositeSearchParameter copyWithCompanion(
      CompositeSearchParametersCompanion data) {
    return CompositeSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      component1:
          data.component1.present ? data.component1.value : this.component1,
      component2:
          data.component2.present ? data.component2.value : this.component2,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompositeSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('component1: $component1, ')
          ..write('component2: $component2')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, component1, component2);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompositeSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.component1 == this.component1 &&
          other.component2 == this.component2);
}

class CompositeSearchParametersCompanion
    extends UpdateCompanion<CompositeSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String> component1;
  final Value<String> component2;
  final Value<int> rowid;
  const CompositeSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.component1 = const Value.absent(),
    this.component2 = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompositeSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required String component1,
    required String component2,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        component1 = Value(component1),
        component2 = Value(component2);
  static Insertable<CompositeSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? component1,
    Expression<String>? component2,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (component1 != null) 'component1': component1,
      if (component2 != null) 'component2': component2,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompositeSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String>? component1,
      Value<String>? component2,
      Value<int>? rowid}) {
    return CompositeSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      component1: component1 ?? this.component1,
      component2: component2 ?? this.component2,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (component1.present) {
      map['component1'] = Variable<String>(component1.value);
    }
    if (component2.present) {
      map['component2'] = Variable<String>(component2.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompositeSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('component1: $component1, ')
          ..write('component2: $component2, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SpecialSearchParametersTable extends SpecialSearchParameters
    with TableInfo<$SpecialSearchParametersTable, SpecialSearchParameter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpecialSearchParametersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _searchPathMeta =
      const VerificationMeta('searchPath');
  @override
  late final GeneratedColumn<String> searchPath = GeneratedColumn<String>(
      'search_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchNameMeta =
      const VerificationMeta('searchName');
  @override
  late final GeneratedColumn<String> searchName = GeneratedColumn<String>(
      'search_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _paramIndexMeta =
      const VerificationMeta('paramIndex');
  @override
  late final GeneratedColumn<int> paramIndex = GeneratedColumn<int>(
      'param_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _specialValueMeta =
      const VerificationMeta('specialValue');
  @override
  late final GeneratedColumn<String> specialValue = GeneratedColumn<String>(
      'special_value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        resourceType,
        id,
        lastUpdated,
        searchPath,
        searchName,
        paramIndex,
        specialValue
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'special_search_parameters';
  @override
  VerificationContext validateIntegrity(
      Insertable<SpecialSearchParameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('search_path')) {
      context.handle(
          _searchPathMeta,
          searchPath.isAcceptableOrUnknown(
              data['search_path']!, _searchPathMeta));
    } else if (isInserting) {
      context.missing(_searchPathMeta);
    }
    if (data.containsKey('search_name')) {
      context.handle(
          _searchNameMeta,
          searchName.isAcceptableOrUnknown(
              data['search_name']!, _searchNameMeta));
    }
    if (data.containsKey('param_index')) {
      context.handle(
          _paramIndexMeta,
          paramIndex.isAcceptableOrUnknown(
              data['param_index']!, _paramIndexMeta));
    } else if (isInserting) {
      context.missing(_paramIndexMeta);
    }
    if (data.containsKey('special_value')) {
      context.handle(
          _specialValueMeta,
          specialValue.isAcceptableOrUnknown(
              data['special_value']!, _specialValueMeta));
    } else if (isInserting) {
      context.missing(_specialValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {resourceType, id, searchPath, paramIndex};
  @override
  SpecialSearchParameter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpecialSearchParameter(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      searchPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_path'])!,
      searchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_name'])!,
      paramIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}param_index'])!,
      specialValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}special_value'])!,
    );
  }

  @override
  $SpecialSearchParametersTable createAlias(String alias) {
    return $SpecialSearchParametersTable(attachedDatabase, alias);
  }
}

class SpecialSearchParameter extends DataClass
    implements Insertable<SpecialSearchParameter> {
  /// FHIR resource type name
  final String resourceType;

  /// Resource logical id
  final String id;

  /// When the resource was last updated
  final int lastUpdated;

  /// FHIRPath expression identifying the source field
  final String searchPath;

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  final String searchName;

  /// Index for multiple values from the same path
  final int paramIndex;

  /// A generic storage column for special search parameters
  final String specialValue;
  const SpecialSearchParameter(
      {required this.resourceType,
      required this.id,
      required this.lastUpdated,
      required this.searchPath,
      required this.searchName,
      required this.paramIndex,
      required this.specialValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['search_path'] = Variable<String>(searchPath);
    map['search_name'] = Variable<String>(searchName);
    map['param_index'] = Variable<int>(paramIndex);
    map['special_value'] = Variable<String>(specialValue);
    return map;
  }

  SpecialSearchParametersCompanion toCompanion(bool nullToAbsent) {
    return SpecialSearchParametersCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      lastUpdated: Value(lastUpdated),
      searchPath: Value(searchPath),
      searchName: Value(searchName),
      paramIndex: Value(paramIndex),
      specialValue: Value(specialValue),
    );
  }

  factory SpecialSearchParameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpecialSearchParameter(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      searchPath: serializer.fromJson<String>(json['searchPath']),
      searchName: serializer.fromJson<String>(json['searchName']),
      paramIndex: serializer.fromJson<int>(json['paramIndex']),
      specialValue: serializer.fromJson<String>(json['specialValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'searchPath': serializer.toJson<String>(searchPath),
      'searchName': serializer.toJson<String>(searchName),
      'paramIndex': serializer.toJson<int>(paramIndex),
      'specialValue': serializer.toJson<String>(specialValue),
    };
  }

  SpecialSearchParameter copyWith(
          {String? resourceType,
          String? id,
          int? lastUpdated,
          String? searchPath,
          String? searchName,
          int? paramIndex,
          String? specialValue}) =>
      SpecialSearchParameter(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        searchPath: searchPath ?? this.searchPath,
        searchName: searchName ?? this.searchName,
        paramIndex: paramIndex ?? this.paramIndex,
        specialValue: specialValue ?? this.specialValue,
      );
  SpecialSearchParameter copyWithCompanion(
      SpecialSearchParametersCompanion data) {
    return SpecialSearchParameter(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      searchPath:
          data.searchPath.present ? data.searchPath.value : this.searchPath,
      searchName:
          data.searchName.present ? data.searchName.value : this.searchName,
      paramIndex:
          data.paramIndex.present ? data.paramIndex.value : this.paramIndex,
      specialValue: data.specialValue.present
          ? data.specialValue.value
          : this.specialValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpecialSearchParameter(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('specialValue: $specialValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(resourceType, id, lastUpdated, searchPath,
      searchName, paramIndex, specialValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpecialSearchParameter &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.lastUpdated == this.lastUpdated &&
          other.searchPath == this.searchPath &&
          other.searchName == this.searchName &&
          other.paramIndex == this.paramIndex &&
          other.specialValue == this.specialValue);
}

class SpecialSearchParametersCompanion
    extends UpdateCompanion<SpecialSearchParameter> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<int> lastUpdated;
  final Value<String> searchPath;
  final Value<String> searchName;
  final Value<int> paramIndex;
  final Value<String> specialValue;
  final Value<int> rowid;
  const SpecialSearchParametersCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.searchPath = const Value.absent(),
    this.searchName = const Value.absent(),
    this.paramIndex = const Value.absent(),
    this.specialValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpecialSearchParametersCompanion.insert({
    required String resourceType,
    required String id,
    required int lastUpdated,
    required String searchPath,
    this.searchName = const Value.absent(),
    required int paramIndex,
    required String specialValue,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        lastUpdated = Value(lastUpdated),
        searchPath = Value(searchPath),
        paramIndex = Value(paramIndex),
        specialValue = Value(specialValue);
  static Insertable<SpecialSearchParameter> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<int>? lastUpdated,
    Expression<String>? searchPath,
    Expression<String>? searchName,
    Expression<int>? paramIndex,
    Expression<String>? specialValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (searchPath != null) 'search_path': searchPath,
      if (searchName != null) 'search_name': searchName,
      if (paramIndex != null) 'param_index': paramIndex,
      if (specialValue != null) 'special_value': specialValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpecialSearchParametersCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<int>? lastUpdated,
      Value<String>? searchPath,
      Value<String>? searchName,
      Value<int>? paramIndex,
      Value<String>? specialValue,
      Value<int>? rowid}) {
    return SpecialSearchParametersCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      searchPath: searchPath ?? this.searchPath,
      searchName: searchName ?? this.searchName,
      paramIndex: paramIndex ?? this.paramIndex,
      specialValue: specialValue ?? this.specialValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (searchPath.present) {
      map['search_path'] = Variable<String>(searchPath.value);
    }
    if (searchName.present) {
      map['search_name'] = Variable<String>(searchName.value);
    }
    if (paramIndex.present) {
      map['param_index'] = Variable<int>(paramIndex.value);
    }
    if (specialValue.present) {
      map['special_value'] = Variable<String>(specialValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpecialSearchParametersCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('searchPath: $searchPath, ')
          ..write('searchName: $searchName, ')
          ..write('paramIndex: $paramIndex, ')
          ..write('specialValue: $specialValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncResourcesTable extends SyncResources
    with TableInfo<$SyncResourcesTable, SyncResource> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncResourcesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _resourceMeta =
      const VerificationMeta('resource');
  @override
  late final GeneratedColumn<String> resource = GeneratedColumn<String>(
      'resource', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<int> lastUpdated = GeneratedColumn<int>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _versionIdMeta =
      const VerificationMeta('versionId');
  @override
  late final GeneratedColumn<String> versionId = GeneratedColumn<String>(
      'version_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [resourceType, id, resource, lastUpdated, versionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_resources';
  @override
  VerificationContext validateIntegrity(Insertable<SyncResource> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('resource')) {
      context.handle(_resourceMeta,
          resource.isAcceptableOrUnknown(data['resource']!, _resourceMeta));
    } else if (isInserting) {
      context.missing(_resourceMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('version_id')) {
      context.handle(_versionIdMeta,
          versionId.isAcceptableOrUnknown(data['version_id']!, _versionIdMeta));
    } else if (isInserting) {
      context.missing(_versionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {resourceType, id, versionId};
  @override
  SyncResource map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncResource(
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      resource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_updated'])!,
      versionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version_id'])!,
    );
  }

  @override
  $SyncResourcesTable createAlias(String alias) {
    return $SyncResourcesTable(attachedDatabase, alias);
  }
}

class SyncResource extends DataClass implements Insertable<SyncResource> {
  /// FHIR resource type name (e.g. 'Patient')
  final String resourceType;

  /// Resource logical id
  final String id;

  /// Full JSON-encoded FHIR resource
  final String resource;

  /// When this version was last updated
  final int lastUpdated;

  /// Version identifier for this snapshot
  final String versionId;
  const SyncResource(
      {required this.resourceType,
      required this.id,
      required this.resource,
      required this.lastUpdated,
      required this.versionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_type'] = Variable<String>(resourceType);
    map['id'] = Variable<String>(id);
    map['resource'] = Variable<String>(resource);
    map['last_updated'] = Variable<int>(lastUpdated);
    map['version_id'] = Variable<String>(versionId);
    return map;
  }

  SyncResourcesCompanion toCompanion(bool nullToAbsent) {
    return SyncResourcesCompanion(
      resourceType: Value(resourceType),
      id: Value(id),
      resource: Value(resource),
      lastUpdated: Value(lastUpdated),
      versionId: Value(versionId),
    );
  }

  factory SyncResource.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncResource(
      resourceType: serializer.fromJson<String>(json['resourceType']),
      id: serializer.fromJson<String>(json['id']),
      resource: serializer.fromJson<String>(json['resource']),
      lastUpdated: serializer.fromJson<int>(json['lastUpdated']),
      versionId: serializer.fromJson<String>(json['versionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceType': serializer.toJson<String>(resourceType),
      'id': serializer.toJson<String>(id),
      'resource': serializer.toJson<String>(resource),
      'lastUpdated': serializer.toJson<int>(lastUpdated),
      'versionId': serializer.toJson<String>(versionId),
    };
  }

  SyncResource copyWith(
          {String? resourceType,
          String? id,
          String? resource,
          int? lastUpdated,
          String? versionId}) =>
      SyncResource(
        resourceType: resourceType ?? this.resourceType,
        id: id ?? this.id,
        resource: resource ?? this.resource,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        versionId: versionId ?? this.versionId,
      );
  SyncResource copyWithCompanion(SyncResourcesCompanion data) {
    return SyncResource(
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      id: data.id.present ? data.id.value : this.id,
      resource: data.resource.present ? data.resource.value : this.resource,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
      versionId: data.versionId.present ? data.versionId.value : this.versionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncResource(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('resource: $resource, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('versionId: $versionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(resourceType, id, resource, lastUpdated, versionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncResource &&
          other.resourceType == this.resourceType &&
          other.id == this.id &&
          other.resource == this.resource &&
          other.lastUpdated == this.lastUpdated &&
          other.versionId == this.versionId);
}

class SyncResourcesCompanion extends UpdateCompanion<SyncResource> {
  final Value<String> resourceType;
  final Value<String> id;
  final Value<String> resource;
  final Value<int> lastUpdated;
  final Value<String> versionId;
  final Value<int> rowid;
  const SyncResourcesCompanion({
    this.resourceType = const Value.absent(),
    this.id = const Value.absent(),
    this.resource = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.versionId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncResourcesCompanion.insert({
    required String resourceType,
    required String id,
    required String resource,
    required int lastUpdated,
    required String versionId,
    this.rowid = const Value.absent(),
  })  : resourceType = Value(resourceType),
        id = Value(id),
        resource = Value(resource),
        lastUpdated = Value(lastUpdated),
        versionId = Value(versionId);
  static Insertable<SyncResource> custom({
    Expression<String>? resourceType,
    Expression<String>? id,
    Expression<String>? resource,
    Expression<int>? lastUpdated,
    Expression<String>? versionId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceType != null) 'resource_type': resourceType,
      if (id != null) 'id': id,
      if (resource != null) 'resource': resource,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (versionId != null) 'version_id': versionId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncResourcesCompanion copyWith(
      {Value<String>? resourceType,
      Value<String>? id,
      Value<String>? resource,
      Value<int>? lastUpdated,
      Value<String>? versionId,
      Value<int>? rowid}) {
    return SyncResourcesCompanion(
      resourceType: resourceType ?? this.resourceType,
      id: id ?? this.id,
      resource: resource ?? this.resource,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      versionId: versionId ?? this.versionId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (resource.present) {
      map['resource'] = Variable<String>(resource.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<int>(lastUpdated.value);
    }
    if (versionId.present) {
      map['version_id'] = Variable<String>(versionId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncResourcesCompanion(')
          ..write('resourceType: $resourceType, ')
          ..write('id: $id, ')
          ..write('resource: $resource, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('versionId: $versionId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CanonicalResourcesTable extends CanonicalResources
    with TableInfo<$CanonicalResourcesTable, CanonicalResource> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CanonicalResourcesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumn<String> resourceType = GeneratedColumn<String>(
      'resource_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _resourceMeta =
      const VerificationMeta('resource');
  @override
  late final GeneratedColumn<String> resource = GeneratedColumn<String>(
      'resource', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [url, resourceType, resource];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'canonical_resources';
  @override
  VerificationContext validateIntegrity(Insertable<CanonicalResource> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('resource_type')) {
      context.handle(
          _resourceTypeMeta,
          resourceType.isAcceptableOrUnknown(
              data['resource_type']!, _resourceTypeMeta));
    } else if (isInserting) {
      context.missing(_resourceTypeMeta);
    }
    if (data.containsKey('resource')) {
      context.handle(_resourceMeta,
          resource.isAcceptableOrUnknown(data['resource']!, _resourceMeta));
    } else if (isInserting) {
      context.missing(_resourceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {url};
  @override
  CanonicalResource map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CanonicalResource(
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      resourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_type'])!,
      resource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource'])!,
    );
  }

  @override
  $CanonicalResourcesTable createAlias(String alias) {
    return $CanonicalResourcesTable(attachedDatabase, alias);
  }
}

class CanonicalResource extends DataClass
    implements Insertable<CanonicalResource> {
  /// Canonical URL as key
  final String url;

  /// FHIR resource type name (e.g. 'StructureDefinition')
  final String resourceType;

  /// JSON blob of the resource
  final String resource;
  const CanonicalResource(
      {required this.url, required this.resourceType, required this.resource});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['url'] = Variable<String>(url);
    map['resource_type'] = Variable<String>(resourceType);
    map['resource'] = Variable<String>(resource);
    return map;
  }

  CanonicalResourcesCompanion toCompanion(bool nullToAbsent) {
    return CanonicalResourcesCompanion(
      url: Value(url),
      resourceType: Value(resourceType),
      resource: Value(resource),
    );
  }

  factory CanonicalResource.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CanonicalResource(
      url: serializer.fromJson<String>(json['url']),
      resourceType: serializer.fromJson<String>(json['resourceType']),
      resource: serializer.fromJson<String>(json['resource']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'url': serializer.toJson<String>(url),
      'resourceType': serializer.toJson<String>(resourceType),
      'resource': serializer.toJson<String>(resource),
    };
  }

  CanonicalResource copyWith(
          {String? url, String? resourceType, String? resource}) =>
      CanonicalResource(
        url: url ?? this.url,
        resourceType: resourceType ?? this.resourceType,
        resource: resource ?? this.resource,
      );
  CanonicalResource copyWithCompanion(CanonicalResourcesCompanion data) {
    return CanonicalResource(
      url: data.url.present ? data.url.value : this.url,
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      resource: data.resource.present ? data.resource.value : this.resource,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CanonicalResource(')
          ..write('url: $url, ')
          ..write('resourceType: $resourceType, ')
          ..write('resource: $resource')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(url, resourceType, resource);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CanonicalResource &&
          other.url == this.url &&
          other.resourceType == this.resourceType &&
          other.resource == this.resource);
}

class CanonicalResourcesCompanion extends UpdateCompanion<CanonicalResource> {
  final Value<String> url;
  final Value<String> resourceType;
  final Value<String> resource;
  final Value<int> rowid;
  const CanonicalResourcesCompanion({
    this.url = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.resource = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CanonicalResourcesCompanion.insert({
    required String url,
    required String resourceType,
    required String resource,
    this.rowid = const Value.absent(),
  })  : url = Value(url),
        resourceType = Value(resourceType),
        resource = Value(resource);
  static Insertable<CanonicalResource> custom({
    Expression<String>? url,
    Expression<String>? resourceType,
    Expression<String>? resource,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (url != null) 'url': url,
      if (resourceType != null) 'resource_type': resourceType,
      if (resource != null) 'resource': resource,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CanonicalResourcesCompanion copyWith(
      {Value<String>? url,
      Value<String>? resourceType,
      Value<String>? resource,
      Value<int>? rowid}) {
    return CanonicalResourcesCompanion(
      url: url ?? this.url,
      resourceType: resourceType ?? this.resourceType,
      resource: resource ?? this.resource,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(resourceType.value);
    }
    if (resource.present) {
      map['resource'] = Variable<String>(resource.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CanonicalResourcesCompanion(')
          ..write('url: $url, ')
          ..write('resourceType: $resourceType, ')
          ..write('resource: $resource, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GeneralStorageTable extends GeneralStorage
    with TableInfo<$GeneralStorageTable, GeneralStorageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GeneralStorageTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'general_storage';
  @override
  VerificationContext validateIntegrity(Insertable<GeneralStorageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GeneralStorageData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeneralStorageData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $GeneralStorageTable createAlias(String alias) {
    return $GeneralStorageTable(attachedDatabase, alias);
  }
}

class GeneralStorageData extends DataClass
    implements Insertable<GeneralStorageData> {
  /// Auto-incrementing primary key
  final int id;

  /// Optional lookup key for named entries
  final String? key;

  /// JSON-encoded value
  final String value;
  const GeneralStorageData({required this.id, this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || key != null) {
      map['key'] = Variable<String>(key);
    }
    map['value'] = Variable<String>(value);
    return map;
  }

  GeneralStorageCompanion toCompanion(bool nullToAbsent) {
    return GeneralStorageCompanion(
      id: Value(id),
      key: key == null && nullToAbsent ? const Value.absent() : Value(key),
      value: Value(value),
    );
  }

  factory GeneralStorageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GeneralStorageData(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String?>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String?>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  GeneralStorageData copyWith(
          {int? id,
          Value<String?> key = const Value.absent(),
          String? value}) =>
      GeneralStorageData(
        id: id ?? this.id,
        key: key.present ? key.value : this.key,
        value: value ?? this.value,
      );
  GeneralStorageData copyWithCompanion(GeneralStorageCompanion data) {
    return GeneralStorageData(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GeneralStorageData(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GeneralStorageData &&
          other.id == this.id &&
          other.key == this.key &&
          other.value == this.value);
}

class GeneralStorageCompanion extends UpdateCompanion<GeneralStorageData> {
  final Value<int> id;
  final Value<String?> key;
  final Value<String> value;
  const GeneralStorageCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.value = const Value.absent(),
  });
  GeneralStorageCompanion.insert({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    required String value,
  }) : value = Value(value);
  static Insertable<GeneralStorageData> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (value != null) 'value': value,
    });
  }

  GeneralStorageCompanion copyWith(
      {Value<int>? id, Value<String?>? key, Value<String>? value}) {
    return GeneralStorageCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeneralStorageCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

abstract class _$FhirDb extends GeneratedDatabase {
  _$FhirDb(QueryExecutor e) : super(e);
  $FhirDbManager get managers => $FhirDbManager(this);
  late final $ResourcesTable resources = $ResourcesTable(this);
  late final $ResourcesHistoryTable resourcesHistory =
      $ResourcesHistoryTable(this);
  late final $StringSearchParametersTable stringSearchParameters =
      $StringSearchParametersTable(this);
  late final $TokenSearchParametersTable tokenSearchParameters =
      $TokenSearchParametersTable(this);
  late final $ReferenceSearchParametersTable referenceSearchParameters =
      $ReferenceSearchParametersTable(this);
  late final $DateSearchParametersTable dateSearchParameters =
      $DateSearchParametersTable(this);
  late final $NumberSearchParametersTable numberSearchParameters =
      $NumberSearchParametersTable(this);
  late final $QuantitySearchParametersTable quantitySearchParameters =
      $QuantitySearchParametersTable(this);
  late final $UriSearchParametersTable uriSearchParameters =
      $UriSearchParametersTable(this);
  late final $CompositeSearchParametersTable compositeSearchParameters =
      $CompositeSearchParametersTable(this);
  late final $SpecialSearchParametersTable specialSearchParameters =
      $SpecialSearchParametersTable(this);
  late final $SyncResourcesTable syncResources = $SyncResourcesTable(this);
  late final $CanonicalResourcesTable canonicalResources =
      $CanonicalResourcesTable(this);
  late final $GeneralStorageTable generalStorage = $GeneralStorageTable(this);
  late final FhirDao fhirDao = FhirDao(this as FhirDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        resources,
        resourcesHistory,
        stringSearchParameters,
        tokenSearchParameters,
        referenceSearchParameters,
        dateSearchParameters,
        numberSearchParameters,
        quantitySearchParameters,
        uriSearchParameters,
        compositeSearchParameters,
        specialSearchParameters,
        syncResources,
        canonicalResources,
        generalStorage
      ];
}

typedef $$ResourcesTableCreateCompanionBuilder = ResourcesCompanion Function({
  required String resourceType,
  required String id,
  required String resource,
  required int lastUpdated,
  Value<int> rowid,
});
typedef $$ResourcesTableUpdateCompanionBuilder = ResourcesCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<String> resource,
  Value<int> lastUpdated,
  Value<int> rowid,
});

class $$ResourcesTableFilterComposer
    extends Composer<_$FhirDb, $ResourcesTable> {
  $$ResourcesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));
}

class $$ResourcesTableOrderingComposer
    extends Composer<_$FhirDb, $ResourcesTable> {
  $$ResourcesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));
}

class $$ResourcesTableAnnotationComposer
    extends Composer<_$FhirDb, $ResourcesTable> {
  $$ResourcesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get resource =>
      $composableBuilder(column: $table.resource, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);
}

class $$ResourcesTableTableManager extends RootTableManager<
    _$FhirDb,
    $ResourcesTable,
    Resource,
    $$ResourcesTableFilterComposer,
    $$ResourcesTableOrderingComposer,
    $$ResourcesTableAnnotationComposer,
    $$ResourcesTableCreateCompanionBuilder,
    $$ResourcesTableUpdateCompanionBuilder,
    (Resource, BaseReferences<_$FhirDb, $ResourcesTable, Resource>),
    Resource,
    PrefetchHooks Function()> {
  $$ResourcesTableTableManager(_$FhirDb db, $ResourcesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResourcesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResourcesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResourcesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<String> resource = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourcesCompanion(
            resourceType: resourceType,
            id: id,
            resource: resource,
            lastUpdated: lastUpdated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required String resource,
            required int lastUpdated,
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourcesCompanion.insert(
            resourceType: resourceType,
            id: id,
            resource: resource,
            lastUpdated: lastUpdated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResourcesTableProcessedTableManager = ProcessedTableManager<
    _$FhirDb,
    $ResourcesTable,
    Resource,
    $$ResourcesTableFilterComposer,
    $$ResourcesTableOrderingComposer,
    $$ResourcesTableAnnotationComposer,
    $$ResourcesTableCreateCompanionBuilder,
    $$ResourcesTableUpdateCompanionBuilder,
    (Resource, BaseReferences<_$FhirDb, $ResourcesTable, Resource>),
    Resource,
    PrefetchHooks Function()>;
typedef $$ResourcesHistoryTableCreateCompanionBuilder
    = ResourcesHistoryCompanion Function({
  required String resourceType,
  required String id,
  required String versionId,
  required String resource,
  required int lastUpdated,
  Value<int> rowid,
});
typedef $$ResourcesHistoryTableUpdateCompanionBuilder
    = ResourcesHistoryCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<String> versionId,
  Value<String> resource,
  Value<int> lastUpdated,
  Value<int> rowid,
});

class $$ResourcesHistoryTableFilterComposer
    extends Composer<_$FhirDb, $ResourcesHistoryTable> {
  $$ResourcesHistoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get versionId => $composableBuilder(
      column: $table.versionId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));
}

class $$ResourcesHistoryTableOrderingComposer
    extends Composer<_$FhirDb, $ResourcesHistoryTable> {
  $$ResourcesHistoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get versionId => $composableBuilder(
      column: $table.versionId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));
}

class $$ResourcesHistoryTableAnnotationComposer
    extends Composer<_$FhirDb, $ResourcesHistoryTable> {
  $$ResourcesHistoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get versionId =>
      $composableBuilder(column: $table.versionId, builder: (column) => column);

  GeneratedColumn<String> get resource =>
      $composableBuilder(column: $table.resource, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);
}

class $$ResourcesHistoryTableTableManager extends RootTableManager<
    _$FhirDb,
    $ResourcesHistoryTable,
    ResourcesHistoryData,
    $$ResourcesHistoryTableFilterComposer,
    $$ResourcesHistoryTableOrderingComposer,
    $$ResourcesHistoryTableAnnotationComposer,
    $$ResourcesHistoryTableCreateCompanionBuilder,
    $$ResourcesHistoryTableUpdateCompanionBuilder,
    (
      ResourcesHistoryData,
      BaseReferences<_$FhirDb, $ResourcesHistoryTable, ResourcesHistoryData>
    ),
    ResourcesHistoryData,
    PrefetchHooks Function()> {
  $$ResourcesHistoryTableTableManager(_$FhirDb db, $ResourcesHistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResourcesHistoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResourcesHistoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResourcesHistoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<String> versionId = const Value.absent(),
            Value<String> resource = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourcesHistoryCompanion(
            resourceType: resourceType,
            id: id,
            versionId: versionId,
            resource: resource,
            lastUpdated: lastUpdated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required String versionId,
            required String resource,
            required int lastUpdated,
            Value<int> rowid = const Value.absent(),
          }) =>
              ResourcesHistoryCompanion.insert(
            resourceType: resourceType,
            id: id,
            versionId: versionId,
            resource: resource,
            lastUpdated: lastUpdated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResourcesHistoryTableProcessedTableManager = ProcessedTableManager<
    _$FhirDb,
    $ResourcesHistoryTable,
    ResourcesHistoryData,
    $$ResourcesHistoryTableFilterComposer,
    $$ResourcesHistoryTableOrderingComposer,
    $$ResourcesHistoryTableAnnotationComposer,
    $$ResourcesHistoryTableCreateCompanionBuilder,
    $$ResourcesHistoryTableUpdateCompanionBuilder,
    (
      ResourcesHistoryData,
      BaseReferences<_$FhirDb, $ResourcesHistoryTable, ResourcesHistoryData>
    ),
    ResourcesHistoryData,
    PrefetchHooks Function()>;
typedef $$StringSearchParametersTableCreateCompanionBuilder
    = StringSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required String stringValue,
  Value<int> rowid,
});
typedef $$StringSearchParametersTableUpdateCompanionBuilder
    = StringSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String> stringValue,
  Value<int> rowid,
});

class $$StringSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $StringSearchParametersTable> {
  $$StringSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get stringValue => $composableBuilder(
      column: $table.stringValue, builder: (column) => ColumnFilters(column));
}

class $$StringSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $StringSearchParametersTable> {
  $$StringSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get stringValue => $composableBuilder(
      column: $table.stringValue, builder: (column) => ColumnOrderings(column));
}

class $$StringSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $StringSearchParametersTable> {
  $$StringSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get stringValue => $composableBuilder(
      column: $table.stringValue, builder: (column) => column);
}

class $$StringSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $StringSearchParametersTable,
    StringSearchParameter,
    $$StringSearchParametersTableFilterComposer,
    $$StringSearchParametersTableOrderingComposer,
    $$StringSearchParametersTableAnnotationComposer,
    $$StringSearchParametersTableCreateCompanionBuilder,
    $$StringSearchParametersTableUpdateCompanionBuilder,
    (
      StringSearchParameter,
      BaseReferences<_$FhirDb, $StringSearchParametersTable,
          StringSearchParameter>
    ),
    StringSearchParameter,
    PrefetchHooks Function()> {
  $$StringSearchParametersTableTableManager(
      _$FhirDb db, $StringSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StringSearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$StringSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StringSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String> stringValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StringSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            stringValue: stringValue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required String stringValue,
            Value<int> rowid = const Value.absent(),
          }) =>
              StringSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            stringValue: stringValue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$StringSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $StringSearchParametersTable,
        StringSearchParameter,
        $$StringSearchParametersTableFilterComposer,
        $$StringSearchParametersTableOrderingComposer,
        $$StringSearchParametersTableAnnotationComposer,
        $$StringSearchParametersTableCreateCompanionBuilder,
        $$StringSearchParametersTableUpdateCompanionBuilder,
        (
          StringSearchParameter,
          BaseReferences<_$FhirDb, $StringSearchParametersTable,
              StringSearchParameter>
        ),
        StringSearchParameter,
        PrefetchHooks Function()>;
typedef $$TokenSearchParametersTableCreateCompanionBuilder
    = TokenSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  Value<String?> tokenSystem,
  required String tokenValue,
  Value<String?> tokenDisplay,
  Value<int> rowid,
});
typedef $$TokenSearchParametersTableUpdateCompanionBuilder
    = TokenSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String?> tokenSystem,
  Value<String> tokenValue,
  Value<String?> tokenDisplay,
  Value<int> rowid,
});

class $$TokenSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $TokenSearchParametersTable> {
  $$TokenSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tokenSystem => $composableBuilder(
      column: $table.tokenSystem, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tokenValue => $composableBuilder(
      column: $table.tokenValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tokenDisplay => $composableBuilder(
      column: $table.tokenDisplay, builder: (column) => ColumnFilters(column));
}

class $$TokenSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $TokenSearchParametersTable> {
  $$TokenSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tokenSystem => $composableBuilder(
      column: $table.tokenSystem, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tokenValue => $composableBuilder(
      column: $table.tokenValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tokenDisplay => $composableBuilder(
      column: $table.tokenDisplay,
      builder: (column) => ColumnOrderings(column));
}

class $$TokenSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $TokenSearchParametersTable> {
  $$TokenSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get tokenSystem => $composableBuilder(
      column: $table.tokenSystem, builder: (column) => column);

  GeneratedColumn<String> get tokenValue => $composableBuilder(
      column: $table.tokenValue, builder: (column) => column);

  GeneratedColumn<String> get tokenDisplay => $composableBuilder(
      column: $table.tokenDisplay, builder: (column) => column);
}

class $$TokenSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $TokenSearchParametersTable,
    TokenSearchParameter,
    $$TokenSearchParametersTableFilterComposer,
    $$TokenSearchParametersTableOrderingComposer,
    $$TokenSearchParametersTableAnnotationComposer,
    $$TokenSearchParametersTableCreateCompanionBuilder,
    $$TokenSearchParametersTableUpdateCompanionBuilder,
    (
      TokenSearchParameter,
      BaseReferences<_$FhirDb, $TokenSearchParametersTable,
          TokenSearchParameter>
    ),
    TokenSearchParameter,
    PrefetchHooks Function()> {
  $$TokenSearchParametersTableTableManager(
      _$FhirDb db, $TokenSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TokenSearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$TokenSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TokenSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String?> tokenSystem = const Value.absent(),
            Value<String> tokenValue = const Value.absent(),
            Value<String?> tokenDisplay = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TokenSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            tokenSystem: tokenSystem,
            tokenValue: tokenValue,
            tokenDisplay: tokenDisplay,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            Value<String?> tokenSystem = const Value.absent(),
            required String tokenValue,
            Value<String?> tokenDisplay = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TokenSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            tokenSystem: tokenSystem,
            tokenValue: tokenValue,
            tokenDisplay: tokenDisplay,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TokenSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $TokenSearchParametersTable,
        TokenSearchParameter,
        $$TokenSearchParametersTableFilterComposer,
        $$TokenSearchParametersTableOrderingComposer,
        $$TokenSearchParametersTableAnnotationComposer,
        $$TokenSearchParametersTableCreateCompanionBuilder,
        $$TokenSearchParametersTableUpdateCompanionBuilder,
        (
          TokenSearchParameter,
          BaseReferences<_$FhirDb, $TokenSearchParametersTable,
              TokenSearchParameter>
        ),
        TokenSearchParameter,
        PrefetchHooks Function()>;
typedef $$ReferenceSearchParametersTableCreateCompanionBuilder
    = ReferenceSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  Value<String?> referenceValue,
  Value<String?> referenceResourceType,
  Value<String?> referenceIdPart,
  Value<String?> referenceVersion,
  Value<String?> referenceBaseUrl,
  Value<String?> identifierSystem,
  Value<String?> identifierValue,
  Value<int> rowid,
});
typedef $$ReferenceSearchParametersTableUpdateCompanionBuilder
    = ReferenceSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String?> referenceValue,
  Value<String?> referenceResourceType,
  Value<String?> referenceIdPart,
  Value<String?> referenceVersion,
  Value<String?> referenceBaseUrl,
  Value<String?> identifierSystem,
  Value<String?> identifierValue,
  Value<int> rowid,
});

class $$ReferenceSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $ReferenceSearchParametersTable> {
  $$ReferenceSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceValue => $composableBuilder(
      column: $table.referenceValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceResourceType => $composableBuilder(
      column: $table.referenceResourceType,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceIdPart => $composableBuilder(
      column: $table.referenceIdPart,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceVersion => $composableBuilder(
      column: $table.referenceVersion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceBaseUrl => $composableBuilder(
      column: $table.referenceBaseUrl,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get identifierSystem => $composableBuilder(
      column: $table.identifierSystem,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get identifierValue => $composableBuilder(
      column: $table.identifierValue,
      builder: (column) => ColumnFilters(column));
}

class $$ReferenceSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $ReferenceSearchParametersTable> {
  $$ReferenceSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceValue => $composableBuilder(
      column: $table.referenceValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceResourceType => $composableBuilder(
      column: $table.referenceResourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceIdPart => $composableBuilder(
      column: $table.referenceIdPart,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceVersion => $composableBuilder(
      column: $table.referenceVersion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceBaseUrl => $composableBuilder(
      column: $table.referenceBaseUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get identifierSystem => $composableBuilder(
      column: $table.identifierSystem,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get identifierValue => $composableBuilder(
      column: $table.identifierValue,
      builder: (column) => ColumnOrderings(column));
}

class $$ReferenceSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $ReferenceSearchParametersTable> {
  $$ReferenceSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get referenceValue => $composableBuilder(
      column: $table.referenceValue, builder: (column) => column);

  GeneratedColumn<String> get referenceResourceType => $composableBuilder(
      column: $table.referenceResourceType, builder: (column) => column);

  GeneratedColumn<String> get referenceIdPart => $composableBuilder(
      column: $table.referenceIdPart, builder: (column) => column);

  GeneratedColumn<String> get referenceVersion => $composableBuilder(
      column: $table.referenceVersion, builder: (column) => column);

  GeneratedColumn<String> get referenceBaseUrl => $composableBuilder(
      column: $table.referenceBaseUrl, builder: (column) => column);

  GeneratedColumn<String> get identifierSystem => $composableBuilder(
      column: $table.identifierSystem, builder: (column) => column);

  GeneratedColumn<String> get identifierValue => $composableBuilder(
      column: $table.identifierValue, builder: (column) => column);
}

class $$ReferenceSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $ReferenceSearchParametersTable,
    ReferenceSearchParameter,
    $$ReferenceSearchParametersTableFilterComposer,
    $$ReferenceSearchParametersTableOrderingComposer,
    $$ReferenceSearchParametersTableAnnotationComposer,
    $$ReferenceSearchParametersTableCreateCompanionBuilder,
    $$ReferenceSearchParametersTableUpdateCompanionBuilder,
    (
      ReferenceSearchParameter,
      BaseReferences<_$FhirDb, $ReferenceSearchParametersTable,
          ReferenceSearchParameter>
    ),
    ReferenceSearchParameter,
    PrefetchHooks Function()> {
  $$ReferenceSearchParametersTableTableManager(
      _$FhirDb db, $ReferenceSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReferenceSearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$ReferenceSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReferenceSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String?> referenceValue = const Value.absent(),
            Value<String?> referenceResourceType = const Value.absent(),
            Value<String?> referenceIdPart = const Value.absent(),
            Value<String?> referenceVersion = const Value.absent(),
            Value<String?> referenceBaseUrl = const Value.absent(),
            Value<String?> identifierSystem = const Value.absent(),
            Value<String?> identifierValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReferenceSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            referenceValue: referenceValue,
            referenceResourceType: referenceResourceType,
            referenceIdPart: referenceIdPart,
            referenceVersion: referenceVersion,
            referenceBaseUrl: referenceBaseUrl,
            identifierSystem: identifierSystem,
            identifierValue: identifierValue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            Value<String?> referenceValue = const Value.absent(),
            Value<String?> referenceResourceType = const Value.absent(),
            Value<String?> referenceIdPart = const Value.absent(),
            Value<String?> referenceVersion = const Value.absent(),
            Value<String?> referenceBaseUrl = const Value.absent(),
            Value<String?> identifierSystem = const Value.absent(),
            Value<String?> identifierValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReferenceSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            referenceValue: referenceValue,
            referenceResourceType: referenceResourceType,
            referenceIdPart: referenceIdPart,
            referenceVersion: referenceVersion,
            referenceBaseUrl: referenceBaseUrl,
            identifierSystem: identifierSystem,
            identifierValue: identifierValue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReferenceSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $ReferenceSearchParametersTable,
        ReferenceSearchParameter,
        $$ReferenceSearchParametersTableFilterComposer,
        $$ReferenceSearchParametersTableOrderingComposer,
        $$ReferenceSearchParametersTableAnnotationComposer,
        $$ReferenceSearchParametersTableCreateCompanionBuilder,
        $$ReferenceSearchParametersTableUpdateCompanionBuilder,
        (
          ReferenceSearchParameter,
          BaseReferences<_$FhirDb, $ReferenceSearchParametersTable,
              ReferenceSearchParameter>
        ),
        ReferenceSearchParameter,
        PrefetchHooks Function()>;
typedef $$DateSearchParametersTableCreateCompanionBuilder
    = DateSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required String dateString,
  required DateTime dateValue,
  Value<int> rowid,
});
typedef $$DateSearchParametersTableUpdateCompanionBuilder
    = DateSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String> dateString,
  Value<DateTime> dateValue,
  Value<int> rowid,
});

class $$DateSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $DateSearchParametersTable> {
  $$DateSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dateString => $composableBuilder(
      column: $table.dateString, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateValue => $composableBuilder(
      column: $table.dateValue, builder: (column) => ColumnFilters(column));
}

class $$DateSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $DateSearchParametersTable> {
  $$DateSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dateString => $composableBuilder(
      column: $table.dateString, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateValue => $composableBuilder(
      column: $table.dateValue, builder: (column) => ColumnOrderings(column));
}

class $$DateSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $DateSearchParametersTable> {
  $$DateSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get dateString => $composableBuilder(
      column: $table.dateString, builder: (column) => column);

  GeneratedColumn<DateTime> get dateValue =>
      $composableBuilder(column: $table.dateValue, builder: (column) => column);
}

class $$DateSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $DateSearchParametersTable,
    DateSearchParameter,
    $$DateSearchParametersTableFilterComposer,
    $$DateSearchParametersTableOrderingComposer,
    $$DateSearchParametersTableAnnotationComposer,
    $$DateSearchParametersTableCreateCompanionBuilder,
    $$DateSearchParametersTableUpdateCompanionBuilder,
    (
      DateSearchParameter,
      BaseReferences<_$FhirDb, $DateSearchParametersTable, DateSearchParameter>
    ),
    DateSearchParameter,
    PrefetchHooks Function()> {
  $$DateSearchParametersTableTableManager(
      _$FhirDb db, $DateSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DateSearchParametersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DateSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DateSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String> dateString = const Value.absent(),
            Value<DateTime> dateValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DateSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            dateString: dateString,
            dateValue: dateValue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required String dateString,
            required DateTime dateValue,
            Value<int> rowid = const Value.absent(),
          }) =>
              DateSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            dateString: dateString,
            dateValue: dateValue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DateSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $DateSearchParametersTable,
        DateSearchParameter,
        $$DateSearchParametersTableFilterComposer,
        $$DateSearchParametersTableOrderingComposer,
        $$DateSearchParametersTableAnnotationComposer,
        $$DateSearchParametersTableCreateCompanionBuilder,
        $$DateSearchParametersTableUpdateCompanionBuilder,
        (
          DateSearchParameter,
          BaseReferences<_$FhirDb, $DateSearchParametersTable,
              DateSearchParameter>
        ),
        DateSearchParameter,
        PrefetchHooks Function()>;
typedef $$NumberSearchParametersTableCreateCompanionBuilder
    = NumberSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required double numberValue,
  Value<int> rowid,
});
typedef $$NumberSearchParametersTableUpdateCompanionBuilder
    = NumberSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<double> numberValue,
  Value<int> rowid,
});

class $$NumberSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $NumberSearchParametersTable> {
  $$NumberSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get numberValue => $composableBuilder(
      column: $table.numberValue, builder: (column) => ColumnFilters(column));
}

class $$NumberSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $NumberSearchParametersTable> {
  $$NumberSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get numberValue => $composableBuilder(
      column: $table.numberValue, builder: (column) => ColumnOrderings(column));
}

class $$NumberSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $NumberSearchParametersTable> {
  $$NumberSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<double> get numberValue => $composableBuilder(
      column: $table.numberValue, builder: (column) => column);
}

class $$NumberSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $NumberSearchParametersTable,
    NumberSearchParameter,
    $$NumberSearchParametersTableFilterComposer,
    $$NumberSearchParametersTableOrderingComposer,
    $$NumberSearchParametersTableAnnotationComposer,
    $$NumberSearchParametersTableCreateCompanionBuilder,
    $$NumberSearchParametersTableUpdateCompanionBuilder,
    (
      NumberSearchParameter,
      BaseReferences<_$FhirDb, $NumberSearchParametersTable,
          NumberSearchParameter>
    ),
    NumberSearchParameter,
    PrefetchHooks Function()> {
  $$NumberSearchParametersTableTableManager(
      _$FhirDb db, $NumberSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NumberSearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$NumberSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NumberSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<double> numberValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NumberSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            numberValue: numberValue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required double numberValue,
            Value<int> rowid = const Value.absent(),
          }) =>
              NumberSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            numberValue: numberValue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NumberSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $NumberSearchParametersTable,
        NumberSearchParameter,
        $$NumberSearchParametersTableFilterComposer,
        $$NumberSearchParametersTableOrderingComposer,
        $$NumberSearchParametersTableAnnotationComposer,
        $$NumberSearchParametersTableCreateCompanionBuilder,
        $$NumberSearchParametersTableUpdateCompanionBuilder,
        (
          NumberSearchParameter,
          BaseReferences<_$FhirDb, $NumberSearchParametersTable,
              NumberSearchParameter>
        ),
        NumberSearchParameter,
        PrefetchHooks Function()>;
typedef $$QuantitySearchParametersTableCreateCompanionBuilder
    = QuantitySearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required double quantityValue,
  Value<String?> quantityUnit,
  Value<String?> quantitySystem,
  Value<String?> quantityCode,
  Value<int> rowid,
});
typedef $$QuantitySearchParametersTableUpdateCompanionBuilder
    = QuantitySearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<double> quantityValue,
  Value<String?> quantityUnit,
  Value<String?> quantitySystem,
  Value<String?> quantityCode,
  Value<int> rowid,
});

class $$QuantitySearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $QuantitySearchParametersTable> {
  $$QuantitySearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get quantityValue => $composableBuilder(
      column: $table.quantityValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get quantityUnit => $composableBuilder(
      column: $table.quantityUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get quantitySystem => $composableBuilder(
      column: $table.quantitySystem,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get quantityCode => $composableBuilder(
      column: $table.quantityCode, builder: (column) => ColumnFilters(column));
}

class $$QuantitySearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $QuantitySearchParametersTable> {
  $$QuantitySearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get quantityValue => $composableBuilder(
      column: $table.quantityValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get quantityUnit => $composableBuilder(
      column: $table.quantityUnit,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get quantitySystem => $composableBuilder(
      column: $table.quantitySystem,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get quantityCode => $composableBuilder(
      column: $table.quantityCode,
      builder: (column) => ColumnOrderings(column));
}

class $$QuantitySearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $QuantitySearchParametersTable> {
  $$QuantitySearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<double> get quantityValue => $composableBuilder(
      column: $table.quantityValue, builder: (column) => column);

  GeneratedColumn<String> get quantityUnit => $composableBuilder(
      column: $table.quantityUnit, builder: (column) => column);

  GeneratedColumn<String> get quantitySystem => $composableBuilder(
      column: $table.quantitySystem, builder: (column) => column);

  GeneratedColumn<String> get quantityCode => $composableBuilder(
      column: $table.quantityCode, builder: (column) => column);
}

class $$QuantitySearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $QuantitySearchParametersTable,
    QuantitySearchParameter,
    $$QuantitySearchParametersTableFilterComposer,
    $$QuantitySearchParametersTableOrderingComposer,
    $$QuantitySearchParametersTableAnnotationComposer,
    $$QuantitySearchParametersTableCreateCompanionBuilder,
    $$QuantitySearchParametersTableUpdateCompanionBuilder,
    (
      QuantitySearchParameter,
      BaseReferences<_$FhirDb, $QuantitySearchParametersTable,
          QuantitySearchParameter>
    ),
    QuantitySearchParameter,
    PrefetchHooks Function()> {
  $$QuantitySearchParametersTableTableManager(
      _$FhirDb db, $QuantitySearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuantitySearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$QuantitySearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuantitySearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<double> quantityValue = const Value.absent(),
            Value<String?> quantityUnit = const Value.absent(),
            Value<String?> quantitySystem = const Value.absent(),
            Value<String?> quantityCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuantitySearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            quantityValue: quantityValue,
            quantityUnit: quantityUnit,
            quantitySystem: quantitySystem,
            quantityCode: quantityCode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required double quantityValue,
            Value<String?> quantityUnit = const Value.absent(),
            Value<String?> quantitySystem = const Value.absent(),
            Value<String?> quantityCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuantitySearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            quantityValue: quantityValue,
            quantityUnit: quantityUnit,
            quantitySystem: quantitySystem,
            quantityCode: quantityCode,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuantitySearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $QuantitySearchParametersTable,
        QuantitySearchParameter,
        $$QuantitySearchParametersTableFilterComposer,
        $$QuantitySearchParametersTableOrderingComposer,
        $$QuantitySearchParametersTableAnnotationComposer,
        $$QuantitySearchParametersTableCreateCompanionBuilder,
        $$QuantitySearchParametersTableUpdateCompanionBuilder,
        (
          QuantitySearchParameter,
          BaseReferences<_$FhirDb, $QuantitySearchParametersTable,
              QuantitySearchParameter>
        ),
        QuantitySearchParameter,
        PrefetchHooks Function()>;
typedef $$UriSearchParametersTableCreateCompanionBuilder
    = UriSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required String uriValue,
  Value<int> rowid,
});
typedef $$UriSearchParametersTableUpdateCompanionBuilder
    = UriSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String> uriValue,
  Value<int> rowid,
});

class $$UriSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $UriSearchParametersTable> {
  $$UriSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uriValue => $composableBuilder(
      column: $table.uriValue, builder: (column) => ColumnFilters(column));
}

class $$UriSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $UriSearchParametersTable> {
  $$UriSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uriValue => $composableBuilder(
      column: $table.uriValue, builder: (column) => ColumnOrderings(column));
}

class $$UriSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $UriSearchParametersTable> {
  $$UriSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get uriValue =>
      $composableBuilder(column: $table.uriValue, builder: (column) => column);
}

class $$UriSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $UriSearchParametersTable,
    UriSearchParameter,
    $$UriSearchParametersTableFilterComposer,
    $$UriSearchParametersTableOrderingComposer,
    $$UriSearchParametersTableAnnotationComposer,
    $$UriSearchParametersTableCreateCompanionBuilder,
    $$UriSearchParametersTableUpdateCompanionBuilder,
    (
      UriSearchParameter,
      BaseReferences<_$FhirDb, $UriSearchParametersTable, UriSearchParameter>
    ),
    UriSearchParameter,
    PrefetchHooks Function()> {
  $$UriSearchParametersTableTableManager(
      _$FhirDb db, $UriSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UriSearchParametersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UriSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UriSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String> uriValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UriSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            uriValue: uriValue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required String uriValue,
            Value<int> rowid = const Value.absent(),
          }) =>
              UriSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            uriValue: uriValue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UriSearchParametersTableProcessedTableManager = ProcessedTableManager<
    _$FhirDb,
    $UriSearchParametersTable,
    UriSearchParameter,
    $$UriSearchParametersTableFilterComposer,
    $$UriSearchParametersTableOrderingComposer,
    $$UriSearchParametersTableAnnotationComposer,
    $$UriSearchParametersTableCreateCompanionBuilder,
    $$UriSearchParametersTableUpdateCompanionBuilder,
    (
      UriSearchParameter,
      BaseReferences<_$FhirDb, $UriSearchParametersTable, UriSearchParameter>
    ),
    UriSearchParameter,
    PrefetchHooks Function()>;
typedef $$CompositeSearchParametersTableCreateCompanionBuilder
    = CompositeSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required String component1,
  required String component2,
  Value<int> rowid,
});
typedef $$CompositeSearchParametersTableUpdateCompanionBuilder
    = CompositeSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String> component1,
  Value<String> component2,
  Value<int> rowid,
});

class $$CompositeSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $CompositeSearchParametersTable> {
  $$CompositeSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get component1 => $composableBuilder(
      column: $table.component1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get component2 => $composableBuilder(
      column: $table.component2, builder: (column) => ColumnFilters(column));
}

class $$CompositeSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $CompositeSearchParametersTable> {
  $$CompositeSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get component1 => $composableBuilder(
      column: $table.component1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get component2 => $composableBuilder(
      column: $table.component2, builder: (column) => ColumnOrderings(column));
}

class $$CompositeSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $CompositeSearchParametersTable> {
  $$CompositeSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get component1 => $composableBuilder(
      column: $table.component1, builder: (column) => column);

  GeneratedColumn<String> get component2 => $composableBuilder(
      column: $table.component2, builder: (column) => column);
}

class $$CompositeSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $CompositeSearchParametersTable,
    CompositeSearchParameter,
    $$CompositeSearchParametersTableFilterComposer,
    $$CompositeSearchParametersTableOrderingComposer,
    $$CompositeSearchParametersTableAnnotationComposer,
    $$CompositeSearchParametersTableCreateCompanionBuilder,
    $$CompositeSearchParametersTableUpdateCompanionBuilder,
    (
      CompositeSearchParameter,
      BaseReferences<_$FhirDb, $CompositeSearchParametersTable,
          CompositeSearchParameter>
    ),
    CompositeSearchParameter,
    PrefetchHooks Function()> {
  $$CompositeSearchParametersTableTableManager(
      _$FhirDb db, $CompositeSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompositeSearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$CompositeSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CompositeSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String> component1 = const Value.absent(),
            Value<String> component2 = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CompositeSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            component1: component1,
            component2: component2,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required String component1,
            required String component2,
            Value<int> rowid = const Value.absent(),
          }) =>
              CompositeSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            component1: component1,
            component2: component2,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CompositeSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $CompositeSearchParametersTable,
        CompositeSearchParameter,
        $$CompositeSearchParametersTableFilterComposer,
        $$CompositeSearchParametersTableOrderingComposer,
        $$CompositeSearchParametersTableAnnotationComposer,
        $$CompositeSearchParametersTableCreateCompanionBuilder,
        $$CompositeSearchParametersTableUpdateCompanionBuilder,
        (
          CompositeSearchParameter,
          BaseReferences<_$FhirDb, $CompositeSearchParametersTable,
              CompositeSearchParameter>
        ),
        CompositeSearchParameter,
        PrefetchHooks Function()>;
typedef $$SpecialSearchParametersTableCreateCompanionBuilder
    = SpecialSearchParametersCompanion Function({
  required String resourceType,
  required String id,
  required int lastUpdated,
  required String searchPath,
  Value<String> searchName,
  required int paramIndex,
  required String specialValue,
  Value<int> rowid,
});
typedef $$SpecialSearchParametersTableUpdateCompanionBuilder
    = SpecialSearchParametersCompanion Function({
  Value<String> resourceType,
  Value<String> id,
  Value<int> lastUpdated,
  Value<String> searchPath,
  Value<String> searchName,
  Value<int> paramIndex,
  Value<String> specialValue,
  Value<int> rowid,
});

class $$SpecialSearchParametersTableFilterComposer
    extends Composer<_$FhirDb, $SpecialSearchParametersTable> {
  $$SpecialSearchParametersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get specialValue => $composableBuilder(
      column: $table.specialValue, builder: (column) => ColumnFilters(column));
}

class $$SpecialSearchParametersTableOrderingComposer
    extends Composer<_$FhirDb, $SpecialSearchParametersTable> {
  $$SpecialSearchParametersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get specialValue => $composableBuilder(
      column: $table.specialValue,
      builder: (column) => ColumnOrderings(column));
}

class $$SpecialSearchParametersTableAnnotationComposer
    extends Composer<_$FhirDb, $SpecialSearchParametersTable> {
  $$SpecialSearchParametersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get searchPath => $composableBuilder(
      column: $table.searchPath, builder: (column) => column);

  GeneratedColumn<String> get searchName => $composableBuilder(
      column: $table.searchName, builder: (column) => column);

  GeneratedColumn<int> get paramIndex => $composableBuilder(
      column: $table.paramIndex, builder: (column) => column);

  GeneratedColumn<String> get specialValue => $composableBuilder(
      column: $table.specialValue, builder: (column) => column);
}

class $$SpecialSearchParametersTableTableManager extends RootTableManager<
    _$FhirDb,
    $SpecialSearchParametersTable,
    SpecialSearchParameter,
    $$SpecialSearchParametersTableFilterComposer,
    $$SpecialSearchParametersTableOrderingComposer,
    $$SpecialSearchParametersTableAnnotationComposer,
    $$SpecialSearchParametersTableCreateCompanionBuilder,
    $$SpecialSearchParametersTableUpdateCompanionBuilder,
    (
      SpecialSearchParameter,
      BaseReferences<_$FhirDb, $SpecialSearchParametersTable,
          SpecialSearchParameter>
    ),
    SpecialSearchParameter,
    PrefetchHooks Function()> {
  $$SpecialSearchParametersTableTableManager(
      _$FhirDb db, $SpecialSearchParametersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SpecialSearchParametersTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$SpecialSearchParametersTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SpecialSearchParametersTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> searchPath = const Value.absent(),
            Value<String> searchName = const Value.absent(),
            Value<int> paramIndex = const Value.absent(),
            Value<String> specialValue = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SpecialSearchParametersCompanion(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            specialValue: specialValue,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required int lastUpdated,
            required String searchPath,
            Value<String> searchName = const Value.absent(),
            required int paramIndex,
            required String specialValue,
            Value<int> rowid = const Value.absent(),
          }) =>
              SpecialSearchParametersCompanion.insert(
            resourceType: resourceType,
            id: id,
            lastUpdated: lastUpdated,
            searchPath: searchPath,
            searchName: searchName,
            paramIndex: paramIndex,
            specialValue: specialValue,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SpecialSearchParametersTableProcessedTableManager
    = ProcessedTableManager<
        _$FhirDb,
        $SpecialSearchParametersTable,
        SpecialSearchParameter,
        $$SpecialSearchParametersTableFilterComposer,
        $$SpecialSearchParametersTableOrderingComposer,
        $$SpecialSearchParametersTableAnnotationComposer,
        $$SpecialSearchParametersTableCreateCompanionBuilder,
        $$SpecialSearchParametersTableUpdateCompanionBuilder,
        (
          SpecialSearchParameter,
          BaseReferences<_$FhirDb, $SpecialSearchParametersTable,
              SpecialSearchParameter>
        ),
        SpecialSearchParameter,
        PrefetchHooks Function()>;
typedef $$SyncResourcesTableCreateCompanionBuilder = SyncResourcesCompanion
    Function({
  required String resourceType,
  required String id,
  required String resource,
  required int lastUpdated,
  required String versionId,
  Value<int> rowid,
});
typedef $$SyncResourcesTableUpdateCompanionBuilder = SyncResourcesCompanion
    Function({
  Value<String> resourceType,
  Value<String> id,
  Value<String> resource,
  Value<int> lastUpdated,
  Value<String> versionId,
  Value<int> rowid,
});

class $$SyncResourcesTableFilterComposer
    extends Composer<_$FhirDb, $SyncResourcesTable> {
  $$SyncResourcesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get versionId => $composableBuilder(
      column: $table.versionId, builder: (column) => ColumnFilters(column));
}

class $$SyncResourcesTableOrderingComposer
    extends Composer<_$FhirDb, $SyncResourcesTable> {
  $$SyncResourcesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get versionId => $composableBuilder(
      column: $table.versionId, builder: (column) => ColumnOrderings(column));
}

class $$SyncResourcesTableAnnotationComposer
    extends Composer<_$FhirDb, $SyncResourcesTable> {
  $$SyncResourcesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get resource =>
      $composableBuilder(column: $table.resource, builder: (column) => column);

  GeneratedColumn<int> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  GeneratedColumn<String> get versionId =>
      $composableBuilder(column: $table.versionId, builder: (column) => column);
}

class $$SyncResourcesTableTableManager extends RootTableManager<
    _$FhirDb,
    $SyncResourcesTable,
    SyncResource,
    $$SyncResourcesTableFilterComposer,
    $$SyncResourcesTableOrderingComposer,
    $$SyncResourcesTableAnnotationComposer,
    $$SyncResourcesTableCreateCompanionBuilder,
    $$SyncResourcesTableUpdateCompanionBuilder,
    (SyncResource, BaseReferences<_$FhirDb, $SyncResourcesTable, SyncResource>),
    SyncResource,
    PrefetchHooks Function()> {
  $$SyncResourcesTableTableManager(_$FhirDb db, $SyncResourcesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncResourcesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncResourcesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncResourcesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> resourceType = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<String> resource = const Value.absent(),
            Value<int> lastUpdated = const Value.absent(),
            Value<String> versionId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SyncResourcesCompanion(
            resourceType: resourceType,
            id: id,
            resource: resource,
            lastUpdated: lastUpdated,
            versionId: versionId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String resourceType,
            required String id,
            required String resource,
            required int lastUpdated,
            required String versionId,
            Value<int> rowid = const Value.absent(),
          }) =>
              SyncResourcesCompanion.insert(
            resourceType: resourceType,
            id: id,
            resource: resource,
            lastUpdated: lastUpdated,
            versionId: versionId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncResourcesTableProcessedTableManager = ProcessedTableManager<
    _$FhirDb,
    $SyncResourcesTable,
    SyncResource,
    $$SyncResourcesTableFilterComposer,
    $$SyncResourcesTableOrderingComposer,
    $$SyncResourcesTableAnnotationComposer,
    $$SyncResourcesTableCreateCompanionBuilder,
    $$SyncResourcesTableUpdateCompanionBuilder,
    (SyncResource, BaseReferences<_$FhirDb, $SyncResourcesTable, SyncResource>),
    SyncResource,
    PrefetchHooks Function()>;
typedef $$CanonicalResourcesTableCreateCompanionBuilder
    = CanonicalResourcesCompanion Function({
  required String url,
  required String resourceType,
  required String resource,
  Value<int> rowid,
});
typedef $$CanonicalResourcesTableUpdateCompanionBuilder
    = CanonicalResourcesCompanion Function({
  Value<String> url,
  Value<String> resourceType,
  Value<String> resource,
  Value<int> rowid,
});

class $$CanonicalResourcesTableFilterComposer
    extends Composer<_$FhirDb, $CanonicalResourcesTable> {
  $$CanonicalResourcesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnFilters(column));
}

class $$CanonicalResourcesTableOrderingComposer
    extends Composer<_$FhirDb, $CanonicalResourcesTable> {
  $$CanonicalResourcesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resource => $composableBuilder(
      column: $table.resource, builder: (column) => ColumnOrderings(column));
}

class $$CanonicalResourcesTableAnnotationComposer
    extends Composer<_$FhirDb, $CanonicalResourcesTable> {
  $$CanonicalResourcesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get resourceType => $composableBuilder(
      column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get resource =>
      $composableBuilder(column: $table.resource, builder: (column) => column);
}

class $$CanonicalResourcesTableTableManager extends RootTableManager<
    _$FhirDb,
    $CanonicalResourcesTable,
    CanonicalResource,
    $$CanonicalResourcesTableFilterComposer,
    $$CanonicalResourcesTableOrderingComposer,
    $$CanonicalResourcesTableAnnotationComposer,
    $$CanonicalResourcesTableCreateCompanionBuilder,
    $$CanonicalResourcesTableUpdateCompanionBuilder,
    (
      CanonicalResource,
      BaseReferences<_$FhirDb, $CanonicalResourcesTable, CanonicalResource>
    ),
    CanonicalResource,
    PrefetchHooks Function()> {
  $$CanonicalResourcesTableTableManager(
      _$FhirDb db, $CanonicalResourcesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CanonicalResourcesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CanonicalResourcesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CanonicalResourcesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> url = const Value.absent(),
            Value<String> resourceType = const Value.absent(),
            Value<String> resource = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CanonicalResourcesCompanion(
            url: url,
            resourceType: resourceType,
            resource: resource,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String url,
            required String resourceType,
            required String resource,
            Value<int> rowid = const Value.absent(),
          }) =>
              CanonicalResourcesCompanion.insert(
            url: url,
            resourceType: resourceType,
            resource: resource,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CanonicalResourcesTableProcessedTableManager = ProcessedTableManager<
    _$FhirDb,
    $CanonicalResourcesTable,
    CanonicalResource,
    $$CanonicalResourcesTableFilterComposer,
    $$CanonicalResourcesTableOrderingComposer,
    $$CanonicalResourcesTableAnnotationComposer,
    $$CanonicalResourcesTableCreateCompanionBuilder,
    $$CanonicalResourcesTableUpdateCompanionBuilder,
    (
      CanonicalResource,
      BaseReferences<_$FhirDb, $CanonicalResourcesTable, CanonicalResource>
    ),
    CanonicalResource,
    PrefetchHooks Function()>;
typedef $$GeneralStorageTableCreateCompanionBuilder = GeneralStorageCompanion
    Function({
  Value<int> id,
  Value<String?> key,
  required String value,
});
typedef $$GeneralStorageTableUpdateCompanionBuilder = GeneralStorageCompanion
    Function({
  Value<int> id,
  Value<String?> key,
  Value<String> value,
});

class $$GeneralStorageTableFilterComposer
    extends Composer<_$FhirDb, $GeneralStorageTable> {
  $$GeneralStorageTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));
}

class $$GeneralStorageTableOrderingComposer
    extends Composer<_$FhirDb, $GeneralStorageTable> {
  $$GeneralStorageTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));
}

class $$GeneralStorageTableAnnotationComposer
    extends Composer<_$FhirDb, $GeneralStorageTable> {
  $$GeneralStorageTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$GeneralStorageTableTableManager extends RootTableManager<
    _$FhirDb,
    $GeneralStorageTable,
    GeneralStorageData,
    $$GeneralStorageTableFilterComposer,
    $$GeneralStorageTableOrderingComposer,
    $$GeneralStorageTableAnnotationComposer,
    $$GeneralStorageTableCreateCompanionBuilder,
    $$GeneralStorageTableUpdateCompanionBuilder,
    (
      GeneralStorageData,
      BaseReferences<_$FhirDb, $GeneralStorageTable, GeneralStorageData>
    ),
    GeneralStorageData,
    PrefetchHooks Function()> {
  $$GeneralStorageTableTableManager(_$FhirDb db, $GeneralStorageTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GeneralStorageTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GeneralStorageTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GeneralStorageTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> key = const Value.absent(),
            Value<String> value = const Value.absent(),
          }) =>
              GeneralStorageCompanion(
            id: id,
            key: key,
            value: value,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> key = const Value.absent(),
            required String value,
          }) =>
              GeneralStorageCompanion.insert(
            id: id,
            key: key,
            value: value,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GeneralStorageTableProcessedTableManager = ProcessedTableManager<
    _$FhirDb,
    $GeneralStorageTable,
    GeneralStorageData,
    $$GeneralStorageTableFilterComposer,
    $$GeneralStorageTableOrderingComposer,
    $$GeneralStorageTableAnnotationComposer,
    $$GeneralStorageTableCreateCompanionBuilder,
    $$GeneralStorageTableUpdateCompanionBuilder,
    (
      GeneralStorageData,
      BaseReferences<_$FhirDb, $GeneralStorageTable, GeneralStorageData>
    ),
    GeneralStorageData,
    PrefetchHooks Function()>;

class $FhirDbManager {
  final _$FhirDb _db;
  $FhirDbManager(this._db);
  $$ResourcesTableTableManager get resources =>
      $$ResourcesTableTableManager(_db, _db.resources);
  $$ResourcesHistoryTableTableManager get resourcesHistory =>
      $$ResourcesHistoryTableTableManager(_db, _db.resourcesHistory);
  $$StringSearchParametersTableTableManager get stringSearchParameters =>
      $$StringSearchParametersTableTableManager(
          _db, _db.stringSearchParameters);
  $$TokenSearchParametersTableTableManager get tokenSearchParameters =>
      $$TokenSearchParametersTableTableManager(_db, _db.tokenSearchParameters);
  $$ReferenceSearchParametersTableTableManager get referenceSearchParameters =>
      $$ReferenceSearchParametersTableTableManager(
          _db, _db.referenceSearchParameters);
  $$DateSearchParametersTableTableManager get dateSearchParameters =>
      $$DateSearchParametersTableTableManager(_db, _db.dateSearchParameters);
  $$NumberSearchParametersTableTableManager get numberSearchParameters =>
      $$NumberSearchParametersTableTableManager(
          _db, _db.numberSearchParameters);
  $$QuantitySearchParametersTableTableManager get quantitySearchParameters =>
      $$QuantitySearchParametersTableTableManager(
          _db, _db.quantitySearchParameters);
  $$UriSearchParametersTableTableManager get uriSearchParameters =>
      $$UriSearchParametersTableTableManager(_db, _db.uriSearchParameters);
  $$CompositeSearchParametersTableTableManager get compositeSearchParameters =>
      $$CompositeSearchParametersTableTableManager(
          _db, _db.compositeSearchParameters);
  $$SpecialSearchParametersTableTableManager get specialSearchParameters =>
      $$SpecialSearchParametersTableTableManager(
          _db, _db.specialSearchParameters);
  $$SyncResourcesTableTableManager get syncResources =>
      $$SyncResourcesTableTableManager(_db, _db.syncResources);
  $$CanonicalResourcesTableTableManager get canonicalResources =>
      $$CanonicalResourcesTableTableManager(_db, _db.canonicalResources);
  $$GeneralStorageTableTableManager get generalStorage =>
      $$GeneralStorageTableTableManager(_db, _db.generalStorage);
}
