import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class AdverseEvent extends DomainResource {
  final Identifier? identifier;
  final FhirCode? actuality;
  final Element? actualityElement;
  final List<CodeableConcept>? category;
  final CodeableConcept? event;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirDateTime? detected;
  final Element? detectedElement;
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;
  final List<Reference>? resultingCondition;
  final Reference? location;
  final CodeableConcept? seriousness;
  final CodeableConcept? severity;
  final CodeableConcept? outcome;
  final Reference? recorder;
  final List<Reference>? contributor;
  final List<AdverseEventSuspectEntity>? suspectEntity;
  final List<Reference>? subjectMedicalHistory;
  final List<Reference>? referenceDocument;
  final List<Reference>? study;

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
    this.actuality,
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
  }): super(resourceType: R4ResourceType.AdverseEvent);

@override
AdverseEvent clone() => this;

}


@Data()
@JsonCodable()
class AdverseEventSuspectEntity {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference instance;
  final List<AdverseEventCausality>? causality;

  AdverseEventSuspectEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.instance,
    this.causality,
  });

}


@Data()
@JsonCodable()
class AdverseEventCausality {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? assessment;
  final FhirString? productRelatedness;
  final Element? productRelatednessElement;
  final Reference? author;
  final CodeableConcept? method;

  AdverseEventCausality({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.productRelatednessElement,
    this.author,
    this.method,
  });

}



