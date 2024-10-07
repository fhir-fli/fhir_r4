import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Specimen extends DomainResource {
  final List<Identifier>? identifier;
  final Identifier? accessionIdentifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? type;
  final Reference? subject;
  final FhirDateTime? receivedTime;
  final Element? receivedTimeElement;
  final List<Reference>? parent;
  final List<Reference>? request;
  final SpecimenCollection? collection;
  final List<SpecimenProcessing>? processing;
  final List<SpecimenContainer>? container;
  final List<CodeableConcept>? condition;
  final List<Annotation>? note;

  Specimen({
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
    this.accessionIdentifier,
    this.status,
this.statusElement,
    this.type,
    this.subject,
    this.receivedTime,
this.receivedTimeElement,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
  }) : super(resourceType: R4ResourceType.Specimen);

@override
Specimen clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SpecimenCollection extends BackboneElement {
  final Reference? collector;
  final FhirDateTime? collectedDateTime;
  final Element? collectedDateTimeElement;
  final Period? collectedPeriod;
  final FhirDuration? duration;
  final Quantity? quantity;
  final CodeableConcept? method;
  final CodeableConcept? bodySite;
  final CodeableConcept? fastingStatusCodeableConcept;
  final FhirDuration? fastingStatusDuration;

  SpecimenCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.collectedDateTime,
this.collectedDateTimeElement,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
  });

@override
SpecimenCollection clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SpecimenProcessing extends BackboneElement {
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? procedure;
  final List<Reference>? additive;
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;
  final Period? timePeriod;

  SpecimenProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
this.timeDateTimeElement,
    this.timePeriod,
  });

@override
SpecimenProcessing clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SpecimenContainer extends BackboneElement {
  final List<Identifier>? identifier;
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? type;
  final Quantity? capacity;
  final Quantity? specimenQuantity;
  final CodeableConcept? additiveCodeableConcept;
  final Reference? additiveReference;

  SpecimenContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
this.descriptionElement,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

@override
SpecimenContainer clone() => throw UnimplementedError();
}

