import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Identifier]
/// An identifier - identifies some entity uniquely and unambiguously.
/// Typically this is used for business identifiers.
class Identifier extends DataType
    implements
        TargetXCitationRelatesTo,
        TargetXCitationRelatesTo1,
        TargetXCompositionRelatesTo,
        TargetXEvidenceReportRelatesTo,
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
  /// [Identifier]

  const Identifier({
    super.id,
    super.extension_,
    this.use,
    this.type,
    this.system,
    this.value,
    this.period,
    this.assigner,
    super.disallowExtensions,
    super.objectPath = 'Identifier',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Identifier.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Identifier';
    return Identifier(
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
      use: JsonParser.parsePrimitive<IdentifierUse>(
        json,
        'use',
        IdentifierUse.fromJson,
        '$objectPath.use',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      system: JsonParser.parsePrimitive<FhirUri>(
        json,
        'system',
        FhirUri.fromJson,
        '$objectPath.system',
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      assigner: JsonParser.parseObject<Reference>(
        json,
        'assigner',
        Reference.fromJson,
        '$objectPath.assigner',
      ),
    );
  }

  /// Deserialize [Identifier]
  /// from a [String] or [YamlMap] object
  factory Identifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Identifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Identifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Identifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Identifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Identifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Identifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Identifier';

  /// [use]
  /// The purpose of this identifier.
  final IdentifierUse? use;

  /// [type]
  /// A coded type for the identifier that can be used to determine which
  /// identifier to use for a specific purpose.
  final CodeableConcept? type;

  /// [system]
  /// Establishes the namespace for the value - that is, a URL that describes
  /// a set values that are unique.
  final FhirUri? system;

  /// [value]
  /// The portion of the identifier typically relevant to the user and which
  /// is unique within the context of the system.
  final FhirString? value;

  /// [period]
  /// Time period during which identifier is/was valid for use.
  final Period? period;

  /// [assigner]
  /// Organization that issued/manages the identifier.
  final Reference? assigner;
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
    addField('use', use);
    addField('type', type);
    addField('system', system);
    addField('value', value);
    addField('period', period);
    addField('assigner', assigner);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'use',
      'type',
      'system',
      'value',
      'period',
      'assigner',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'assigner':
        if (assigner != null) {
          fields.add(assigner!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Identifier clone() => throw UnimplementedError();
  @override
  Identifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    IdentifierUse? use,
    CodeableConcept? type,
    FhirUri? system,
    FhirString? value,
    Period? period,
    Reference? assigner,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Identifier(
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
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      system: system?.copyWith(
            objectPath: '$newObjectPath.system',
          ) ??
          this.system,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      assigner: assigner?.copyWith(
            objectPath: '$newObjectPath.assigner',
          ) ??
          this.assigner,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Identifier) {
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
    if (!equalsDeepWithNull(use, o.use)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(system, o.system)) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(assigner, o.assigner)) {
      return false;
    }
    return true;
  }
}
