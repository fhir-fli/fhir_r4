import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SupplyDelivery]
/// Record of delivery of what is supplied.
class SupplyDelivery extends DomainResource {
  /// Primary constructor for [SupplyDelivery]

  SupplyDelivery({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.SupplyDelivery,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyDelivery.fromJson(Map<String, dynamic> json) {
    return SupplyDelivery(
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
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: json['status'] != null
          ? SupplyDeliveryStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      patient: json['patient'] != null
          ? Reference.fromJson(
              json['patient'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      suppliedItem: json['suppliedItem'] != null
          ? SupplyDeliverySuppliedItem.fromJson(
              json['suppliedItem'] as Map<String, dynamic>,
            )
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
      supplier: json['supplier'] != null
          ? Reference.fromJson(
              json['supplier'] as Map<String, dynamic>,
            )
          : null,
      destination: json['destination'] != null
          ? Reference.fromJson(
              json['destination'] as Map<String, dynamic>,
            )
          : null,
      receiver: json['receiver'] != null
          ? (json['receiver'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SupplyDelivery] from a [String]
  /// or [YamlMap] object
  factory SupplyDelivery.fromYaml(dynamic yaml) => yaml is String
      ? SupplyDelivery.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SupplyDelivery.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SupplyDelivery cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SupplyDelivery]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyDelivery.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyDelivery.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SupplyDelivery';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifier for the supply delivery event that is used to identify it
  /// across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the dispense event.
  final SupplyDeliveryStatus? status;

  /// [patient]
  /// A link to a resource representing the person whom the delivered item is
  /// for.
  final Reference? patient;

  /// [type]
  /// Indicates the type of dispensing event that is performed. Examples
  /// include: Trial Fill, Completion of Trial, Partial Fill, Emergency Fill,
  /// Samples, etc.
  final CodeableConcept? type;

  /// [suppliedItem]
  /// The item that is being delivered or has been supplied.
  final SupplyDeliverySuppliedItem? suppliedItem;

  /// [occurrenceDateTime]
  /// The date or time(s) the activity occurred.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// The date or time(s) the activity occurred.
  final Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// The date or time(s) the activity occurred.
  final Timing? occurrenceTiming;

  /// [supplier]
  /// The individual responsible for dispensing the medication, supplier or
  /// device.
  final Reference? supplier;

  /// [destination]
  /// Identification of the facility/location where the Supply was shipped
  /// to, as part of the dispense event.
  final Reference? destination;

  /// [receiver]
  /// Identifies the person who picked up the Supply.
  final List<Reference>? receiver;
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

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson9 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson10 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final fieldJson11 = status!.toJson();
      json['status'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_status'] = fieldJson11['_value'];
      }
    }

    if (patient != null) {
      final fieldJson12 = patient!.toJson();
      json['patient'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_patient'] = fieldJson12['_value'];
      }
    }

    if (type != null) {
      final fieldJson13 = type!.toJson();
      json['type'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_type'] = fieldJson13['_value'];
      }
    }

    if (suppliedItem != null) {
      final fieldJson14 = suppliedItem!.toJson();
      json['suppliedItem'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_suppliedItem'] = fieldJson14['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson15 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson15['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson16 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson16['_value'];
      }
    }

    if (occurrenceTiming != null) {
      final fieldJson17 = occurrenceTiming!.toJson();
      json['occurrenceTiming'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_occurrenceTiming'] = fieldJson17['_value'];
      }
    }

    if (supplier != null) {
      final fieldJson18 = supplier!.toJson();
      json['supplier'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_supplier'] = fieldJson18['_value'];
      }
    }

    if (destination != null) {
      final fieldJson19 = destination!.toJson();
      json['destination'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_destination'] = fieldJson19['_value'];
      }
    }

    if (receiver != null && receiver!.isNotEmpty) {
      final fieldJson20 = receiver!.map((e) => e.toJson()).toList();
      json['receiver'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_receiver'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  SupplyDelivery clone() => throw UnimplementedError();
  @override
  SupplyDelivery copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    SupplyDeliveryStatus? status,
    Reference? patient,
    CodeableConcept? type,
    SupplyDeliverySuppliedItem? suppliedItem,
    FhirDateTime? occurrenceDateTime,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      patient: patient ?? this.patient,
      type: type ?? this.type,
      suppliedItem: suppliedItem ?? this.suppliedItem,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
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
}

/// [SupplyDeliverySuppliedItem]
/// The item that is being delivered or has been supplied.
class SupplyDeliverySuppliedItem extends BackboneElement {
  /// Primary constructor for [SupplyDeliverySuppliedItem]

  SupplyDeliverySuppliedItem({
    super.id,
    this.extension_,
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyDeliverySuppliedItem.fromJson(Map<String, dynamic> json) {
    return SupplyDeliverySuppliedItem(
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
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
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
    );
  }

  /// Deserialize [SupplyDeliverySuppliedItem] from a [String]
  /// or [YamlMap] object
  factory SupplyDeliverySuppliedItem.fromYaml(dynamic yaml) => yaml is String
      ? SupplyDeliverySuppliedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SupplyDeliverySuppliedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SupplyDeliverySuppliedItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SupplyDeliverySuppliedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyDeliverySuppliedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SupplyDeliverySuppliedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SupplyDeliverySuppliedItem';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [quantity]
  /// The amount of supply that has been dispensed. Includes unit of measure.
  final Quantity? quantity;

  /// [itemCodeableConcept]
  /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a
  /// code that identifies the item from a known list.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference]
  /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a
  /// code that identifies the item from a known list.
  final Reference? itemReference;
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

    if (quantity != null) {
      final fieldJson3 = quantity!.toJson();
      json['quantity'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_quantity'] = fieldJson3['_value'];
      }
    }

    if (itemCodeableConcept != null) {
      final fieldJson4 = itemCodeableConcept!.toJson();
      json['itemCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_itemCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (itemReference != null) {
      final fieldJson5 = itemReference!.toJson();
      json['itemReference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_itemReference'] = fieldJson5['_value'];
      }
    }

    return json;
  }

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
}
