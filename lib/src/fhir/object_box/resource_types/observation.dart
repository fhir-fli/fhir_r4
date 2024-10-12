// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxObservation {
  ObjectBoxObservation({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? focus = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? effectiveDateTime;
  ToOne<ObjectBoxElement>? effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming>? effectiveTiming = ToOne<ObjectBoxTiming>();
  String? effectiveInstant;
  ToOne<ObjectBoxElement>? effectiveInstantElement = ToOne<ObjectBoxElement>();
  String? issued;
  ToOne<ObjectBoxElement>? issuedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? performer = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange>? valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxSampledData>? valueSampledData = ToOne<ObjectBoxSampledData>();
  String? valueTime;
  ToOne<ObjectBoxElement>? valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? dataAbsentReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? interpretation =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept>? bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? specimen = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? device = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxObservationReferenceRange>? referenceRange =
      ToMany<ObjectBoxObservationReferenceRange>();
  ToMany<ObjectBoxReference>? hasMember = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? derivedFrom = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxObservationComponent>? component =
      ToMany<ObjectBoxObservationComponent>();
}

@Entity()
class ObjectBoxObservationReferenceRange {
  ObjectBoxObservationReferenceRange({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity>? low = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? high = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? appliesTo =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRange>? age = ToOne<ObjectBoxRange>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxObservationComponent {
  ObjectBoxObservationComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange>? valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxSampledData>? valueSampledData = ToOne<ObjectBoxSampledData>();
  String? valueTime;
  ToOne<ObjectBoxElement>? valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? dataAbsentReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? interpretation =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxObservationReferenceRange>? referenceRange =
      ToMany<ObjectBoxObservationReferenceRange>();
}
