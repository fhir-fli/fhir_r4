import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SupplyDelivery] /// Record of delivery of what is supplied.
class SupplyDelivery extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the supply delivery event that is used to identify it across
  /// multiple disparate systems.
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status] /// A code specifying the state of the dispense event.
  final FhirCode? status;
  final Element? statusElement;

  /// [patient] /// A link to a resource representing the person whom the delivered item is
  /// for.
  final Reference? patient;

  /// [type] /// Indicates the type of dispensing event that is performed. Examples include:
  /// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  /// etc.
  final CodeableConcept? type;

  /// [suppliedItem] /// The item that is being delivered or has been supplied.
  final SupplyDeliverySuppliedItem? suppliedItem;

  /// [occurrenceDateTime] /// The date or time(s) the activity occurred.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The date or time(s) the activity occurred.
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// The date or time(s) the activity occurred.
  final Timing? occurrenceTiming;

  /// [supplier] /// The individual responsible for dispensing the medication, supplier or
  /// device.
  final Reference? supplier;

  /// [destination] /// Identification of the facility/location where the Supply was shipped to, as
  /// part of the dispense event.
  final Reference? destination;

  /// [receiver] /// Identifies the person who picked up the Supply.
  final List<Reference>? receiver;
  @override
  SupplyDelivery clone() => throw UnimplementedError();
  SupplyDelivery copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCode? status,
    Element? statusElement,
    Reference? patient,
    CodeableConcept? type,
    SupplyDeliverySuppliedItem? suppliedItem,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    Reference? supplier,
    Reference? destination,
    List<Reference>? receiver,
  }) {
    return SupplyDelivery(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      patient: patient ?? this.patient,
      type: type ?? this.type,
      suppliedItem: suppliedItem ?? this.suppliedItem,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      supplier: supplier ?? this.supplier,
      destination: destination ?? this.destination,
      receiver: receiver ?? this.receiver,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SupplyDeliverySuppliedItem] /// The item that is being delivered or has been supplied.
class SupplyDeliverySuppliedItem extends BackboneElement {
  SupplyDeliverySuppliedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.itemCodeableConcept,
    this.itemReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount of supply that has been dispensed. Includes unit of measure.
  final Quantity? quantity;

  /// [itemCodeableConcept] /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a code
  /// that identifies the item from a known list.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a code
  /// that identifies the item from a known list.
  final Reference? itemReference;
  @override
  SupplyDeliverySuppliedItem clone() => throw UnimplementedError();
  SupplyDeliverySuppliedItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
  }) {
    return SupplyDeliverySuppliedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
    );
  }
}
