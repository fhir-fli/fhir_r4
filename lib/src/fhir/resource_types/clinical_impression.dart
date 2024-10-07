import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'clinical_impression.g.dart';

/// [ClinicalImpression] /// A record of a clinical assessment performed to determine what problem(s)
/// may affect the patient and before planning the treatments or management
/// strategies that are best to manage a patient's condition. Assessments are
/// often 1:1 with a clinical consultation / encounter, but this varies greatly
/// depending on the clinical workflow. This resource is called
/// "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion
/// with the recording of assessment tools such as Apgar score.
@JsonSerializable()
class ClinicalImpression extends DomainResource {
  ClinicalImpression({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.code,
    this.description,
    this.descriptionElement,
    required this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.date,
    this.dateElement,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.protocolElement,
    this.summary,
    this.summaryElement,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.ClinicalImpression,
            fhirType: 'ClinicalImpression');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this clinical impression by the performer
  /// or other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Identifies the workflow status of the assessment.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the ClinicalImpression.
  @JsonKey(name: 'statusReason')
  final CodeableConcept? statusReason;

  /// [code] /// Categorizes the type of clinical assessment performed.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [description] /// A summary of the context and/or cause of the assessment - why / where it
  /// was performed, and what patient events/status prompted it.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [subject] /// The patient or group of individuals assessed as part of this record.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The Encounter during which this ClinicalImpression was created or to which
  /// the creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [effectiveDateTime] /// The point in time or period over which the subject was assessed.
  @JsonKey(name: 'effectiveDateTime')
  final FhirDateTime? effectiveDateTime;
  @JsonKey(name: '_effectiveDateTime')
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// The point in time or period over which the subject was assessed.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [date] /// Indicates when the documentation of the assessment was complete.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [assessor] /// The clinician performing the assessment.
  @JsonKey(name: 'assessor')
  final Reference? assessor;

  /// [previous] /// A reference to the last assessment that was conducted on this patient.
  /// Assessments are often/usually ongoing in nature; a care provider
  /// (practitioner or team) will make new assessments on an ongoing basis as new
  /// data arises or the patient's conditions changes.
  @JsonKey(name: 'previous')
  final Reference? previous;

  /// [problem] /// A list of the relevant problems/conditions for a patient.
  @JsonKey(name: 'problem')
  final List<Reference>? problem;

  /// [investigation] /// One or more sets of investigations (signs, symptoms, etc.). The actual
  /// grouping of investigations varies greatly depending on the type and context
  /// of the assessment. These investigations may include data generated during
  /// the assessment process, or data previously generated and recorded that is
  /// pertinent to the outcomes.
  @JsonKey(name: 'investigation')
  final List<ClinicalImpressionInvestigation>? investigation;

  /// [protocol] /// Reference to a specific published clinical protocol that was followed
  /// during this assessment, and/or that provides evidence in support of the
  /// diagnosis.
  @JsonKey(name: 'protocol')
  final List<FhirUri>? protocol;
  @JsonKey(name: '_protocol')
  final List<Element>? protocolElement;

  /// [summary] /// A text summary of the investigations and the diagnosis.
  @JsonKey(name: 'summary')
  final FhirString? summary;
  @JsonKey(name: '_summary')
  final Element? summaryElement;

  /// [finding] /// Specific findings or diagnoses that were considered likely or relevant to
  /// ongoing treatment.
  @JsonKey(name: 'finding')
  final List<ClinicalImpressionFinding>? finding;

  /// [prognosisCodeableConcept] /// Estimate of likely outcome.
  @JsonKey(name: 'prognosisCodeableConcept')
  final List<CodeableConcept>? prognosisCodeableConcept;

  /// [prognosisReference] /// RiskAssessment expressing likely outcome.
  @JsonKey(name: 'prognosisReference')
  final List<Reference>? prognosisReference;

  /// [supportingInfo] /// Information supporting the clinical impression.
  @JsonKey(name: 'supportingInfo')
  final List<Reference>? supportingInfo;

  /// [note] /// Commentary about the impression, typically recorded after the impression
  /// itself was made, though supplemental notes by the original author could
  /// also appear.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory ClinicalImpression.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);

  @override
  ClinicalImpression clone() => throw UnimplementedError();
  @override
  ClinicalImpression copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    FhirDateTime? date,
    Element? dateElement,
    Reference? assessor,
    Reference? previous,
    List<Reference>? problem,
    List<ClinicalImpressionInvestigation>? investigation,
    List<FhirUri>? protocol,
    List<Element>? protocolElement,
    FhirString? summary,
    Element? summaryElement,
    List<ClinicalImpressionFinding>? finding,
    List<CodeableConcept>? prognosisCodeableConcept,
    List<Reference>? prognosisReference,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalImpression(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      code: code ?? this.code,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveDateTimeElement:
          effectiveDateTimeElement ?? this.effectiveDateTimeElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      assessor: assessor ?? this.assessor,
      previous: previous ?? this.previous,
      problem: problem ?? this.problem,
      investigation: investigation ?? this.investigation,
      protocol: protocol ?? this.protocol,
      protocolElement: protocolElement ?? this.protocolElement,
      summary: summary ?? this.summary,
      summaryElement: summaryElement ?? this.summaryElement,
      finding: finding ?? this.finding,
      prognosisCodeableConcept:
          prognosisCodeableConcept ?? this.prognosisCodeableConcept,
      prognosisReference: prognosisReference ?? this.prognosisReference,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalImpression.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalImpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalImpression cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalImpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalImpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalImpressionInvestigation] /// One or more sets of investigations (signs, symptoms, etc.). The actual
/// grouping of investigations varies greatly depending on the type and context
/// of the assessment. These investigations may include data generated during
/// the assessment process, or data previously generated and recorded that is
/// pertinent to the outcomes.
@JsonSerializable()
class ClinicalImpressionInvestigation extends BackboneElement {
  ClinicalImpressionInvestigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalImpressionInvestigation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A name/code for the group ("set") of investigations. Typically, this will
  /// be something like "signs", "symptoms", "clinical", "diagnostic", but the
  /// list is not constrained, and others such groups such as
  /// (exposure|family|travel|nutritional) history may be used.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [item] /// A record of a specific investigation that was undertaken.
  @JsonKey(name: 'item')
  final List<Reference>? item;
  factory ClinicalImpressionInvestigation.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionInvestigationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ClinicalImpressionInvestigationToJson(this);

  @override
  ClinicalImpressionInvestigation clone() => throw UnimplementedError();
  @override
  ClinicalImpressionInvestigation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<Reference>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalImpressionInvestigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      item: item ?? this.item,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalImpressionInvestigation.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalImpressionInvestigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalImpressionInvestigation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalImpressionInvestigation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalImpressionInvestigation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalImpressionInvestigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalImpressionFinding] /// Specific findings or diagnoses that were considered likely or relevant to
/// ongoing treatment.
@JsonSerializable()
class ClinicalImpressionFinding extends BackboneElement {
  ClinicalImpressionFinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.basisElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ClinicalImpressionFinding');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemCodeableConcept] /// Specific text or code for finding or diagnosis, which may include ruled-out
  /// or resolved conditions.
  @JsonKey(name: 'itemCodeableConcept')
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// Specific reference for finding or diagnosis, which may include ruled-out or
  /// resolved conditions.
  @JsonKey(name: 'itemReference')
  final Reference? itemReference;

  /// [basis] /// Which investigations support finding or diagnosis.
  @JsonKey(name: 'basis')
  final FhirString? basis;
  @JsonKey(name: '_basis')
  final Element? basisElement;
  factory ClinicalImpressionFinding.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFindingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClinicalImpressionFindingToJson(this);

  @override
  ClinicalImpressionFinding clone() => throw UnimplementedError();
  @override
  ClinicalImpressionFinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirString? basis,
    Element? basisElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalImpressionFinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      basis: basis ?? this.basis,
      basisElement: basisElement ?? this.basisElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalImpressionFinding.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpressionFinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalImpressionFinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalImpressionFinding cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalImpressionFinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalImpressionFinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
