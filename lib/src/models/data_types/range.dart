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
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
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
    if (json is Map<String, Object?>) {
      return Range.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  @override
  Range clone() => throw UnimplementedError();
  @override
  Range copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? low,
    Quantity? high,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Range(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      low: low ?? this.low,
      high: high ?? this.high,
    );
  }
}
