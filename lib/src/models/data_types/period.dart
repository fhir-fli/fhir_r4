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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Period.fromJson(
    Map<String, dynamic> json,
  ) {
    return Period(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      start: (json['start'] != null || json['_start'] != null)
          ? FhirDateTime.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: (json['end'] != null || json['_end'] != null)
          ? FhirDateTime.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return Period.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('start', start);
    addField('end', end);
    return json;
  }

  @override
  Period clone() => throw UnimplementedError();
  @override
  Period copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDateTime? start,
    FhirDateTime? end,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Period(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }
}
