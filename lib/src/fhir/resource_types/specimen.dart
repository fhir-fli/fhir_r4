import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Specimen extends DomainResource {
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
  @override
  Specimen clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class SpecimenCollection extends BackboneElement {
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
  @override
  SpecimenCollection clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class SpecimenProcessing extends BackboneElement {
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

  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? procedure;
  final List<Reference>? additive;
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;
  final Period? timePeriod;
  @override
  SpecimenProcessing clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class SpecimenContainer extends BackboneElement {
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

  final List<Identifier>? identifier;
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? type;
  final Quantity? capacity;
  final Quantity? specimenQuantity;
  final CodeableConcept? additiveCodeableConcept;
  final Reference? additiveReference;
  @override
  SpecimenContainer clone() => throw UnimplementedError();
}
