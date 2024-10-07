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
  final FhirDateTime? effectiveFhirDateTime;
  final Element? effectiveFhirDateTimeElement;
  final Period? effectivePeriod;
  final Timing? effectiveTiming;
  final FhirInstant? effectiveFhirInstant;
  final Element? effectiveFhirInstantElement;
  final FhirInstant? issued;
  final Element? issuedElement;
  final List<Reference>? performer;
  final Quantity? valueQuantity;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirInteger? valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final Range? valueRange;
  final Ratio? valueRatio;
  final SampledData? valueSampledData;
  final FhirTime? valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirDateTime? valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final Period? valuePeriod;
  final CodeableConcept? dataAbsentReason;
  final List<CodeableConcept>? interpretation;
  final List<Annotation>? note;
  final CodeableConcept? bodySite;
  final CodeableConcept? method;
  final Reference? specimen;
  final Reference? device;
  final List<BackboneElement>? referenceRange;
  final List<Reference>? hasMember;
  final List<Reference>? derivedFrom;
  final List<BackboneElement>? component;

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
    this.effectiveFhirDateTime,
this.effectiveFhirDateTimeElement,
    this.effectivePeriod,
    this.effectiveTiming,
    this.effectiveFhirInstant,
this.effectiveFhirInstantElement,
    this.issued,
this.issuedElement,
    this.performer,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueFhirInteger,
this.valueFhirIntegerElement,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueFhirTime,
this.valueFhirTimeElement,
    this.valueFhirDateTime,
this.valueFhirDateTimeElement,
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
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirInteger? valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final Range? valueRange;
  final Ratio? valueRatio;
  final SampledData? valueSampledData;
  final FhirTime? valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirDateTime? valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final Period? valuePeriod;
  final CodeableConcept? dataAbsentReason;
  final List<CodeableConcept>? interpretation;
  final List<dynamic>? referenceRange;

  ObservationComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueFhirInteger,
this.valueFhirIntegerElement,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueFhirTime,
this.valueFhirTimeElement,
    this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
  });

@override
ObservationComponent clone() => throw UnimplementedError();
}

