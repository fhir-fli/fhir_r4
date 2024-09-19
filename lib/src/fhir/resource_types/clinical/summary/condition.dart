// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

/// [Condition] A clinical condition, problem, diagnosis, or other event,
@freezed
class Condition extends DomainResource with _$Condition {
  /// [Condition] A clinical condition, problem, diagnosis, or other event,
  Condition._();

  /// [Condition] A clinical condition, problem, diagnosis, or other event,
  /// situation, issue, or clinical concept that has risen to a level of
  ///  concern.
  ///
  /// [resourceType] This is a Condition resource
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
  /// [identifier] Business identifiers assigned to this condition by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [clinicalStatus] The clinical status of the condition.
  ///
  /// [verificationStatus] The verification status to support the clinical
  ///  status of the condition.
  ///
  /// [category] A category assigned to the condition.
  ///
  /// [severity] A subjective assessment of the severity of the condition as
  ///  evaluated by the clinician.
  ///
  /// [code] Identification of the condition, problem or diagnosis.
  ///
  /// [bodySite] The anatomical location where this condition manifests itself.
  ///
  /// [subject] Indicates the patient or group who the condition record is
  ///  associated with.
  ///
  /// [encounter] The Encounter during which this Condition was created or to
  ///  which the creation of this record is tightly associated.
  ///
  /// [onsetDateTime] Estimated or actual date or date-time  the condition
  ///  began, in the opinion of the clinician.
  ///
  /// [onsetDateTimeElement] Extensions for onsetDateTime
  ///
  /// [onsetAge] Estimated or actual date or date-time  the condition began, in
  ///  the opinion of the clinician.
  ///
  /// [onsetPeriod] Estimated or actual date or date-time  the condition began,
  ///  in the opinion of the clinician.
  ///
  /// [onsetRange] Estimated or actual date or date-time  the condition began,
  ///  in the opinion of the clinician.
  ///
  /// [onsetString] Estimated or actual date or date-time  the condition began,
  ///  in the opinion of the clinician.
  ///
  /// [onsetStringElement] Extensions for onsetString
  ///
  /// [abatementDateTime] The date or estimated date that the condition
  /// resolved or went into remission. This is called "abatement" because of the
  /// many overloaded connotations associated with "remission" or "resolution" -
  ///  Conditions are never really resolved, but they can abate.
  ///
  /// [abatementDateTimeElement] Extensions for abatementDateTime
  ///
  /// [abatementAge] The date or estimated date that the condition resolved or
  /// went into remission. This is called "abatement" because of the many
  /// overloaded connotations associated with "remission" or "resolution" -
  ///  Conditions are never really resolved, but they can abate.
  ///
  /// [abatementPeriod] The date or estimated date that the condition resolved
  /// or went into remission. This is called "abatement" because of the many
  /// overloaded connotations associated with "remission" or "resolution" -
  ///  Conditions are never really resolved, but they can abate.
  ///
  /// [abatementRange] The date or estimated date that the condition resolved
  /// or went into remission. This is called "abatement" because of the many
  /// overloaded connotations associated with "remission" or "resolution" -
  ///  Conditions are never really resolved, but they can abate.
  ///
  /// [abatementString] The date or estimated date that the condition resolved
  /// or went into remission. This is called "abatement" because of the many
  /// overloaded connotations associated with "remission" or "resolution" -
  ///  Conditions are never really resolved, but they can abate.
  ///
  /// [abatementStringElement] Extensions for abatementString
  ///
  /// [recordedDate] The recordedDate represents when this particular Condition
  ///  record was created in the system, which is often a system-generated date.
  ///
  /// [recordedDateElement] Extensions for recordedDate
  ///
  /// [recorder] Individual who recorded the record and takes responsibility
  ///  for its content.
  ///
  /// [asserter] Individual who is making the condition statement.
  ///
  /// [stage] Clinical stage or grade of a condition. May include formal
  ///  severity assessments.
  ///
  /// [evidence] Supporting evidence / manifestations that are the basis of the
  /// Condition's verification status, such as evidence that confirmed or
  ///  refuted the condition.
  ///
  /// [note] Additional information about the Condition. This is a general
  /// notes/comments entry  for description of the Condition, its diagnosis and
  ///  prognosis.
  factory Condition({
    @Default(R4ResourceType.Condition)
    @JsonKey(unknownEnumValue: R4ResourceType.Condition)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    List<CodeableConcept>? category,
    CodeableConcept? severity,
    CodeableConcept? code,
    List<CodeableConcept>? bodySite,
    required Reference subject,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    @JsonKey(name: '_onsetDateTime') PrimitiveElement? onsetDateTimeElement,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    String? onsetString,
    @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
    FhirDateTime? abatementDateTime,
    @JsonKey(name: '_abatementDateTime')
    PrimitiveElement? abatementDateTimeElement,
    Age? abatementAge,
    Period? abatementPeriod,
    Range? abatementRange,
    String? abatementString,
    @JsonKey(name: '_abatementString') PrimitiveElement? abatementStringElement,
    FhirDateTime? recordedDate,
    @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
    Reference? recorder,
    Reference? asserter,
    List<ConditionStage>? stage,
    List<ConditionEvidence>? evidence,
    List<Annotation>? note,
  }) = _Condition;

  @override
  String get fhirType => 'Condition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Condition.fromYaml(dynamic yaml) => yaml is String
      ? Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Condition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Condition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  /// Acts like a constructor, returns a [Condition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConditionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

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

/// [ConditionStage] A clinical condition, problem, diagnosis, or other
@freezed

/// [ConditionStage] A clinical condition, problem, diagnosis, or other
@freezed
class ConditionStage extends BackboneElement with _$ConditionStage {
  /// [ConditionStage] A clinical condition, problem, diagnosis, or other
  ConditionStage._();

  /// [ConditionStage] A clinical condition, problem, diagnosis, or other
  /// event, situation, issue, or clinical concept that has risen to a level of
  ///  concern.
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
  /// [summary] A simple summary of the stage such as "Stage 3". The
  ///  determination of the stage is disease-specific.
  ///
  /// [assessment] Reference to a formal record of the evidence on which the
  ///  staging assessment is based.
  ///
  /// [type] The kind of staging, such as pathological or clinical staging.
  factory ConditionStage({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    CodeableConcept? type,
  }) = _ConditionStage;

  @override
  String get fhirType => 'ConditionStage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConditionStage.fromYaml(dynamic yaml) => yaml is String
      ? ConditionStage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConditionStage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConditionStage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConditionStage.fromJson(Map<String, dynamic> json) =>
      _$ConditionStageFromJson(json);

  /// Acts like a constructor, returns a [ConditionStage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConditionStage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConditionStageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ConditionEvidence] A clinical condition, problem, diagnosis, or other
@freezed

/// [ConditionEvidence] A clinical condition, problem, diagnosis, or other
@freezed
class ConditionEvidence extends BackboneElement with _$ConditionEvidence {
  /// [ConditionEvidence] A clinical condition, problem, diagnosis, or other
  ConditionEvidence._();

  /// [ConditionEvidence] A clinical condition, problem, diagnosis, or other
  /// event, situation, issue, or clinical concept that has risen to a level of
  ///  concern.
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
  /// [code] A manifestation or symptom that led to the recording of this
  ///  condition.
  ///
  /// [detail] Links to other relevant information, including pathology
  ///  reports.
  factory ConditionEvidence({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
  }) = _ConditionEvidence;

  @override
  String get fhirType => 'ConditionEvidence';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConditionEvidence.fromYaml(dynamic yaml) => yaml is String
      ? ConditionEvidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConditionEvidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConditionEvidence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConditionEvidence.fromJson(Map<String, dynamic> json) =>
      _$ConditionEvidenceFromJson(json);

  /// Acts like a constructor, returns a [ConditionEvidence], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConditionEvidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConditionEvidenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
