import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SupplyRequest] /// A record of a request for a medication, substance or device used in the
/// healthcare setting.
class SupplyRequest extends DomainResource {
  SupplyRequest({
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
    this.status,
    this.statusElement,
    this.category,
    this.priority,
    this.priorityElement,
    required this.itemCodeableConcept,
    required this.itemReference,
    required this.quantity,
    this.parameter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.authoredOnElement,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo,
  }) : super(resourceType: R4ResourceType.SupplyRequest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this SupplyRequest by the author and/or
  /// other systems. These identifiers remain constant as the resource is updated
  /// and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Status of the supply request.
  final FhirCode? status;
  final Element? statusElement;

  /// [category] /// Category of supply, e.g. central, non-stock, etc. This is used to support
  /// work flows associated with the supply process.
  final CodeableConcept? category;

  /// [priority] /// Indicates how quickly this SupplyRequest should be addressed with respect
  /// to other requests.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [itemCodeableConcept] /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies the
  /// item from a known list.
  final CodeableConcept itemCodeableConcept;

  /// [itemReference] /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies the
  /// item from a known list.
  final Reference itemReference;

  /// [quantity] /// The amount that is being ordered of the indicated item.
  final Quantity quantity;

  /// [parameter] /// Specific parameters for the ordered item. For example, the size of the
  /// indicated item.
  final List<SupplyRequestParameter>? parameter;

  /// [occurrenceDateTime] /// When the request should be fulfilled.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// When the request should be fulfilled.
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// When the request should be fulfilled.
  final Timing? occurrenceTiming;

  /// [authoredOn] /// When the request was made.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [requester] /// The device, practitioner, etc. who initiated the request.
  final Reference? requester;

  /// [supplier] /// Who is intended to fulfill the request.
  final List<Reference>? supplier;

  /// [reasonCode] /// The reason why the supply item was requested.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// The reason why the supply item was requested.
  final List<Reference>? reasonReference;

  /// [deliverFrom] /// Where the supply is expected to come from.
  final Reference? deliverFrom;

  /// [deliverTo] /// Where the supply is destined to go.
  final Reference? deliverTo;
  @override
  SupplyRequest clone() => throw UnimplementedError();
  SupplyRequest copy({
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
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? category,
    FhirCode? priority,
    Element? priorityElement,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    Quantity? quantity,
    List<SupplyRequestParameter>? parameter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
    Reference? requester,
    List<Reference>? supplier,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? deliverFrom,
    Reference? deliverTo,
  }) {
    return SupplyRequest(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      quantity: quantity ?? this.quantity,
      parameter: parameter ?? this.parameter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
      requester: requester ?? this.requester,
      supplier: supplier ?? this.supplier,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      deliverFrom: deliverFrom ?? this.deliverFrom,
      deliverTo: deliverTo ?? this.deliverTo,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SupplyRequestParameter] /// Specific parameters for the ordered item. For example, the size of the
/// indicated item.
class SupplyRequestParameter extends BackboneElement {
  SupplyRequestParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    this.valueBooleanElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// [valueCodeableConcept] /// The value of the device detail.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// The value of the device detail.
  final Quantity? valueQuantity;

  /// [valueRange] /// The value of the device detail.
  final Range? valueRange;

  /// [valueBoolean] /// The value of the device detail.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  @override
  SupplyRequestParameter clone() => throw UnimplementedError();
  SupplyRequestParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
  }) {
    return SupplyRequestParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
    );
  }
}
