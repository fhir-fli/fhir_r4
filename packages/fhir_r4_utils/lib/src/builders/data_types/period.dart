import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Period, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [PeriodBuilder]
/// A time period defined by a start and end date and optionally time.
class PeriodBuilder extends DataTypeBuilder
    implements
        TimingXActivityDefinitionBuilder,
        OnsetXAllergyIntoleranceBuilder,
        CollectedXBiologicallyDerivedProductCollectionBuilder,
        TimeXBiologicallyDerivedProductProcessingBuilder,
        TimeXBiologicallyDerivedProductManipulationBuilder,
        ScheduledXCarePlanDetailBuilder,
        OccurrenceXChargeItemBuilder,
        TimingXClaimSupportingInfoBuilder,
        ServicedXClaimItemBuilder,
        ServicedXClaimResponseAddItemBuilder,
        EffectiveXClinicalImpressionBuilder,
        OccurrenceXCommunicationRequestBuilder,
        OnsetXConditionBuilder,
        AbatementXConditionBuilder,
        OccurrenceXContractActionBuilder,
        ServicedXCoverageEligibilityRequestBuilder,
        ServicedXCoverageEligibilityResponseBuilder,
        IdentifiedXDetectedIssueBuilder,
        OccurrenceXDeviceRequestBuilder,
        TimingXDeviceUseStatementBuilder,
        EffectiveXDiagnosticReportBuilder,
        TimingXExplanationOfBenefitSupportingInfoBuilder,
        ServicedXExplanationOfBenefitItemBuilder,
        ServicedXExplanationOfBenefitAddItemBuilder,
        BornXFamilyMemberHistoryBuilder,
        OnsetXFamilyMemberHistoryConditionBuilder,
        CreatedXMediaBuilder,
        EffectiveXMedicationAdministrationBuilder,
        EffectiveXMedicationStatementBuilder,
        EffectiveXObservationBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        TimingXPlanDefinitionActionBuilder,
        PerformedXProcedureBuilder,
        OccurredXProvenanceBuilder,
        DateXRegulatedAuthorizationCaseBuilder,
        TimingXRequestGroupActionBuilder,
        StudyEffectiveXResearchElementDefinitionCharacteristicBuilder,
        ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder,
        OccurrenceXRiskAssessmentBuilder,
        WhenXRiskAssessmentPredictionBuilder,
        OccurrenceXServiceRequestBuilder,
        CollectedXSpecimenCollectionBuilder,
        TimeXSpecimenProcessingBuilder,
        DefaultValueXStructureMapSourceBuilder,
        OccurrenceXSupplyDeliveryBuilder,
        OccurrenceXSupplyRequestBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXDataRequirementDateFilterBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        BoundsXTimingRepeatBuilder {
  /// Primary constructor for
  /// [PeriodBuilder]

  PeriodBuilder({
    super.id,
    super.extension_,
    this.start,
    this.end,
    super.disallowExtensions,
    super.objectPath = 'PeriodBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PeriodBuilder.empty() => PeriodBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PeriodBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Period';
    return PeriodBuilder(
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
      start: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'start',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'end',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.end',
      ),
    );
  }

  /// Deserialize [PeriodBuilder]
  /// from a [String] or [YamlMap] object
  factory PeriodBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PeriodBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PeriodBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PeriodBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PeriodBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PeriodBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PeriodBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Period';

  /// [start]
  /// The start of the period. The boundary is inclusive.
  FhirDateTimeBuilder? start;

  /// [end]
  /// The end of the period. If the end of the period is missing, it means no
  /// end was known or planned at the time the instance was created. The
  /// start may be in the past, and the end date in the future, which means
  /// that period is expected/planned to end at that time.
  FhirDateTimeBuilder? end;

  /// Converts a [PeriodBuilder]
  /// to [Period]
  @override
  Period build() => Period.fromJson(toJson());

  /// Converts a [PeriodBuilder]
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
    addField('start', start);
    addField('end', end);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'start',
      'end',
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
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
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
      case 'start':
        {
          if (child is FhirDateTimeBuilder) {
            start = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                start = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'end':
        {
          if (child is FhirDateTimeBuilder) {
            end = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                end = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'start':
        return ['FhirDateTimeBuilder'];
      case 'end':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PeriodBuilder]
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
      case 'start':
        {
          start = FhirDateTimeBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PeriodBuilder clone() => throw UnimplementedError();
  @override
  PeriodBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirDateTimeBuilder? start,
    FhirDateTimeBuilder? end,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = PeriodBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      start: start ?? this.start,
      end: end ?? this.end,
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
    if (o is! PeriodBuilder) {
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
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    return true;
  }
}
