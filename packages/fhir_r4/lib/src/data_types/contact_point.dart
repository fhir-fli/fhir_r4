import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ContactPoint]
/// Details for all kinds of technology mediated contact points for a
/// person or organization, including telephone, email, etc.
class ContactPoint extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [ContactPoint]

  const ContactPoint({
    super.id,
    super.extension_,
    this.system,
    this.value,
    this.use,
    this.rank,
    this.period,
    super.disallowExtensions,
    super.objectPath = 'ContactPoint',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContactPoint.empty() => const ContactPoint();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContactPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'ContactPoint';
    return ContactPoint(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      system: JsonParser.parsePrimitive<ContactPointSystem>(
        json,
        'system',
        ContactPointSystem.fromJson,
        '$objectPath.system',
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      ),
      use: JsonParser.parsePrimitive<ContactPointUse>(
        json,
        'use',
        ContactPointUse.fromJson,
        '$objectPath.use',
      ),
      rank: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'rank',
        FhirPositiveInt.fromJson,
        '$objectPath.rank',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [ContactPoint]
  /// from a [String] or [YamlMap] object
  factory ContactPoint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContactPoint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContactPoint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContactPoint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContactPoint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContactPoint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContactPoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContactPoint';

  /// [system]
  /// Telecommunications form for contact point - what communications system
  /// is required to make use of the contact.
  final ContactPointSystem? system;

  /// [value]
  /// The actual contact point details, in a form that is meaningful to the
  /// designated communication system (i.e. phone number or email address).
  final FhirString? value;

  /// [use]
  /// Identifies the purpose for the contact point.
  final ContactPointUse? use;

  /// [rank]
  /// Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  /// higher rank values.
  final FhirPositiveInt? rank;

  /// [period]
  /// Time period when the contact point was/is in use.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('system', system);
    addField('value', value);
    addField('use', use);
    addField('rank', rank);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'system',
      'value',
      'use',
      'rank',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'rank':
        if (rank != null) {
          fields.add(rank!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'system':
        {
          if (child is ContactPointSystem) {
            return copyWith(system: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'use':
        {
          if (child is ContactPointUse) {
            return copyWith(use: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rank':
        {
          if (child is FhirPositiveInt) {
            return copyWith(rank: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'system':
        return ['FhirCode'];
      case 'value':
        return ['FhirString'];
      case 'use':
        return ['FhirCode'];
      case 'rank':
        return ['FhirPositiveInt'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContactPoint]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContactPoint createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'system':
        {
          return copyWith(system: ContactPointSystem.empty());
        }
      case 'value':
        {
          return copyWith(value: FhirString.empty());
        }
      case 'use':
        {
          return copyWith(use: ContactPointUse.empty());
        }
      case 'rank':
        {
          return copyWith(rank: FhirPositiveInt.empty());
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContactPoint clear({
    bool id = false,
    bool extension_ = false,
    bool system = false,
    bool value = false,
    bool use = false,
    bool rank = false,
    bool period = false,
  }) {
    return ContactPoint(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      system: system ? null : this.system,
      value: value ? null : this.value,
      use: use ? null : this.use,
      rank: rank ? null : this.rank,
      period: period ? null : this.period,
    );
  }

  @override
  ContactPoint clone() => throw UnimplementedError();
  @override
  ContactPoint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    ContactPointSystem? system,
    FhirString? value,
    ContactPointUse? use,
    FhirPositiveInt? rank,
    Period? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return ContactPoint(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      system: system?.copyWith(
            objectPath: '$newObjectPath.system',
          ) ??
          this.system,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      rank: rank?.copyWith(
            objectPath: '$newObjectPath.rank',
          ) ??
          this.rank,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContactPoint) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(system, o.system)) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(use, o.use)) {
      return false;
    }
    if (!equalsDeepWithNull(rank, o.rank)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
  }
}
