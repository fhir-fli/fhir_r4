// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSupplyDelivery {
  ObjectBoxSupplyDelivery({
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
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? partOf,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? patient,
    ObjectBoxCodeableConcept? type,
    ObjectBoxSupplyDeliverySuppliedItem? suppliedItem,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxTiming? occurrenceTiming,
    ObjectBoxReference? supplier,
    ObjectBoxReference? destination,
    List<ObjectBoxReference>? receiver,
  }) {
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
    this.patient.target = patient;
    this.type.target = type;
    this.suppliedItem.target = suppliedItem;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.occurrenceTiming.target = occurrenceTiming;
    this.supplier.target = supplier;
    this.destination.target = destination;
    this.receiver.addAll(receiver ?? []);
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
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxSupplyDeliverySuppliedItem> suppliedItem =
      ToOne<ObjectBoxSupplyDeliverySuppliedItem>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> occurrenceTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxReference> supplier = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> destination = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> receiver = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSupplyDeliverySuppliedItem {
  ObjectBoxSupplyDeliverySuppliedItem({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? quantity,
    ObjectBoxCodeableConcept? itemCodeableConcept,
    ObjectBoxReference? itemReference,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.quantity.target = quantity;
    this.itemCodeableConcept.target = itemCodeableConcept;
    this.itemReference.target = itemReference;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> itemReference = ToOne<ObjectBoxReference>();
}
