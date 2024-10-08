import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'supply_delivery.g.dart';

/// [SupplyDelivery] /// Record of delivery of what is supplied.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.SupplyDelivery,
            fhirType: 'SupplyDelivery');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the supply delivery event that is used to identify it across
  /// multiple disparate systems.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular event is a component or step.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// A code specifying the state of the dispense event.
  @JsonKey(name: 'status')
  final SupplyDeliveryStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [patient] /// A link to a resource representing the person whom the delivered item is
  /// for.
  @JsonKey(name: 'patient')
  final Reference? patient;

  /// [type] /// Indicates the type of dispensing event that is performed. Examples include:
  /// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  /// etc.
  @JsonKey(name: 'type')
  final SupplyItemType? type;

  /// [suppliedItem] /// The item that is being delivered or has been supplied.
  @JsonKey(name: 'suppliedItem')
  final SupplyDeliverySuppliedItem? suppliedItem;

  /// [occurrenceDateTime] /// The date or time(s) the activity occurred.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The date or time(s) the activity occurred.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// The date or time(s) the activity occurred.
  @JsonKey(name: 'occurrenceTiming')
  final Timing? occurrenceTiming;

  /// [supplier] /// The individual responsible for dispensing the medication, supplier or
  /// device.
  @JsonKey(name: 'supplier')
  final Reference? supplier;

  /// [destination] /// Identification of the facility/location where the Supply was shipped to, as
  /// part of the dispense event.
  @JsonKey(name: 'destination')
  final Reference? destination;

  /// [receiver] /// Identifies the person who picked up the Supply.
  @JsonKey(name: 'receiver')
  final List<Reference>? receiver;
  factory SupplyDelivery.fromJson(Map<String, dynamic> json) =>
      _$SupplyDeliveryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SupplyDeliveryToJson(this);

  @override
  SupplyDelivery clone() => throw UnimplementedError();
  @override
  SupplyDelivery copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    SupplyDeliveryStatus? status,
    Element? statusElement,
    Reference? patient,
    SupplyItemType? type,
    SupplyDeliverySuppliedItem? suppliedItem,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    Reference? supplier,
    Reference? destination,
    List<Reference>? receiver,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SupplyDelivery.fromYaml(dynamic yaml) => yaml is String
      ? SupplyDelivery.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SupplyDelivery.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SupplyDelivery cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SupplyDelivery.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyDelivery.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SupplyDeliverySuppliedItem] /// The item that is being delivered or has been supplied.
@JsonSerializable()
class SupplyDeliverySuppliedItem extends BackboneElement {
  SupplyDeliverySuppliedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.itemCodeableConcept,
    this.itemReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SupplyDeliverySuppliedItem');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount of supply that has been dispensed. Includes unit of measure.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [itemCodeableConcept] /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a code
  /// that identifies the item from a known list.
  @JsonKey(name: 'itemCodeableConcept')
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a code
  /// that identifies the item from a known list.
  @JsonKey(name: 'itemReference')
  final Reference? itemReference;
  factory SupplyDeliverySuppliedItem.fromJson(Map<String, dynamic> json) =>
      _$SupplyDeliverySuppliedItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SupplyDeliverySuppliedItemToJson(this);

  @override
  SupplyDeliverySuppliedItem clone() => throw UnimplementedError();
  @override
  SupplyDeliverySuppliedItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SupplyDeliverySuppliedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SupplyDeliverySuppliedItem.fromYaml(dynamic yaml) => yaml is String
      ? SupplyDeliverySuppliedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SupplyDeliverySuppliedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SupplyDeliverySuppliedItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SupplyDeliverySuppliedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyDeliverySuppliedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
