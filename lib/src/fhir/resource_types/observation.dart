import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Observation extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final Reference? subject;
  final List<Reference>? focus;
  final Reference? encounter;
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;
  final Period? effectivePeriod;
  final Timing? effectiveTiming;
  final FhirInstant? effectiveInstant;
  final Element? effectiveInstantElement;
  final FhirInstant? issued;
  final Element? issuedElement;
  final List<Reference>? performer;
  final Quantity? valueQuantity;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;
  final Range? valueRange;
  final Ratio? valueRatio;
  final SampledData? valueSampledData;
  final FhirTime? valueTime;
  final Element? valueTimeElement;
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;
  final Period? valuePeriod;
  final CodeableConcept? dataAbsentReason;
  final List<CodeableConcept>? interpretation;
  final List<Annotation>? note;
  final CodeableConcept? bodySite;
  final CodeableConcept? method;
  final Reference? specimen;
  final Reference? device;
  final List<ObservationReferenceRange>? referenceRange;
  final List<Reference>? hasMember;
  final List<Reference>? derivedFrom;
  final List<ObservationComponent>? component;

  Observation({
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
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.category,
    required this.code,
    this.subject,
    this.focus,
    this.encounter,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.effectiveTiming,
    this.effectiveInstant,
    this.effectiveInstantElement,
    this.issued,
    this.issuedElement,
    this.performer,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.valueTimeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.note,
    this.bodySite,
    this.method,
    this.specimen,
    this.device,
    this.referenceRange,
    this.hasMember,
    this.derivedFrom,
    this.component,
  }) : super(resourceType: R4ResourceType.Observation);

  @override
  Observation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ObservationReferenceRange extends BackboneElement {
  final Quantity? low;
  final Quantity? high;
  final CodeableConcept? type;
  final List<CodeableConcept>? appliesTo;
  final Range? age;
  final FhirString? text;
  final Element? textElement;

  ObservationReferenceRange({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    this.textElement,
  });

  @override
  ObservationReferenceRange clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ObservationComponent extends BackboneElement {
  final CodeableConcept code;
  final Quantity? valueQuantity;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;
  final Range? valueRange;
  final Ratio? valueRatio;
  final SampledData? valueSampledData;
  final FhirTime? valueTime;
  final Element? valueTimeElement;
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;
  final Period? valuePeriod;
  final CodeableConcept? dataAbsentReason;
  final List<CodeableConcept>? interpretation;
  final List<ObservationReferenceRange>? referenceRange;

  ObservationComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.valueTimeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
  });

  @override
  ObservationComponent clone() => throw UnimplementedError();
}
