import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    this.itemCodeableConcept,
    this.itemReference,
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
  }) : super(resourceType: R4ResourceType.SupplyRequest);

  @override
  String get fhirType => 'SupplyRequest';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this SupplyRequest by the author and/or
  /// other systems. These identifiers remain constant as the resource is updated
  /// and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Status of the supply request.
  final SupplyRequestStatus? status;
  final Element? statusElement;

  /// [category] /// Category of supply, e.g. central, non-stock, etc. This is used to support
  /// work flows associated with the supply process.
  final CodeableConcept? category;

  /// [priority] /// Indicates how quickly this SupplyRequest should be addressed with respect
  /// to other requests.
  final RequestPriority? priority;
  final Element? priorityElement;

  /// [itemCodeableConcept] /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies the
  /// item from a known list.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies the
  /// item from a known list.
  final Reference? itemReference;

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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }
    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }
    json['quantity'] = quantity.toJson();
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!
          .map<dynamic>((SupplyRequestParameter v) => v.toJson())
          .toList();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.value;
    }
    if (occurrenceDateTimeElement != null) {
      json['_occurrenceDateTime'] = occurrenceDateTimeElement!.toJson();
    }
    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }
    if (occurrenceTiming != null) {
      json['occurrenceTiming'] = occurrenceTiming!.toJson();
    }
    if (authoredOn?.value != null) {
      json['authoredOn'] = authoredOn!.value;
    }
    if (authoredOnElement != null) {
      json['_authoredOn'] = authoredOnElement!.toJson();
    }
    if (requester != null) {
      json['requester'] = requester!.toJson();
    }
    if (supplier != null && supplier!.isNotEmpty) {
      json['supplier'] =
          supplier!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (deliverFrom != null) {
      json['deliverFrom'] = deliverFrom!.toJson();
    }
    if (deliverTo != null) {
      json['deliverTo'] = deliverTo!.toJson();
    }
    return json;
  }

  factory SupplyRequest.fromJson(Map<String, dynamic> json) {
    return SupplyRequest(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: json['status'] != null
          ? SupplyRequestStatus.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>)
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>)
          : null,
      quantity: Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<SupplyRequestParameter>((dynamic v) =>
                  SupplyRequestParameter.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime(json['occurrenceDateTime'])
          : null,
      occurrenceDateTimeElement: json['_occurrenceDateTime'] != null
          ? Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>)
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>)
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>)
          : null,
      authoredOn:
          json['authoredOn'] != null ? FhirDateTime(json['authoredOn']) : null,
      authoredOnElement: json['_authoredOn'] != null
          ? Element.fromJson(json['_authoredOn'] as Map<String, dynamic>)
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(json['requester'] as Map<String, dynamic>)
          : null,
      supplier: json['supplier'] != null
          ? (json['supplier'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      deliverFrom: json['deliverFrom'] != null
          ? Reference.fromJson(json['deliverFrom'] as Map<String, dynamic>)
          : null,
      deliverTo: json['deliverTo'] != null
          ? Reference.fromJson(json['deliverTo'] as Map<String, dynamic>)
          : null,
    );
  }
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
    CodeableConcept? category,
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
    List<CodeableConcept>? reasonCode,
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
  });

  @override
  String get fhirType => 'SupplyRequestParameter';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    return json;
  }

  factory SupplyRequestParameter.fromJson(Map<String, dynamic> json) {
    return SupplyRequestParameter(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
    );
  }
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
