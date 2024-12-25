import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SupplyDelivery]
/// Record of delivery of what is supplied.
class SupplyDelivery extends DomainResource {
  /// Primary constructor for
  /// [SupplyDelivery]

  const SupplyDelivery({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.patient,
    this.type,
    this.suppliedItem,
    this.occurrenceX,
    this.supplier,
    this.destination,
    this.receiver,
  }) : super(
          objectPath: 'SupplyDelivery',
          resourceType: R4ResourceType.SupplyDelivery,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyDelivery.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SupplyDelivery';
    return SupplyDelivery(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.contained'}),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.identifier'}),
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.basedOn'}),
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.partOf'}),
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<SupplyDeliveryStatus>(
        json,
        'status',
        SupplyDeliveryStatus.fromJson,
        '$objectPath.status',
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      suppliedItem: JsonParser.parseObject<SupplyDeliverySuppliedItem>(
        json,
        'suppliedItem',
        SupplyDeliverySuppliedItem.fromJson,
        '$objectPath.suppliedItem',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXSupplyDelivery>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      supplier: JsonParser.parseObject<Reference>(
        json,
        'supplier',
        Reference.fromJson,
        '$objectPath.supplier',
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
        '$objectPath.destination',
      ),
      receiver: (json['receiver'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.receiver'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SupplyDelivery]
  /// from a [String] or [YamlMap] object
  factory SupplyDelivery.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SupplyDelivery.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SupplyDelivery.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SupplyDelivery '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SupplyDelivery]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyDelivery.fromJsonString(
    String source,
  ) {
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

  /// [occurrenceX]
  /// The date or time(s) the activity occurred.
  final OccurrenceXSupplyDelivery? occurrenceX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('patient', patient);
    addField('type', type);
    addField('suppliedItem', suppliedItem);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    addField('supplier', supplier);
    addField('destination', destination);
    addField('receiver', receiver);
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
    OccurrenceXSupplyDelivery? occurrenceX,
    Reference? supplier,
    Reference? destination,
    List<Reference>? receiver,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      occurrenceX: occurrenceX ?? this.occurrenceX,
      supplier: supplier ?? this.supplier,
      destination: destination ?? this.destination,
      receiver: receiver ?? this.receiver,
    );
  }
}

/// [SupplyDeliverySuppliedItem]
/// The item that is being delivered or has been supplied.
class SupplyDeliverySuppliedItem extends BackboneElement {
  /// Primary constructor for
  /// [SupplyDeliverySuppliedItem]

  const SupplyDeliverySuppliedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.itemX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SupplyDelivery.suppliedItem',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyDeliverySuppliedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SupplyDelivery.suppliedItem';
    return SupplyDeliverySuppliedItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      itemX: JsonParser.parsePolymorphic<ItemXSupplyDeliverySuppliedItem>(
        json,
        {
          'itemCodeableConcept': CodeableConcept.fromJson,
          'itemReference': Reference.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SupplyDeliverySuppliedItem]
  /// from a [String] or [YamlMap] object
  factory SupplyDeliverySuppliedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SupplyDeliverySuppliedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SupplyDeliverySuppliedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SupplyDeliverySuppliedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SupplyDeliverySuppliedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SupplyDeliverySuppliedItem.fromJsonString(
    String source,
  ) {
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

  /// [quantity]
  /// The amount of supply that has been dispensed. Includes unit of measure.
  final Quantity? quantity;

  /// [itemX]
  /// Identifies the medication, substance or device being dispensed. This is
  /// either a link to a resource representing the details of the item or a
  /// code that identifies the item from a known list.
  final ItemXSupplyDeliverySuppliedItem? itemX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('quantity', quantity);
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField('item${fhirType.capitalize()}', itemX);
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
    ItemXSupplyDeliverySuppliedItem? itemX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SupplyDeliverySuppliedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      itemX: itemX ?? this.itemX,
    );
  }
}
