import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Range, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [RangeBuilder]
/// A set of ordered Quantities defined by a low and high limit.
class RangeBuilder extends DataTypeBuilder
    implements
        TimingXActivityDefinitionBuilder,
        OnsetXAllergyIntoleranceBuilder,
        DurationXClinicalUseDefinitionIndicationBuilder,
        OnsetXConditionBuilder,
        AbatementXConditionBuilder,
        ValueXDeviceRequestParameterBuilder,
        ValueXEvidenceReportCharacteristicBuilder,
        ValueXEvidenceVariableCategoryBuilder,
        AgeXFamilyMemberHistoryBuilder,
        DeceasedXFamilyMemberHistoryBuilder,
        OnsetXFamilyMemberHistoryConditionBuilder,
        DetailXGoalTargetBuilder,
        ValueXGroupCharacteristicBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        DetailXPlanDefinitionTargetBuilder,
        TimingXPlanDefinitionActionBuilder,
        OffsetXPlanDefinitionRelatedActionBuilder,
        PerformedXProcedureBuilder,
        TimingXRequestGroupActionBuilder,
        OffsetXRequestGroupRelatedActionBuilder,
        ProbabilityXRiskAssessmentPredictionBuilder,
        WhenXRiskAssessmentPredictionBuilder,
        QuantityXServiceRequestBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXSupplyRequestParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DoseXDosageDoseAndRateBuilder,
        RateXDosageDoseAndRateBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        AgeXPopulationBuilder,
        BoundsXTimingRepeatBuilder,
        ValueXUsageContextBuilder {
  /// Primary constructor for
  /// [RangeBuilder]

  RangeBuilder({
    super.id,
    super.extension_,
    this.low,
    this.high,
    super.disallowExtensions,
    super.objectPath = 'RangeBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RangeBuilder.empty() => RangeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RangeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Range';
    return RangeBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      low: JsonParser.parseObject<QuantityBuilder>(
        json,
        'low',
        QuantityBuilder.fromJson,
        '$objectPath.low',
      ),
      high: JsonParser.parseObject<QuantityBuilder>(
        json,
        'high',
        QuantityBuilder.fromJson,
        '$objectPath.high',
      ),
    );
  }

  /// Deserialize [RangeBuilder]
  /// from a [String] or [YamlMap] object
  factory RangeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RangeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RangeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RangeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RangeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RangeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RangeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Range';

  /// [low]
  /// The low limit. The boundary is inclusive.
  QuantityBuilder? low;

  /// [high]
  /// The high limit. The boundary is inclusive.
  QuantityBuilder? high;

  /// Converts a [RangeBuilder]
  /// to [Range]
  @override
  Range build() => Range.fromJson(toJson());

  /// Converts a [RangeBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'low':
        {
          if (child is QuantityBuilder) {
            low = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'high':
        {
          if (child is QuantityBuilder) {
            high = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'low':
        return ['QuantityBuilder'];
      case 'high':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RangeBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'low':
        {
          low = QuantityBuilder.empty();
          return;
        }
      case 'high':
        {
          high = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RangeBuilder clone() => throw UnimplementedError();
  @override
  RangeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    QuantityBuilder? low,
    QuantityBuilder? high,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = RangeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      low: low ?? this.low,
      high: high ?? this.high,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! RangeBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    return true;
  }
}
