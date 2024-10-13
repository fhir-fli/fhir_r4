// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSupplyRequest {
  ObjectBoxSupplyRequest({
    this.id,
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
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? category,
    this.priority,
    ObjectBoxElement? priorityElement,
    ObjectBoxCodeableConcept? itemCodeableConcept,
    ObjectBoxReference? itemReference,
    ObjectBoxQuantity? quantity,
    List<ObjectBoxSupplyRequestParameter>? parameter,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxTiming? occurrenceTiming,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    ObjectBoxReference? requester,
    List<ObjectBoxReference>? supplier,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    ObjectBoxReference? deliverFrom,
    ObjectBoxReference? deliverTo,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.category.target = category;
    this.priorityElement.target = priorityElement;
    this.itemCodeableConcept.target = itemCodeableConcept;
    this.itemReference.target = itemReference;
    this.quantity.target = quantity;
    this.parameter.addAll(parameter ?? []);
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.occurrenceTiming.target = occurrenceTiming;
    this.authoredOnElement.target = authoredOnElement;
    this.requester.target = requester;
    this.supplier.addAll(supplier ?? []);
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.deliverFrom.target = deliverFrom;
    this.deliverTo.target = deliverTo;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> itemReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxSupplyRequestParameter> parameter =
      ToMany<ObjectBoxSupplyRequestParameter>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> occurrenceTiming = ToOne<ObjectBoxTiming>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requester = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supplier = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> deliverFrom = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> deliverTo = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSupplyRequestParameter {
  ObjectBoxSupplyRequestParameter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.valueBooleanElement.target = valueBooleanElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
}
