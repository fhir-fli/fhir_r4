// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'risk_assessment.freezed.dart';
part 'risk_assessment.g.dart';

/// [RiskAssessment] An assessment of the likely outcome(s) for a patient or
@freezed
class RiskAssessment with _$RiskAssessment implements DomainResource {
  /// [RiskAssessment] An assessment of the likely outcome(s) for a patient or
  const RiskAssessment._();

  /// [RiskAssessment] An assessment of the likely outcome(s) for a patient or
  ///  other subject as well as the likelihood of each outcome.
  ///
  /// [resourceType] This is a RiskAssessment resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Business identifier assigned to the risk assessment.
  ///
  /// [basedOn] A reference to the request that is fulfilled by this risk
  ///  assessment.
  ///
  /// [parent] A reference to a resource that this risk assessment is part of,
  ///  such as a Procedure.
  ///
  /// [status] The status of the RiskAssessment, using the same statuses as an
  ///  Observation.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [method] The algorithm, process or mechanism used to evaluate the risk.
  ///
  /// [code] The type of the risk assessment performed.
  ///
  /// [subject] The patient or group the risk assessment applies to.
  ///
  /// [encounter] The encounter where the assessment was performed.
  ///
  /// [occurrenceDateTime] The date (and possibly time) the risk assessment was
  ///  performed.
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [occurrencePeriod] The date (and possibly time) the risk assessment was
  ///  performed.
  ///
  /// [condition] For assessments or prognosis specific to a particular
  ///  condition, indicates the condition being assessed.
  ///
  /// [performer] The provider or software application that performed the
  ///  assessment.
  ///
  /// [reasonCode] The reason the risk assessment was performed.
  ///
  /// [reasonReference] Resources supporting the reason the risk assessment was
  ///  performed.
  ///
  /// [basis] Indicates the source data considered as part of the assessment
  ///  (for example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  ///
  /// [prediction] Describes the expected outcome for the subject.
  ///
  /// [mitigation] A description of the steps that might be taken to reduce the
  ///  identified risk(s).
  ///
  /// [mitigationElement] Extensions for mitigation
  ///
  /// [note] Additional comments about the risk assessment.
  const factory RiskAssessment({
    @Default(R4ResourceType.RiskAssessment)
    @JsonKey(unknownEnumValue: R4ResourceType.RiskAssessment)

    /// [resourceType] This is a RiskAssessment resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifier assigned to the risk assessment.
    List<Identifier>? identifier,

    /// [basedOn] A reference to the request that is fulfilled by this risk
    ///  assessment.
    Reference? basedOn,

    /// [parent] A reference to a resource that this risk assessment is part of,
    ///  such as a Procedure.
    Reference? parent,

    /// [status] The status of the RiskAssessment, using the same statuses as an
    ///  Observation.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [method] The algorithm, process or mechanism used to evaluate the risk.
    CodeableConcept? method,

    /// [code] The type of the risk assessment performed.
    CodeableConcept? code,

    /// [subject] The patient or group the risk assessment applies to.
    required Reference subject,

    /// [encounter] The encounter where the assessment was performed.
    Reference? encounter,

    /// [occurrenceDateTime] The date (and possibly time) the risk assessment was
    ///  performed.
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [occurrencePeriod] The date (and possibly time) the risk assessment was
    ///  performed.
    Period? occurrencePeriod,

    /// [condition] For assessments or prognosis specific to a particular
    ///  condition, indicates the condition being assessed.
    Reference? condition,

    /// [performer] The provider or software application that performed the
    ///  assessment.
    Reference? performer,

    /// [reasonCode] The reason the risk assessment was performed.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Resources supporting the reason the risk assessment was
    ///  performed.
    List<Reference>? reasonReference,

    /// [basis] Indicates the source data considered as part of the assessment
    ///  (for example, FamilyHistory, Observations, Procedures, Conditions, etc.).
    List<Reference>? basis,

    /// [prediction] Describes the expected outcome for the subject.
    List<RiskAssessmentPrediction>? prediction,

    /// [mitigation] A description of the steps that might be taken to reduce the
    ///  identified risk(s).
    String? mitigation,

    /// [mitigationElement] Extensions for mitigation
    @JsonKey(name: '_mitigation') PrimitiveElement? mitigationElement,

    /// [note] Additional comments about the risk assessment.
    List<Annotation>? note,
  }) = _RiskAssessment;

  @override
  String get fhirType => 'RiskAssessment';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RiskAssessment.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RiskAssessment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RiskAssessment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RiskAssessment.fromJson(Map<String, dynamic> json) =>
      _$RiskAssessmentFromJson(json);

  /// Acts like a constructor, returns a [RiskAssessment], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RiskAssessment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RiskAssessmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [RiskAssessmentPrediction] An assessment of the likely outcome(s) for a
@freezed

/// [RiskAssessmentPrediction] An assessment of the likely outcome(s) for a
@freezed
class RiskAssessmentPrediction
    with _$RiskAssessmentPrediction
    implements BackboneElement {
  /// [RiskAssessmentPrediction] An assessment of the likely outcome(s) for a
  const RiskAssessmentPrediction._();

  /// [RiskAssessmentPrediction] An assessment of the likely outcome(s) for a
  ///  patient or other subject as well as the likelihood of each outcome.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [outcome] One of the potential outcomes for the patient (e.g. remission,
  ///  death,  a particular condition).
  ///
  /// [probabilityDecimal] Indicates how likely the outcome is (in the
  ///  specified timeframe).
  ///
  /// [probabilityDecimalElement] Extensions for probabilityDecimal
  ///
  /// [probabilityRange] Indicates how likely the outcome is (in the specified
  ///  timeframe).
  ///
  /// [qualitativeRisk] Indicates how likely the outcome is (in the specified
  ///  timeframe), expressed as a qualitative value (e.g. low, medium, or high).
  ///
  /// [relativeRisk] Indicates the risk for this particular subject (with their
  /// specific characteristics) divided by the risk of the population in
  /// general.  (Numbers greater than 1 = higher risk than the population,
  ///  numbers less than 1 = lower risk.).
  ///
  /// [relativeRiskElement] Extensions for relativeRisk
  ///
  /// [whenPeriod] Indicates the period of time or age range of the subject to
  ///  which the specified probability applies.
  ///
  /// [whenRange] Indicates the period of time or age range of the subject to
  ///  which the specified probability applies.
  ///
  /// [rationale] Additional information explaining the basis for the
  ///  prediction.
  ///
  /// [rationaleElement] Extensions for rationale
  const factory RiskAssessmentPrediction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [outcome] One of the potential outcomes for the patient (e.g. remission,
    ///  death,  a particular condition).
    CodeableConcept? outcome,

    /// [probabilityDecimal] Indicates how likely the outcome is (in the
    ///  specified timeframe).
    FhirDecimal? probabilityDecimal,

    /// [probabilityDecimalElement] Extensions for probabilityDecimal
    @JsonKey(name: '_probabilityDecimal')
    PrimitiveElement? probabilityDecimalElement,

    /// [probabilityRange] Indicates how likely the outcome is (in the specified
    ///  timeframe).
    Range? probabilityRange,

    /// [qualitativeRisk] Indicates how likely the outcome is (in the specified
    ///  timeframe), expressed as a qualitative value (e.g. low, medium, or high).
    CodeableConcept? qualitativeRisk,

    /// [relativeRisk] Indicates the risk for this particular subject (with their
    /// specific characteristics) divided by the risk of the population in
    /// general.  (Numbers greater than 1 = higher risk than the population,
    ///  numbers less than 1 = lower risk.).
    FhirDecimal? relativeRisk,

    /// [relativeRiskElement] Extensions for relativeRisk
    @JsonKey(name: '_relativeRisk') PrimitiveElement? relativeRiskElement,

    /// [whenPeriod] Indicates the period of time or age range of the subject to
    ///  which the specified probability applies.
    Period? whenPeriod,

    /// [whenRange] Indicates the period of time or age range of the subject to
    ///  which the specified probability applies.
    Range? whenRange,

    /// [rationale] Additional information explaining the basis for the
    ///  prediction.
    String? rationale,

    /// [rationaleElement] Extensions for rationale
    @JsonKey(name: '_rationale') PrimitiveElement? rationaleElement,
  }) = _RiskAssessmentPrediction;

  @override
  String get fhirType => 'RiskAssessmentPrediction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RiskAssessmentPrediction.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessmentPrediction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RiskAssessmentPrediction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RiskAssessmentPrediction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RiskAssessmentPrediction.fromJson(Map<String, dynamic> json) =>
      _$RiskAssessmentPredictionFromJson(json);

  /// Acts like a constructor, returns a [RiskAssessmentPrediction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RiskAssessmentPrediction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RiskAssessmentPredictionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
