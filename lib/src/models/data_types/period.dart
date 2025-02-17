import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Period]
/// A time period defined by a start and end date and optionally time.
class Period extends DataType
    implements
        TimingXActivityDefinition,
        OnsetXAllergyIntolerance,
        CollectedXBiologicallyDerivedProductCollection,
        TimeXBiologicallyDerivedProductProcessing,
        TimeXBiologicallyDerivedProductManipulation,
        ScheduledXCarePlanDetail,
        OccurrenceXChargeItem,
        TimingXClaimSupportingInfo,
        ServicedXClaimItem,
        ServicedXClaimResponseAddItem,
        EffectiveXClinicalImpression,
        OccurrenceXCommunicationRequest,
        OnsetXCondition,
        AbatementXCondition,
        OccurrenceXContractAction,
        ServicedXCoverageEligibilityRequest,
        ServicedXCoverageEligibilityResponse,
        IdentifiedXDetectedIssue,
        OccurrenceXDeviceRequest,
        TimingXDeviceUseStatement,
        EffectiveXDiagnosticReport,
        TimingXExplanationOfBenefitSupportingInfo,
        ServicedXExplanationOfBenefitItem,
        ServicedXExplanationOfBenefitAddItem,
        BornXFamilyMemberHistory,
        OnsetXFamilyMemberHistoryCondition,
        CreatedXMedia,
        EffectiveXMedicationAdministration,
        EffectiveXMedicationStatement,
        EffectiveXObservation,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        TimingXPlanDefinitionAction,
        PerformedXProcedure,
        OccurredXProvenance,
        DateXRegulatedAuthorizationCase,
        TimingXRequestGroupAction,
        StudyEffectiveXResearchElementDefinitionCharacteristic,
        ParticipantEffectiveXResearchElementDefinitionCharacteristic,
        OccurrenceXRiskAssessment,
        WhenXRiskAssessmentPrediction,
        OccurrenceXServiceRequest,
        CollectedXSpecimenCollection,
        TimeXSpecimenProcessing,
        DefaultValueXStructureMapSource,
        OccurrenceXSupplyDelivery,
        OccurrenceXSupplyRequest,
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
  /// [Period]

  const Period({
    super.id,
    super.extension_,
    this.start,
    this.end,
    super.disallowExtensions,
    super.objectPath = 'Period',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Period.empty() => const Period();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Period.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Period';
    return Period(
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
      start: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'start',
        FhirDateTime.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'end',
        FhirDateTime.fromJson,
        '$objectPath.end',
      ),
    );
  }

  /// Deserialize [Period]
  /// from a [String] or [YamlMap] object
  factory Period.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Period.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Period.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Period '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Period]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Period.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Period.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Period';

  /// [start]
  /// The start of the period. The boundary is inclusive.
  final FhirDateTime? start;

  /// [end]
  /// The end of the period. If the end of the period is missing, it means no
  /// end was known or planned at the time the instance was created. The
  /// start may be in the past, and the end date in the future, which means
  /// that period is expected/planned to end at that time.
  final FhirDateTime? end;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Period clone() => throw UnimplementedError();
  @override
  Period copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDateTime? start,
    FhirDateTime? end,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Period(
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
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Period) {
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
    if (!equalsDeepWithNull(start, o.start)) {
      return false;
    }
    if (!equalsDeepWithNull(end, o.end)) {
      return false;
    }
    return true;
  }
}
