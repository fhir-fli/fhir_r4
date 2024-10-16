import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SupplyRequest]
/// A record of a request for a medication, substance or device used in the
/// healthcare setting.
class SupplyRequest extends DomainResource {
  /// Primary constructor for [SupplyRequest]

  SupplyRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.SupplyRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyRequest.fromJson(Map<String, dynamic> json) {
    return SupplyRequest(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: json['status'] != null
          ? SupplyRequestStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              json['itemReference'] as Map<String, dynamic>,
            )
          : null,
      quantity: Quantity.fromJson(
        json['quantity'] as Map<String, dynamic>,
      ),
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<SupplyRequestParameter>(
                (v) => SupplyRequestParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              json['occurrencePeriod'] as Map<String, dynamic>,
            )
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(
              json['occurrenceTiming'] as Map<String, dynamic>,
            )
          : null,
      authoredOn: json['authoredOn'] != null
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(
              json['requester'] as Map<String, dynamic>,
            )
          : null,
      supplier: json['supplier'] != null
          ? (json['supplier'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      deliverFrom: json['deliverFrom'] != null
          ? Reference.fromJson(
              json['deliverFrom'] as Map<String, dynamic>,
            )
          : null,
      deliverTo: json['deliverTo'] != null
          ? Reference.fromJson(
              json['deliverTo'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SupplyRequest] from a [String]
  /// or [YamlMap] object
  factory SupplyRequest.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SupplyRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SupplyRequest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SupplyRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SupplyRequest';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this SupplyRequest by the author
  /// and/or other systems. These identifiers remain constant as the resource
  /// is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status]
  /// Status of the supply request.
  final SupplyRequestStatus? status;

  /// [category]
  /// Category of supply, e.g. central, non-stock, etc. This is used to
  /// support work flows associated with the supply process.
  final CodeableConcept? category;

  /// [priority]
  /// Indicates how quickly this SupplyRequest should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;

  /// [itemCodeableConcept]
  /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies
  /// the item from a known list.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference]
  /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies
  /// the item from a known list.
  final Reference? itemReference;

  /// [quantity]
  /// The amount that is being ordered of the indicated item.
  final Quantity quantity;

  /// [parameter]
  /// Specific parameters for the ordered item. For example, the size of the
  /// indicated item.
  final List<SupplyRequestParameter>? parameter;

  /// [occurrenceDateTime]
  /// When the request should be fulfilled.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// When the request should be fulfilled.
  final Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// When the request should be fulfilled.
  final Timing? occurrenceTiming;

  /// [authoredOn]
  /// When the request was made.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The device, practitioner, etc. who initiated the request.
  final Reference? requester;

  /// [supplier]
  /// Who is intended to fulfill the request.
  final List<Reference>? supplier;

  /// [reasonCode]
  /// The reason why the supply item was requested.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// The reason why the supply item was requested.
  final List<Reference>? reasonReference;

  /// [deliverFrom]
  /// Where the supply is expected to come from.
  final Reference? deliverFrom;

  /// [deliverTo]
  /// Where the supply is destined to go.
  final Reference? deliverTo;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final fieldJson9 = status!.toJson();
      json['status'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_status'] = fieldJson9['_value'];
      }
    }

    if (category != null) {
      final fieldJson10 = category!.toJson();
      json['category'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_category'] = fieldJson10['_value'];
      }
    }

    if (priority != null) {
      final fieldJson11 = priority!.toJson();
      json['priority'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_priority'] = fieldJson11['_value'];
      }
    }

    if (itemCodeableConcept != null) {
      final fieldJson12 = itemCodeableConcept!.toJson();
      json['itemCodeableConcept'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_itemCodeableConcept'] = fieldJson12['_value'];
      }
    }

    if (itemReference != null) {
      final fieldJson13 = itemReference!.toJson();
      json['itemReference'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_itemReference'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = quantity.toJson();
    json['quantity'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_quantity'] = fieldJson14['_value'];
    }

    if (parameter != null && parameter!.isNotEmpty) {
      final fieldJson15 = parameter!.map((e) => e.toJson()).toList();
      json['parameter'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_parameter'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson16 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson16['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson17 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson17['_value'];
      }
    }

    if (occurrenceTiming != null) {
      final fieldJson18 = occurrenceTiming!.toJson();
      json['occurrenceTiming'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_occurrenceTiming'] = fieldJson18['_value'];
      }
    }

    if (authoredOn != null) {
      final fieldJson19 = authoredOn!.toJson();
      json['authoredOn'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_authoredOn'] = fieldJson19['_value'];
      }
    }

    if (requester != null) {
      final fieldJson20 = requester!.toJson();
      json['requester'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_requester'] = fieldJson20['_value'];
      }
    }

    if (supplier != null && supplier!.isNotEmpty) {
      final fieldJson21 = supplier!.map((e) => e.toJson()).toList();
      json['supplier'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_supplier'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson22 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson23 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (deliverFrom != null) {
      final fieldJson24 = deliverFrom!.toJson();
      json['deliverFrom'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_deliverFrom'] = fieldJson24['_value'];
      }
    }

    if (deliverTo != null) {
      final fieldJson25 = deliverTo!.toJson();
      json['deliverTo'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_deliverTo'] = fieldJson25['_value'];
      }
    }

    return json;
  }

  @override
  SupplyRequest clone() => throw UnimplementedError();
  @override
  SupplyRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    SupplyRequestStatus? status,
    CodeableConcept? category,
    RequestPriority? priority,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    Quantity? quantity,
    List<SupplyRequestParameter>? parameter,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    FhirDateTime? authoredOn,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      quantity: quantity ?? this.quantity,
      parameter: parameter ?? this.parameter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      authoredOn: authoredOn ?? this.authoredOn,
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
}

/// [SupplyRequestParameter]
/// Specific parameters for the ordered item. For example, the size of the
/// indicated item.
class SupplyRequestParameter extends BackboneElement {
  /// Primary constructor for [SupplyRequestParameter]

  SupplyRequestParameter({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyRequestParameter.fromJson(Map<String, dynamic> json) {
    return SupplyRequestParameter(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
    );
  }

  /// Deserialize [SupplyRequestParameter] from a [String]
  /// or [YamlMap] object
  factory SupplyRequestParameter.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequestParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SupplyRequestParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SupplyRequestParameter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SupplyRequestParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyRequestParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyRequestParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SupplyRequestParameter';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// [valueCodeableConcept]
  /// The value of the device detail.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// The value of the device detail.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// The value of the device detail.
  final Range? valueRange;

  /// [valueBoolean]
  /// The value of the device detail.
  final FhirBoolean? valueBoolean;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson4 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson5 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueQuantity'] = fieldJson5['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson6 = valueRange!.toJson();
      json['valueRange'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueRange'] = fieldJson6['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson7 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueBoolean'] = fieldJson7['_value'];
      }
    }

    return json;
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
