import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [AllergyIntolerance] /// Risk of harmful or undesirable, physiological response which is unique to
/// an individual and associated with exposure to a substance.
class AllergyIntolerance extends DomainResource {
  AllergyIntolerance({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.typeElement,
    this.category,
    this.categoryElement,
    this.criticality,
    this.criticalityElement,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.recordedDate,
    this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.lastOccurrenceElement,
    this.note,
    this.reaction,
  }) : super(resourceType: R4ResourceType.AllergyIntolerance);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this AllergyIntolerance by the performer
  /// or other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus] /// The clinical status of the allergy or intolerance.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus] /// Assertion about certainty associated with the propensity, or potential
  /// risk, of a reaction to the identified substance (including pharmaceutical
  /// product).
  final CodeableConcept? verificationStatus;

  /// [type] /// Identification of the underlying physiological mechanism for the reaction
  /// risk.
  final FhirCode? type;
  final Element? typeElement;

  /// [category] /// Category of the identified substance.
  final List<FhirCode>? category;
  final List<Element>? categoryElement;

  /// [criticality] /// Estimate of the potential clinical harm, or seriousness, of the reaction to
  /// the identified substance.
  final FhirCode? criticality;
  final Element? criticalityElement;

  /// [code] /// Code for an allergy or intolerance statement (either a positive or a
  /// negated/excluded statement). This may be a code for a substance or
  /// pharmaceutical product that is considered to be responsible for the adverse
  /// reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g.,
  /// "Latex allergy"), or a negated/excluded code for a specific substance or
  /// class (e.g., "No latex allergy") or a general or categorical negated
  /// statement (e.g., "No known allergy", "No known drug allergies"). Note: the
  /// substance for a specific reaction may be different from the substance
  /// identified as the cause of the risk, but it must be consistent with it. For
  /// instance, it may be a more specific substance (e.g. a brand medication) or
  /// a composite product that includes the identified substance. It must be
  /// clinically safe to only process the 'code' and ignore the
  /// 'reaction.substance'. If a receiving system is unable to confirm that
  /// AllergyIntolerance.reaction.substance falls within the semantic scope of
  /// AllergyIntolerance.code, then the receiving system should ignore
  /// AllergyIntolerance.reaction.substance.
  final CodeableConcept? code;

  /// [patient] /// The patient who has the allergy or intolerance.
  final Reference patient;

  /// [encounter] /// The encounter when the allergy or intolerance was asserted.
  final Reference? encounter;

  /// [onsetDateTime] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  final FhirDateTime? onsetDateTime;
  final Element? onsetDateTimeElement;

  /// [onsetAge] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  final Age? onsetAge;

  /// [onsetPeriod] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  final Period? onsetPeriod;

  /// [onsetRange] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  final Range? onsetRange;

  /// [onsetString] /// Estimated or actual date, date-time, or age when allergy or intolerance was
  /// identified.
  final FhirString? onsetString;
  final Element? onsetStringElement;

  /// [recordedDate] /// The recordedDate represents when this particular AllergyIntolerance record
  /// was created in the system, which is often a system-generated date.
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;

  /// [recorder] /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter] /// The source of the information about the allergy that is recorded.
  final Reference? asserter;

  /// [lastOccurrence] /// Represents the date and/or time of the last known occurrence of a reaction
  /// event.
  final FhirDateTime? lastOccurrence;
  final Element? lastOccurrenceElement;

  /// [note] /// Additional narrative about the propensity for the Adverse Reaction, not
  /// captured in other fields.
  final List<Annotation>? note;

  /// [reaction] /// Details about each adverse reaction event linked to exposure to the
  /// identified substance.
  final List<AllergyIntoleranceReaction>? reaction;
  @override
  AllergyIntolerance clone() => throw UnimplementedError();
  AllergyIntolerance copy({
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
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    FhirCode? type,
    Element? typeElement,
    List<FhirCode>? category,
    List<Element>? categoryElement,
    FhirCode? criticality,
    Element? criticalityElement,
    CodeableConcept? code,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    Element? onsetDateTimeElement,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    FhirString? onsetString,
    Element? onsetStringElement,
    FhirDateTime? recordedDate,
    Element? recordedDateElement,
    Reference? recorder,
    Reference? asserter,
    FhirDateTime? lastOccurrence,
    Element? lastOccurrenceElement,
    List<Annotation>? note,
    List<AllergyIntoleranceReaction>? reaction,
  }) {
    return AllergyIntolerance(
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
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      category: category ?? this.category,
      categoryElement: categoryElement ?? this.categoryElement,
      criticality: criticality ?? this.criticality,
      criticalityElement: criticalityElement ?? this.criticalityElement,
      code: code ?? this.code,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      onsetDateTime: onsetDateTime ?? this.onsetDateTime,
      onsetDateTimeElement: onsetDateTimeElement ?? this.onsetDateTimeElement,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      onsetStringElement: onsetStringElement ?? this.onsetStringElement,
      recordedDate: recordedDate ?? this.recordedDate,
      recordedDateElement: recordedDateElement ?? this.recordedDateElement,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      lastOccurrence: lastOccurrence ?? this.lastOccurrence,
      lastOccurrenceElement:
          lastOccurrenceElement ?? this.lastOccurrenceElement,
      note: note ?? this.note,
      reaction: reaction ?? this.reaction,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AllergyIntoleranceReaction] /// Details about each adverse reaction event linked to exposure to the
/// identified substance.
class AllergyIntoleranceReaction extends BackboneElement {
  AllergyIntoleranceReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.descriptionElement,
    this.onset,
    this.onsetElement,
    this.severity,
    this.severityElement,
    this.exposureRoute,
    this.note,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substance] /// Identification of the specific substance (or pharmaceutical product)
  /// considered to be responsible for the Adverse Reaction event. Note: the
  /// substance for a specific reaction may be different from the substance
  /// identified as the cause of the risk, but it must be consistent with it. For
  /// instance, it may be a more specific substance (e.g. a brand medication) or
  /// a composite product that includes the identified substance. It must be
  /// clinically safe to only process the 'code' and ignore the
  /// 'reaction.substance'. If a receiving system is unable to confirm that
  /// AllergyIntolerance.reaction.substance falls within the semantic scope of
  /// AllergyIntolerance.code, then the receiving system should ignore
  /// AllergyIntolerance.reaction.substance.
  final CodeableConcept? substance;

  /// [manifestation] /// Clinical symptoms and/or signs that are observed or associated with the
  /// adverse reaction event.
  final List<CodeableConcept> manifestation;

  /// [description] /// Text description about the reaction as a whole, including details of the
  /// manifestation if required.
  final FhirString? description;
  final Element? descriptionElement;

  /// [onset] /// Record of the date and/or time of the onset of the Reaction.
  final FhirDateTime? onset;
  final Element? onsetElement;

  /// [severity] /// Clinical assessment of the severity of the reaction event as a whole,
  /// potentially considering multiple different manifestations.
  final FhirCode? severity;
  final Element? severityElement;

  /// [exposureRoute] /// Identification of the route by which the subject was exposed to the
  /// substance.
  final CodeableConcept? exposureRoute;

  /// [note] /// Additional text about the adverse reaction event not captured in other
  /// fields.
  final List<Annotation>? note;
  @override
  AllergyIntoleranceReaction clone() => throw UnimplementedError();
  AllergyIntoleranceReaction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    List<CodeableConcept>? manifestation,
    FhirString? description,
    Element? descriptionElement,
    FhirDateTime? onset,
    Element? onsetElement,
    FhirCode? severity,
    Element? severityElement,
    CodeableConcept? exposureRoute,
    List<Annotation>? note,
  }) {
    return AllergyIntoleranceReaction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      manifestation: manifestation ?? this.manifestation,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      onset: onset ?? this.onset,
      onsetElement: onsetElement ?? this.onsetElement,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      exposureRoute: exposureRoute ?? this.exposureRoute,
      note: note ?? this.note,
    );
  }
}
