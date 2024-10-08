import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'supply_request.g.dart';

/// [SupplyRequest] /// A record of a request for a medication, substance or device used in the
/// healthcare setting.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.SupplyRequest,
            fhirType: 'SupplyRequest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this SupplyRequest by the author and/or
  /// other systems. These identifiers remain constant as the resource is updated
  /// and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Status of the supply request.
  @JsonKey(name: 'status')
  final SupplyRequestStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [category] /// Category of supply, e.g. central, non-stock, etc. This is used to support
  /// work flows associated with the supply process.
  @JsonKey(name: 'category')
  final SupplyType? category;

  /// [priority] /// Indicates how quickly this SupplyRequest should be addressed with respect
  /// to other requests.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [itemCodeableConcept] /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies the
  /// item from a known list.
  @JsonKey(name: 'itemCodeableConcept')
  final CodeableConcept itemCodeableConcept;

  /// [itemReference] /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies the
  /// item from a known list.
  @JsonKey(name: 'itemReference')
  final Reference itemReference;

  /// [quantity] /// The amount that is being ordered of the indicated item.
  @JsonKey(name: 'quantity')
  final Quantity quantity;

  /// [parameter] /// Specific parameters for the ordered item. For example, the size of the
  /// indicated item.
  @JsonKey(name: 'parameter')
  final List<SupplyRequestParameter>? parameter;

  /// [occurrenceDateTime] /// When the request should be fulfilled.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// When the request should be fulfilled.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// When the request should be fulfilled.
  @JsonKey(name: 'occurrenceTiming')
  final Timing? occurrenceTiming;

  /// [authoredOn] /// When the request was made.
  @JsonKey(name: 'authoredOn')
  final FhirDateTime? authoredOn;
  @JsonKey(name: '_authoredOn')
  final Element? authoredOnElement;

  /// [requester] /// The device, practitioner, etc. who initiated the request.
  @JsonKey(name: 'requester')
  final Reference? requester;

  /// [supplier] /// Who is intended to fulfill the request.
  @JsonKey(name: 'supplier')
  final List<Reference>? supplier;

  /// [reasonCode] /// The reason why the supply item was requested.
  @JsonKey(name: 'reasonCode')
  final List<SupplyRequestReason>? reasonCode;

  /// [reasonReference] /// The reason why the supply item was requested.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [deliverFrom] /// Where the supply is expected to come from.
  @JsonKey(name: 'deliverFrom')
  final Reference? deliverFrom;

  /// [deliverTo] /// Where the supply is destined to go.
  @JsonKey(name: 'deliverTo')
  final Reference? deliverTo;
  factory SupplyRequest.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SupplyRequestToJson(this);

  @override
  SupplyRequest clone() => throw UnimplementedError();
  @override
  SupplyRequest copyWith({
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
    SupplyRequestStatus? status,
    Element? statusElement,
    SupplyType? category,
    RequestPriority? priority,
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
    List<SupplyRequestReason>? reasonCode,
    List<Reference>? reasonReference,
    Reference? deliverFrom,
    Reference? deliverTo,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SupplyRequest.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SupplyRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SupplyRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SupplyRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SupplyRequestParameter] /// Specific parameters for the ordered item. For example, the size of the
/// indicated item.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SupplyRequestParameter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code or string that identifies the device detail being asserted.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [valueCodeableConcept] /// The value of the device detail.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// The value of the device detail.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueRange] /// The value of the device detail.
  @JsonKey(name: 'valueRange')
  final Range? valueRange;

  /// [valueBoolean] /// The value of the device detail.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;
  factory SupplyRequestParameter.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequestParameterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SupplyRequestParameterToJson(this);

  @override
  SupplyRequestParameter clone() => throw UnimplementedError();
  @override
  SupplyRequestParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SupplyRequestParameter.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequestParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SupplyRequestParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SupplyRequestParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SupplyRequestParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyRequestParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
