import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class SupplyDelivery extends Resource {
  SupplyDelivery({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.patient,
    this.type,
    this.suppliedItem,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.supplier,
    this.destination,
    this.receiver,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String? status;
  ToOne<Reference>? patient = ToOne<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<SupplyDeliverySuppliedItem>? suppliedItem =
      ToOne<SupplyDeliverySuppliedItem>();
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Timing>? occurrenceTiming = ToOne<Timing>();
  ToOne<Reference>? supplier = ToOne<Reference>();
  ToOne<Reference>? destination = ToOne<Reference>();
  ToMany<Reference>? receiver = ToMany<Reference>();
}

@Entity()
class SupplyDeliverySuppliedItem {
  SupplyDeliverySuppliedItem({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<CodeableConcept>? itemCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? itemReference = ToOne<Reference>();
}
