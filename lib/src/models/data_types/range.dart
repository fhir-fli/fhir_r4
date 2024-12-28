import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Range]
/// A set of ordered Quantities defined by a low and high limit.
class Range extends DataType
    implements
        TimingXActivityDefinition,
        OnsetXAllergyIntolerance,
        DurationXClinicalUseDefinitionIndication,
        OnsetXCondition,
        AbatementXCondition,
        ValueXDeviceRequestParameter,
        ValueXEvidenceReportCharacteristic,
        ValueXEvidenceVariableCategory,
        AgeXFamilyMemberHistory,
        DeceasedXFamilyMemberHistory,
        OnsetXFamilyMemberHistoryCondition,
        DetailXGoalTarget,
        ValueXGroupCharacteristic,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        DetailXPlanDefinitionTarget,
        TimingXPlanDefinitionAction,
        OffsetXPlanDefinitionRelatedAction,
        PerformedXProcedure,
        TimingXRequestGroupAction,
        OffsetXRequestGroupRelatedAction,
        ProbabilityXRiskAssessmentPrediction,
        WhenXRiskAssessmentPrediction,
        QuantityXServiceRequest,
        DefaultValueXStructureMapSource,
        ValueXSupplyRequestParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        DoseXDosageDoseAndRate,
        RateXDosageDoseAndRate,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        AgeXPopulation,
        BoundsXTimingRepeat,
        ValueXUsageContext {
  /// Primary constructor for
  /// [Range]

  const Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
    super.disallowExtensions,
    super.objectPath = 'Range',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Range.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Range';
    return Range(
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
      low: JsonParser.parseObject<Quantity>(
        json,
        'low',
        Quantity.fromJson,
        '$objectPath.low',
      ),
      high: JsonParser.parseObject<Quantity>(
        json,
        'high',
        Quantity.fromJson,
        '$objectPath.high',
      ),
    );
  }

  /// Deserialize [Range]
  /// from a [String] or [YamlMap] object
  factory Range.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Range.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Range.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Range '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Range]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Range.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Range.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Range';

  /// [low]
  /// The low limit. The boundary is inclusive.
  final Quantity? low;

  /// [high]
  /// The high limit. The boundary is inclusive.
  final Quantity? high;
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
    addField('low', low);
    addField('high', high);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'low',
      'high',
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
      case 'low':
        if (low != null) {
          fields.add(low!);
        }
      case 'high':
        if (high != null) {
          fields.add(high!);
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
  Range clone() => throw UnimplementedError();
  @override
  Range copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? low,
    Quantity? high,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Range(
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
      low: low?.copyWith(
            objectPath: '$newObjectPath.low',
          ) ??
          this.low,
      high: high?.copyWith(
            objectPath: '$newObjectPath.high',
          ) ??
          this.high,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Range) {
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
    if (!equalsDeepWithNull(low, o.low)) {
      return false;
    }
    if (!equalsDeepWithNull(high, o.high)) {
      return false;
    }
    return true;
  }
}
