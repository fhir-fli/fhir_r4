import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SupplyDelivery extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? patient;
  final CodeableConcept? type;
  final SupplyDeliverySuppliedItem? suppliedItem;
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final Timing? occurrenceTiming;
  final Reference? supplier;
  final Reference? destination;
  final List<Reference>? receiver;

  SupplyDelivery({
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
  }) : super(resourceType: R4ResourceType.SupplyDelivery);

@override
SupplyDelivery clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SupplyDeliverySuppliedItem extends BackboneElement {
  final Quantity? quantity;
  final CodeableConcept? itemCodeableConcept;
  final Reference? itemReference;

  SupplyDeliverySuppliedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.itemCodeableConcept,
    this.itemReference,
  });

@override
SupplyDeliverySuppliedItem clone() => throw UnimplementedError();
}

