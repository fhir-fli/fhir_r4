import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SupplyRequest]
/// A record of a request for a medication, substance or device used in the
/// healthcare setting.
class SupplyRequest extends DomainResource {
  /// Primary constructor for
  /// [SupplyRequest]

  const SupplyRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.category,
    this.priority,
    required this.itemX,
    required this.quantity,
    this.parameter,
    this.occurrenceX,
    this.authoredOn,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo,
  }) : super(
          resourceType: R4ResourceType.SupplyRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return SupplyRequest(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      status: (json['status'] != null || json['_status'] != null)
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
      priority: (json['priority'] != null || json['_priority'] != null)
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      itemX: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>,
            )
          : Reference.fromJson(
              json['itemReference'] as Map<String, dynamic>,
            ),
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
      occurrenceX: json['occurrenceDateTime'] != null ||
              json['_occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : json['occurrencePeriod'] != null
              ? Period.fromJson(
                  json['occurrencePeriod'] as Map<String, dynamic>,
                )
              : json['occurrenceTiming'] != null
                  ? Timing.fromJson(
                      json['occurrenceTiming'] as Map<String, dynamic>,
                    )
                  : null,
      authoredOn: (json['authoredOn'] != null || json['_authoredOn'] != null)
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

  /// Deserialize [SupplyRequest]
  /// from a [String] or [YamlMap] object
  factory SupplyRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SupplyRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SupplyRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SupplyRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SupplyRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyRequest.fromJsonString(
    String source,
  ) {
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

  /// [itemX]
  /// The item that is requested to be supplied. This is either a link to a
  /// resource representing the details of the item or a code that identifies
  /// the item from a known list.
  final ItemXSupplyRequest itemX;

  /// [quantity]
  /// The amount that is being ordered of the indicated item.
  final Quantity quantity;

  /// [parameter]
  /// Specific parameters for the ordered item. For example, the size of the
  /// indicated item.
  final List<SupplyRequestParameter>? parameter;

  /// [occurrenceX]
  /// When the request should be fulfilled.
  final OccurrenceXSupplyRequest? occurrenceX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      addField('status', status);
    }

    if (category != null) {
      json['category'] = category!.toJson();
    }

    if (priority != null) {
      addField('priority', priority);
    }

    json['item${itemX.fhirType.capitalize()}'] = itemX.toJson();

    json['quantity'] = quantity.toJson();

    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    if (occurrenceX != null) {
      addField('occurrence${occurrenceX!.fhirType.capitalize()}', occurrenceX);
    }

    if (authoredOn != null) {
      addField('authoredOn', authoredOn);
    }

    if (requester != null) {
      json['requester'] = requester!.toJson();
    }

    if (supplier != null && supplier!.isNotEmpty) {
      json['supplier'] = supplier!.map((e) => e.toJson()).toList();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (deliverFrom != null) {
      json['deliverFrom'] = deliverFrom!.toJson();
    }

    if (deliverTo != null) {
      json['deliverTo'] = deliverTo!.toJson();
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
    ItemXSupplyRequest? itemX,
    Quantity? quantity,
    List<SupplyRequestParameter>? parameter,
    OccurrenceXSupplyRequest? occurrenceX,
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
      itemX: itemX ?? this.itemX,
      quantity: quantity ?? this.quantity,
      parameter: parameter ?? this.parameter,
      occurrenceX: occurrenceX ?? this.occurrenceX,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      supplier: supplier ?? this.supplier,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      deliverFrom: deliverFrom ?? this.deliverFrom,
      deliverTo: deliverTo ?? this.deliverTo,
    );
  }
}

/// [SupplyRequestParameter]
/// Specific parameters for the ordered item. For example, the size of the
/// indicated item.
class SupplyRequestParameter extends BackboneElement {
  /// Primary constructor for
  /// [SupplyRequestParameter]

  const SupplyRequestParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return SupplyRequestParameter(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      valueX: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : json['valueQuantity'] != null
              ? Quantity.fromJson(
                  json['valueQuantity'] as Map<String, dynamic>,
                )
              : json['valueRange'] != null
                  ? Range.fromJson(
                      json['valueRange'] as Map<String, dynamic>,
                    )
                  : json['valueBoolean'] != null ||
                          json['_valueBoolean'] != null
                      ? FhirBoolean.fromJson({
                          'value': json['valueBoolean'],
                          '_value': json['_valueBoolean'],
                        })
                      : null,
    );
  }

  /// Deserialize [SupplyRequestParameter]
  /// from a [String] or [YamlMap] object
  factory SupplyRequestParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SupplyRequestParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SupplyRequestParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SupplyRequestParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SupplyRequestParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyRequestParameter.fromJsonString(
    String source,
  ) {
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

  /// [code]
  /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// [valueX]
  /// The value of the device detail.
  final ValueXSupplyRequestParameter? valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (valueX != null) {
      json['value${valueX!.fhirType.capitalize()}'] = valueX!.toJson();
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
    ValueXSupplyRequestParameter? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SupplyRequestParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ?? this.valueX,
    );
  }
}
