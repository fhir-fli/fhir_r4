// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSupplyDelivery {
  ObjectBoxSupplyDelivery({
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
    this.status,
    this.statusElement,
    this.patient,
    this.type,
    this.suppliedItem,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.supplier,
    this.destination,
    this.receiver,
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
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxSupplyDeliverySuppliedItem>? suppliedItem =
      ToOne<ObjectBoxSupplyDeliverySuppliedItem>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming>? occurrenceTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxReference>? supplier = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? destination = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? receiver = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSupplyDeliverySuppliedItem {
  ObjectBoxSupplyDeliverySuppliedItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.quantity,
    this.itemCodeableConcept,
    this.itemReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? itemReference = ToOne<ObjectBoxReference>();
}
