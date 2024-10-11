import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class SupplyRequest extends Resource {
  SupplyRequest({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.category,
    this.priority,
    this.itemCodeableConcept,
    this.itemReference,
    required this.quantity,
    this.parameter,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo,
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
  String? status;
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  String? priority;
  ToOne<CodeableConcept>? itemCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? itemReference = ToOne<Reference>();
  ToOne<Quantity> quantity = ToOne<Quantity>();
  ToMany<SupplyRequestParameter>? parameter = ToMany<SupplyRequestParameter>();
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Timing>? occurrenceTiming = ToOne<Timing>();
  String? authoredOn;
  ToOne<Reference>? requester = ToOne<Reference>();
  ToMany<Reference>? supplier = ToMany<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToOne<Reference>? deliverFrom = ToOne<Reference>();
  ToOne<Reference>? deliverTo = ToOne<Reference>();
}

@Entity()
class SupplyRequestParameter {
  SupplyRequestParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Range>? valueRange = ToOne<Range>();
  bool? valueBoolean;
}
