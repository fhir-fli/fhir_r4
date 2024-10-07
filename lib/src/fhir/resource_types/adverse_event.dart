import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class AdverseEvent extends DomainResource {
  final Identifier? identifier;
  final FhirCode actuality;
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

@override
AdverseEvent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdverseEventSuspectEntity extends BackboneElement {
  final Reference instance;
  final List<AdverseEventCausality>? causality;

  AdverseEventSuspectEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.instance,
    this.causality,
  });

@override
AdverseEventSuspectEntity clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdverseEventCausality extends BackboneElement {
  final CodeableConcept? assessment;
  final FhirString? productRelatedness;
  final Element? productRelatednessElement;
  final Reference? author;
  final CodeableConcept? method;

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

@override
AdverseEventCausality clone() => throw UnimplementedError();
}

