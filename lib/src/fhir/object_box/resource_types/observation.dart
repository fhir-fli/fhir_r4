// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxObservation {
  ObjectBoxObservation({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    List<ObjectBoxReference>? focus,
    ObjectBoxReference? encounter,
    this.effectiveDateTime,
    ObjectBoxElement? effectiveDateTimeElement,
    ObjectBoxPeriod? effectivePeriod,
    ObjectBoxTiming? effectiveTiming,
    this.effectiveInstant,
    ObjectBoxElement? effectiveInstantElement,
    this.issued,
    ObjectBoxElement? issuedElement,
    List<ObjectBoxReference>? performer,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    ObjectBoxRange? valueRange,
    ObjectBoxRatio? valueRatio,
    ObjectBoxSampledData? valueSampledData,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    ObjectBoxPeriod? valuePeriod,
    ObjectBoxCodeableConcept? dataAbsentReason,
    List<ObjectBoxCodeableConcept>? interpretation,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxCodeableConcept? bodySite,
    ObjectBoxCodeableConcept? method,
    ObjectBoxReference? specimen,
    ObjectBoxReference? device,
    List<ObjectBoxObservationReferenceRange>? referenceRange,
    List<ObjectBoxReference>? hasMember,
    List<ObjectBoxReference>? derivedFrom,
    List<ObjectBoxObservationComponent>? component,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.category.addAll(category ?? []);
    this.code.target = code;
    this.subject.target = subject;
    this.focus.addAll(focus ?? []);
    this.encounter.target = encounter;
    this.effectiveDateTimeElement.target = effectiveDateTimeElement;
    this.effectivePeriod.target = effectivePeriod;
    this.effectiveTiming.target = effectiveTiming;
    this.effectiveInstantElement.target = effectiveInstantElement;
    this.issuedElement.target = issuedElement;
    this.performer.addAll(performer ?? []);
    this.valueQuantity.target = valueQuantity;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueStringElement.target = valueStringElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueRange.target = valueRange;
    this.valueRatio.target = valueRatio;
    this.valueSampledData.target = valueSampledData;
    this.valueTimeElement.target = valueTimeElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valuePeriod.target = valuePeriod;
    this.dataAbsentReason.target = dataAbsentReason;
    this.interpretation.addAll(interpretation ?? []);
    this.note.addAll(note ?? []);
    this.bodySite.target = bodySite;
    this.method.target = method;
    this.specimen.target = specimen;
    this.device.target = device;
    this.referenceRange.addAll(referenceRange ?? []);
    this.hasMember.addAll(hasMember ?? []);
    this.derivedFrom.addAll(derivedFrom ?? []);
    this.component.addAll(component ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> focus = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? effectiveDateTime;
  ToOne<ObjectBoxElement> effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> effectiveTiming = ToOne<ObjectBoxTiming>();
  String? effectiveInstant;
  ToOne<ObjectBoxElement> effectiveInstantElement = ToOne<ObjectBoxElement>();
  String? issued;
  ToOne<ObjectBoxElement> issuedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> performer = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxSampledData> valueSampledData = ToOne<ObjectBoxSampledData>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> dataAbsentReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> interpretation =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept> bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> specimen = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> device = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxObservationReferenceRange> referenceRange =
      ToMany<ObjectBoxObservationReferenceRange>();
  ToMany<ObjectBoxReference> hasMember = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> derivedFrom = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxObservationComponent> component =
      ToMany<ObjectBoxObservationComponent>();
}

@Entity()
class ObjectBoxObservationReferenceRange {
  ObjectBoxObservationReferenceRange({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? low,
    ObjectBoxQuantity? high,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? appliesTo,
    ObjectBoxRange? age,
    this.text,
    ObjectBoxElement? textElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.low.target = low;
    this.high.target = high;
    this.type.target = type;
    this.appliesTo.addAll(appliesTo ?? []);
    this.age.target = age;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> low = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> high = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> appliesTo =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRange> age = ToOne<ObjectBoxRange>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxObservationComponent {
  ObjectBoxObservationComponent({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    ObjectBoxRange? valueRange,
    ObjectBoxRatio? valueRatio,
    ObjectBoxSampledData? valueSampledData,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    ObjectBoxPeriod? valuePeriod,
    ObjectBoxCodeableConcept? dataAbsentReason,
    List<ObjectBoxCodeableConcept>? interpretation,
    List<ObjectBoxObservationReferenceRange>? referenceRange,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.valueQuantity.target = valueQuantity;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueStringElement.target = valueStringElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueRange.target = valueRange;
    this.valueRatio.target = valueRatio;
    this.valueSampledData.target = valueSampledData;
    this.valueTimeElement.target = valueTimeElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valuePeriod.target = valuePeriod;
    this.dataAbsentReason.target = dataAbsentReason;
    this.interpretation.addAll(interpretation ?? []);
    this.referenceRange.addAll(referenceRange ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxSampledData> valueSampledData = ToOne<ObjectBoxSampledData>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> dataAbsentReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> interpretation =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxObservationReferenceRange> referenceRange =
      ToMany<ObjectBoxObservationReferenceRange>();
}
