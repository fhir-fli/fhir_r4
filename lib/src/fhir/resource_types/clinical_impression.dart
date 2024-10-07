import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ClinicalImpression] /// A record of a clinical assessment performed to determine what problem(s)
/// may affect the patient and before planning the treatments or management
/// strategies that are best to manage a patient's condition. Assessments are
/// often 1:1 with a clinical consultation / encounter, but this varies greatly
/// depending on the clinical workflow. This resource is called
/// "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion
/// with the recording of assessment tools such as Apgar score.
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
  }) : super(resourceType: R4ResourceType.ClinicalImpression);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this clinical impression by the performer
  /// or other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Identifies the workflow status of the assessment.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the ClinicalImpression.
  final CodeableConcept? statusReason;

  /// [code] /// Categorizes the type of clinical assessment performed.
  final CodeableConcept? code;

  /// [description] /// A summary of the context and/or cause of the assessment - why / where it
  /// was performed, and what patient events/status prompted it.
  final FhirString? description;
  final Element? descriptionElement;

  /// [subject] /// The patient or group of individuals assessed as part of this record.
  final Reference subject;

  /// [encounter] /// The Encounter during which this ClinicalImpression was created or to which
  /// the creation of this record is tightly associated.
  final Reference? encounter;

  /// [effectiveDateTime] /// The point in time or period over which the subject was assessed.
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// The point in time or period over which the subject was assessed.
  final Period? effectivePeriod;

  /// [date] /// Indicates when the documentation of the assessment was complete.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [assessor] /// The clinician performing the assessment.
  final Reference? assessor;

  /// [previous] /// A reference to the last assessment that was conducted on this patient.
  /// Assessments are often/usually ongoing in nature; a care provider
  /// (practitioner or team) will make new assessments on an ongoing basis as new
  /// data arises or the patient's conditions changes.
  final Reference? previous;

  /// [problem] /// A list of the relevant problems/conditions for a patient.
  final List<Reference>? problem;

  /// [investigation] /// One or more sets of investigations (signs, symptoms, etc.). The actual
  /// grouping of investigations varies greatly depending on the type and context
  /// of the assessment. These investigations may include data generated during
  /// the assessment process, or data previously generated and recorded that is
  /// pertinent to the outcomes.
  final List<ClinicalImpressionInvestigation>? investigation;

  /// [protocol] /// Reference to a specific published clinical protocol that was followed
  /// during this assessment, and/or that provides evidence in support of the
  /// diagnosis.
  final List<FhirUri>? protocol;
  final List<Element>? protocolElement;

  /// [summary] /// A text summary of the investigations and the diagnosis.
  final FhirString? summary;
  final Element? summaryElement;

  /// [finding] /// Specific findings or diagnoses that were considered likely or relevant to
  /// ongoing treatment.
  final List<ClinicalImpressionFinding>? finding;

  /// [prognosisCodeableConcept] /// Estimate of likely outcome.
  final List<CodeableConcept>? prognosisCodeableConcept;

  /// [prognosisReference] /// RiskAssessment expressing likely outcome.
  final List<Reference>? prognosisReference;

  /// [supportingInfo] /// Information supporting the clinical impression.
  final List<Reference>? supportingInfo;

  /// [note] /// Commentary about the impression, typically recorded after the impression
  /// itself was made, though supplemental notes by the original author could
  /// also appear.
  final List<Annotation>? note;
  @override
  ClinicalImpression clone() => throw UnimplementedError();
  ClinicalImpression copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalImpressionInvestigation] /// One or more sets of investigations (signs, symptoms, etc.). The actual
/// grouping of investigations varies greatly depending on the type and context
/// of the assessment. These investigations may include data generated during
/// the assessment process, or data previously generated and recorded that is
/// pertinent to the outcomes.
class ClinicalImpressionInvestigation extends BackboneElement {
  ClinicalImpressionInvestigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.item,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A name/code for the group ("set") of investigations. Typically, this will
  /// be something like "signs", "symptoms", "clinical", "diagnostic", but the
  /// list is not constrained, and others such groups such as
  /// (exposure|family|travel|nutritional) history may be used.
  final CodeableConcept code;

  /// [item] /// A record of a specific investigation that was undertaken.
  final List<Reference>? item;
  @override
  ClinicalImpressionInvestigation clone() => throw UnimplementedError();
  ClinicalImpressionInvestigation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<Reference>? item,
  }) {
    return ClinicalImpressionInvestigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClinicalImpressionFinding] /// Specific findings or diagnoses that were considered likely or relevant to
/// ongoing treatment.
class ClinicalImpressionFinding extends BackboneElement {
  ClinicalImpressionFinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.basisElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemCodeableConcept] /// Specific text or code for finding or diagnosis, which may include ruled-out
  /// or resolved conditions.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// Specific reference for finding or diagnosis, which may include ruled-out or
  /// resolved conditions.
  final Reference? itemReference;

  /// [basis] /// Which investigations support finding or diagnosis.
  final FhirString? basis;
  final Element? basisElement;
  @override
  ClinicalImpressionFinding clone() => throw UnimplementedError();
  ClinicalImpressionFinding copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirString? basis,
    Element? basisElement,
  }) {
    return ClinicalImpressionFinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      basis: basis ?? this.basis,
      basisElement: basisElement ?? this.basisElement,
    );
  }
}
