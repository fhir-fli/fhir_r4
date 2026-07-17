import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'range.g.dart';

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Range.fromJson(
    Map<String, dynamic> json,
  ) {
    return Range(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      low: JsonParser.parseObject<Quantity>(
        json,
        'low',
        Quantity.fromJson,
      ),
      high: JsonParser.parseObject<Quantity>(
        json,
        'high',
        Quantity.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'low',
      low,
    );
    addField(
      'high',
      high,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Range clone() => copyWith();

  /// Copy function for [Range]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RangeCopyWith<Range> get copyWith => _$RangeCopyWithImpl<Range>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Range) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    return true;
  }
}
