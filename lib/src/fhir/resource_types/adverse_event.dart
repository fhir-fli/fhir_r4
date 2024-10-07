import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [AdverseEvent] /// Actual or potential/avoided event causing unintended physical injury
/// resulting from or contributed to by medical care, a research study or other
/// healthcare setting factors that requires additional monitoring, treatment,
/// or hospitalization, or that results in death.
class AdverseEvent extends DomainResource {
  AdverseEvent({
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
    required this.actuality,
    this.actualityElement,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.dateElement,
    this.detected,
    this.detectedElement,
    this.recordedDate,
    this.recordedDateElement,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
  }) : super(resourceType: R4ResourceType.AdverseEvent);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this adverse event by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final Identifier? identifier;

  /// [actuality] /// Whether the event actually happened, or just had the potential to. Note
  /// that this is independent of whether anyone was affected or harmed or how
  /// severely.
  final FhirCode actuality;
  final Element? actualityElement;

  /// [category] /// The overall type of event, intended for search and filtering purposes.
  final List<CodeableConcept>? category;

  /// [event] /// This element defines the specific type of event that occurred or that was
  /// prevented from occurring.
  final CodeableConcept? event;

  /// [subject] /// This subject or group impacted by the event.
  final Reference subject;

  /// [encounter] /// The Encounter during which AdverseEvent was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [date] /// The date (and perhaps time) when the adverse event occurred.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [detected] /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  final FhirDateTime? detected;
  final Element? detectedElement;

  /// [recordedDate] /// The date on which the existence of the AdverseEvent was first recorded.
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;

  /// [resultingCondition] /// Includes information about the reaction that occurred as a result of
  /// exposure to a substance (for example, a drug or a chemical).
  final List<Reference>? resultingCondition;

  /// [location] /// The information about where the adverse event occurred.
  final Reference? location;

  /// [seriousness] /// Assessment whether this event was of real importance.
  final CodeableConcept? seriousness;

  /// [severity] /// Describes the severity of the adverse event, in relation to the subject.
  /// Contrast to AdverseEvent.seriousness - a severe rash might not be serious,
  /// but a mild heart problem is.
  final CodeableConcept? severity;

  /// [outcome] /// Describes the type of outcome from the adverse event.
  final CodeableConcept? outcome;

  /// [recorder] /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  final Reference? recorder;

  /// [contributor] /// Parties that may or should contribute or have contributed information to
  /// the adverse event, which can consist of one or more activities. Such
  /// information includes information leading to the decision to perform the
  /// activity and how to perform the activity (e.g. consultant), information
  /// that the activity itself seeks to reveal (e.g. informant of clinical
  /// history), or information about what activity was performed (e.g. informant
  /// witness).
  final List<Reference>? contributor;

  /// [suspectEntity] /// Describes the entity that is suspected to have caused the adverse event.
  final List<AdverseEventSuspectEntity>? suspectEntity;

  /// [subjectMedicalHistory] /// AdverseEvent.subjectMedicalHistory.
  final List<Reference>? subjectMedicalHistory;

  /// [referenceDocument] /// AdverseEvent.referenceDocument.
  final List<Reference>? referenceDocument;

  /// [study] /// AdverseEvent.study.
  final List<Reference>? study;
  @override
  AdverseEvent clone() => throw UnimplementedError();
  AdverseEvent copy({
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
    Identifier? identifier,
    FhirCode? actuality,
    Element? actualityElement,
    List<CodeableConcept>? category,
    CodeableConcept? event,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    Element? dateElement,
    FhirDateTime? detected,
    Element? detectedElement,
    FhirDateTime? recordedDate,
    Element? recordedDateElement,
    List<Reference>? resultingCondition,
    Reference? location,
    CodeableConcept? seriousness,
    CodeableConcept? severity,
    CodeableConcept? outcome,
    Reference? recorder,
    List<Reference>? contributor,
    List<AdverseEventSuspectEntity>? suspectEntity,
    List<Reference>? subjectMedicalHistory,
    List<Reference>? referenceDocument,
    List<Reference>? study,
  }) {
    return AdverseEvent(
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
      actuality: actuality ?? this.actuality,
      actualityElement: actualityElement ?? this.actualityElement,
      category: category ?? this.category,
      event: event ?? this.event,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      detected: detected ?? this.detected,
      detectedElement: detectedElement ?? this.detectedElement,
      recordedDate: recordedDate ?? this.recordedDate,
      recordedDateElement: recordedDateElement ?? this.recordedDateElement,
      resultingCondition: resultingCondition ?? this.resultingCondition,
      location: location ?? this.location,
      seriousness: seriousness ?? this.seriousness,
      severity: severity ?? this.severity,
      outcome: outcome ?? this.outcome,
      recorder: recorder ?? this.recorder,
      contributor: contributor ?? this.contributor,
      suspectEntity: suspectEntity ?? this.suspectEntity,
      subjectMedicalHistory:
          subjectMedicalHistory ?? this.subjectMedicalHistory,
      referenceDocument: referenceDocument ?? this.referenceDocument,
      study: study ?? this.study,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AdverseEventSuspectEntity] /// Describes the entity that is suspected to have caused the adverse event.
class AdverseEventSuspectEntity extends BackboneElement {
  AdverseEventSuspectEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.instance,
    this.causality,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [instance] /// Identifies the actual instance of what caused the adverse event. May be a
  /// substance, medication, medication administration, medication statement or a
  /// device.
  final Reference instance;

  /// [causality] /// Information on the possible cause of the event.
  final List<AdverseEventCausality>? causality;
  @override
  AdverseEventSuspectEntity clone() => throw UnimplementedError();
  AdverseEventSuspectEntity copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? instance,
    List<AdverseEventCausality>? causality,
  }) {
    return AdverseEventSuspectEntity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      instance: instance ?? this.instance,
      causality: causality ?? this.causality,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AdverseEventCausality] /// Information on the possible cause of the event.
class AdverseEventCausality extends BackboneElement {
  AdverseEventCausality({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.productRelatednessElement,
    this.author,
    this.method,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [assessment] /// Assessment of if the entity caused the event.
  final CodeableConcept? assessment;

  /// [productRelatedness] /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  final FhirString? productRelatedness;
  final Element? productRelatednessElement;

  /// [author] /// AdverseEvent.suspectEntity.causalityAuthor.
  final Reference? author;

  /// [method] /// ProbabilityScale | Bayesian | Checklist.
  final CodeableConcept? method;
  @override
  AdverseEventCausality clone() => throw UnimplementedError();
  AdverseEventCausality copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? assessment,
    FhirString? productRelatedness,
    Element? productRelatednessElement,
    Reference? author,
    CodeableConcept? method,
  }) {
    return AdverseEventCausality(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      assessment: assessment ?? this.assessment,
      productRelatedness: productRelatedness ?? this.productRelatedness,
      productRelatednessElement:
          productRelatednessElement ?? this.productRelatednessElement,
      author: author ?? this.author,
      method: method ?? this.method,
    );
  }
}
