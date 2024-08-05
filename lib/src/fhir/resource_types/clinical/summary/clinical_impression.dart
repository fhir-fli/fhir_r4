// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'clinical_impression.freezed.dart';
part 'clinical_impression.g.dart';

/// [ClinicalImpression] A record of a clinical assessment performed to
@freezed
class ClinicalImpression extends DomainResource with _$ClinicalImpression {
  /// [ClinicalImpression] A record of a clinical assessment performed to
  ClinicalImpression._();

  /// [ClinicalImpression] A record of a clinical assessment performed to
  /// determine what problem(s) may affect the patient and before planning the
  /// treatments or management strategies that are best to manage a patient's
  /// condition. Assessments are often 1:1 with a clinical consultation /
  /// encounter,  but this varies greatly depending on the clinical workflow.
  /// This resource is called "ClinicalImpression" rather than
  /// "ClinicalAssessment" to avoid confusion with the recording of assessment
  ///  tools such as Apgar score.
  ///
  /// [resourceType] This is a ClinicalImpression resource
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
  /// [identifier] Business identifiers assigned to this clinical impression by
  /// the performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [status] Identifies the workflow status of the assessment.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] Captures the reason for the current state of the
  ///  ClinicalImpression.
  ///
  /// [code] Categorizes the type of clinical assessment performed.
  ///
  /// [description] A summary of the context and/or cause of the assessment -
  ///  why / where it was performed, and what patient events/status prompted it.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [subject] The patient or group of individuals assessed as part of this
  ///  record.
  ///
  /// [encounter] The Encounter during which this ClinicalImpression was
  ///  created or to which the creation of this record is tightly associated.
  ///
  /// [effectiveDateTime] The point in time or period over which the subject
  ///  was assessed.
  ///
  /// [effectiveDateTimeElement] Extensions for effectiveDateTime
  ///
  /// [effectivePeriod] The point in time or period over which the subject was
  ///  assessed.
  ///
  /// [date] Indicates when the documentation of the assessment was complete.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [assessor] The clinician performing the assessment.
  ///
  /// [previous] A reference to the last assessment that was conducted on this
  /// patient. Assessments are often/usually ongoing in nature; a care provider
  /// (practitioner or team) will make new assessments on an ongoing basis as
  ///  new data arises or the patient's conditions changes.
  ///
  /// [problem] A list of the relevant problems/conditions for a patient.
  ///
  /// [investigation] One or more sets of investigations (signs, symptoms,
  /// etc.). The actual grouping of investigations varies greatly depending on
  /// the type and context of the assessment. These investigations may include
  /// data generated during the assessment process, or data previously generated
  ///  and recorded that is pertinent to the outcomes.
  ///
  /// [protocol] Reference to a specific published clinical protocol that was
  /// followed during this assessment, and/or that provides evidence in support
  ///  of the diagnosis.
  ///
  /// [protocolElement] Extensions for protocol
  ///
  /// [summary] A text summary of the investigations and the diagnosis.
  ///
  /// [summaryElement] Extensions for summary
  ///
  /// [finding] Specific findings or diagnoses that were considered likely or
  ///  relevant to ongoing treatment.
  ///
  /// [prognosisCodeableConcept] Estimate of likely outcome.
  ///
  /// [prognosisReference] RiskAssessment expressing likely outcome.
  ///
  /// [supportingInfo] Information supporting the clinical impression.
  ///
  /// [note] Commentary about the impression, typically recorded after the
  /// impression itself was made, though supplemental notes by the original
  ///  author could also appear.
  factory ClinicalImpression({
    @Default(R4ResourceType.ClinicalImpression)
    @JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? code,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    required Reference subject,
    Reference? encounter,
    FhirDateTime? effectiveDateTime,
    @JsonKey(name: '_effectiveDateTime')
    PrimitiveElement? effectiveDateTimeElement,
    Period? effectivePeriod,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    Reference? assessor,
    Reference? previous,
    List<Reference>? problem,
    List<ClinicalImpressionInvestigation>? investigation,
    List<FhirUri>? protocol,
    @JsonKey(name: '_protocol') List<PrimitiveElement>? protocolElement,
    String? summary,
    @JsonKey(name: '_summary') PrimitiveElement? summaryElement,
    List<ClinicalImpressionFinding>? finding,
    List<CodeableConcept>? prognosisCodeableConcept,
    List<Reference>? prognosisReference,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
  }) = _ClinicalImpression;

  @override
  String get fhirType => 'ClinicalImpression';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalImpression.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalImpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalImpression cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpression.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFromJson(json);

  /// Acts like a constructor, returns a [ClinicalImpression], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalImpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalImpressionFromJson(json);
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

/// [ClinicalImpressionInvestigation] A record of a clinical assessment
@freezed

/// [ClinicalImpressionInvestigation] A record of a clinical assessment
@freezed
class ClinicalImpressionInvestigation extends BackboneElement
    with _$ClinicalImpressionInvestigation {
  /// [ClinicalImpressionInvestigation] A record of a clinical assessment
  ClinicalImpressionInvestigation._();

  /// [ClinicalImpressionInvestigation] A record of a clinical assessment
  /// performed to determine what problem(s) may affect the patient and before
  /// planning the treatments or management strategies that are best to manage a
  /// patient's condition. Assessments are often 1:1 with a clinical
  /// consultation / encounter,  but this varies greatly depending on the
  /// clinical workflow. This resource is called "ClinicalImpression" rather
  /// than "ClinicalAssessment" to avoid confusion with the recording of
  ///  assessment tools such as Apgar score.
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
  /// [code] A name/code for the group ("set") of investigations. Typically,
  /// this will be something like "signs", "symptoms", "clinical", "diagnostic",
  /// but the list is not constrained, and others such groups such as
  ///  (exposure|family|travel|nutritional) history may be used.
  ///
  /// [item] A record of a specific investigation that was undertaken.
  factory ClinicalImpressionInvestigation({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept code,
    List<Reference>? item,
  }) = _ClinicalImpressionInvestigation;

  @override
  String get fhirType => 'ClinicalImpressionInvestigation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalImpressionInvestigation.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalImpressionInvestigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalImpressionInvestigation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalImpressionInvestigation cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionInvestigation.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionInvestigationFromJson(json);

  /// Acts like a constructor, returns a [ClinicalImpressionInvestigation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalImpressionInvestigation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalImpressionInvestigationFromJson(json);
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

/// [ClinicalImpressionFinding] A record of a clinical assessment performed
@freezed

/// [ClinicalImpressionFinding] A record of a clinical assessment performed
@freezed
class ClinicalImpressionFinding extends BackboneElement
    with _$ClinicalImpressionFinding {
  /// [ClinicalImpressionFinding] A record of a clinical assessment performed
  ClinicalImpressionFinding._();

  /// [ClinicalImpressionFinding] A record of a clinical assessment performed
  /// to determine what problem(s) may affect the patient and before planning
  /// the treatments or management strategies that are best to manage a
  /// patient's condition. Assessments are often 1:1 with a clinical
  /// consultation / encounter,  but this varies greatly depending on the
  /// clinical workflow. This resource is called "ClinicalImpression" rather
  /// than "ClinicalAssessment" to avoid confusion with the recording of
  ///  assessment tools such as Apgar score.
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
  /// [itemCodeableConcept] Specific text or code for finding or diagnosis,
  ///  which may include ruled-out or resolved conditions.
  ///
  /// [itemReference] Specific reference for finding or diagnosis, which may
  ///  include ruled-out or resolved conditions.
  ///
  /// [basis] Which investigations support finding or diagnosis.
  ///
  /// [basisElement] Extensions for basis
  factory ClinicalImpressionFinding({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    String? basis,
    @JsonKey(name: '_basis') PrimitiveElement? basisElement,
  }) = _ClinicalImpressionFinding;

  @override
  String get fhirType => 'ClinicalImpressionFinding';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalImpressionFinding.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpressionFinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalImpressionFinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalImpressionFinding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionFinding.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFindingFromJson(json);

  /// Acts like a constructor, returns a [ClinicalImpressionFinding], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalImpressionFinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalImpressionFindingFromJson(json);
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
