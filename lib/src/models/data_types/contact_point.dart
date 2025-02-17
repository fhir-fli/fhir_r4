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
