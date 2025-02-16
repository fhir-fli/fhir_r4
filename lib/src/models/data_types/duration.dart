import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirDuration]
/// A length of time.
class FhirDuration extends Quantity
    implements
        TimingXActivityDefinition,
        DueXGoalTarget,
        PeriodXPackagedProductDefinitionShelfLifeStorage,
        ValueXParametersParameter,
        TimingXPlanDefinitionAction,
        OffsetXPlanDefinitionRelatedAction,
        TimingXRequestGroupAction,
        OffsetXRequestGroupRelatedAction,
        StudyEffectiveXResearchElementDefinitionCharacteristic,
        ParticipantEffectiveXResearchElementDefinitionCharacteristic,
        FastingStatusXSpecimenCollection,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXDataRequirementDateFilter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        BoundsXTimingRepeat {
  /// Primary constructor for
  /// [FhirDuration]

  const FhirDuration({
    super.id,
    super.extension_,
    super.value,
    super.comparator,
    super.unit,
    super.system,
    super.code,
    super.disallowExtensions,
    super.objectPath = 'FhirDuration',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory FhirDuration.empty() => const FhirDuration();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirDuration.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirDuration';
    return FhirDuration(
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
      value: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'value',
        FhirDecimal.fromJson,
        '$objectPath.value',
      ),
      comparator: JsonParser.parsePrimitive<QuantityComparator>(
        json,
        'comparator',
        QuantityComparator.fromJson,
        '$objectPath.comparator',
      ),
      unit: JsonParser.parsePrimitive<FhirString>(
        json,
        'unit',
        FhirString.fromJson,
        '$objectPath.unit',
      ),
      system: JsonParser.parsePrimitive<FhirUri>(
        json,
        'system',
        FhirUri.fromJson,
        '$objectPath.system',
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [FhirDuration]
  /// from a [String] or [YamlMap] object
  factory FhirDuration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirDuration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirDuration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirDuration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirDuration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirDuration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirDuration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Duration';

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
    addField('value', value);
    addField('comparator', comparator);
    addField('unit', unit);
    addField('system', system);
    addField('code', code);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'value',
      'comparator',
      'unit',
      'system',
      'code',
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
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
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
  FhirDuration clone() => throw UnimplementedError();
  @override
  FhirDuration copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    QuantityComparator? comparator,
    FhirString? unit,
    FhirUri? system,
    FhirCode? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return FhirDuration(
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
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      comparator: comparator?.copyWith(
            objectPath: '$newObjectPath.comparator',
          ) ??
          this.comparator,
      unit: unit?.copyWith(
            objectPath: '$newObjectPath.unit',
          ) ??
          this.unit,
      system: system?.copyWith(
            objectPath: '$newObjectPath.system',
          ) ??
          this.system,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FhirDuration) {
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
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(comparator, o.comparator)) {
      return false;
    }
    if (!equalsDeepWithNull(unit, o.unit)) {
      return false;
    }
    if (!equalsDeepWithNull(system, o.system)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    return true;
  }
}
