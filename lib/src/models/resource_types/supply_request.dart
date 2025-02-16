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
          objectPath: 'SupplyRequest',
          resourceType: R4ResourceType.SupplyRequest,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SupplyRequest.empty() => SupplyRequest(
        itemX: CodeableConcept.empty(),
        quantity: Quantity.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SupplyRequest';
    return SupplyRequest(
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<SupplyRequestStatus>(
        json,
        'status',
        SupplyRequestStatus.fromJson,
        '$objectPath.status',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      itemX: JsonParser.parsePolymorphic<ItemXSupplyRequest>(
        json,
        {
          'itemCodeableConcept': CodeableConcept.fromJson,
          'itemReference': Reference.fromJson,
        },
        objectPath,
      )!,
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      )!,
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<SupplyRequestParameter>(
            (v) => SupplyRequestParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXSupplyRequest>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
        '$objectPath.requester',
      ),
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplier',
              },
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      deliverFrom: JsonParser.parseObject<Reference>(
        json,
        'deliverFrom',
        Reference.fromJson,
        '$objectPath.deliverFrom',
      ),
      deliverTo: JsonParser.parseObject<Reference>(
        json,
        'deliverTo',
        Reference.fromJson,
        '$objectPath.deliverTo',
      ),
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
    if (json is Map<String, dynamic>) {
      return SupplyRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

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

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

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
    addField('status', status);
    addField('category', category);
    addField('priority', priority);
    final itemXFhirType = itemX.fhirType;
    addField('item${itemXFhirType.capitalize()}', itemX);

    addField('quantity', quantity);
    addField('parameter', parameter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('supplier', supplier);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('deliverFrom', deliverFrom);
    addField('deliverTo', deliverTo);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'category',
      'priority',
      'itemX',
      'quantity',
      'parameter',
      'occurrenceX',
      'authoredOn',
      'requester',
      'supplier',
      'reasonCode',
      'reasonReference',
      'deliverFrom',
      'deliverTo',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
        }
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'quantity':
        fields.add(quantity);
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
          fields.add(occurrenceX!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'supplier':
        if (supplier != null) {
          fields.addAll(supplier!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'deliverFrom':
        if (deliverFrom != null) {
          fields.add(deliverFrom!);
        }
      case 'deliverTo':
        if (deliverTo != null) {
          fields.add(deliverTo!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SupplyRequest(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      itemX: itemX?.copyWith(
            objectPath: '$newObjectPath.itemX',
          ) as ItemXSupplyRequest? ??
          this.itemX,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXSupplyRequest? ??
          this.occurrenceX,
      authoredOn: authoredOn?.copyWith(
            objectPath: '$newObjectPath.authoredOn',
          ) ??
          this.authoredOn,
      requester: requester?.copyWith(
            objectPath: '$newObjectPath.requester',
          ) ??
          this.requester,
      supplier: supplier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supplier',
                ),
              )
              .toList() ??
          this.supplier,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      deliverFrom: deliverFrom?.copyWith(
            objectPath: '$newObjectPath.deliverFrom',
          ) ??
          this.deliverFrom,
      deliverTo: deliverTo?.copyWith(
            objectPath: '$newObjectPath.deliverTo',
          ) ??
          this.deliverTo,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SupplyRequest) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!equalsDeepWithNull(itemX, o.itemX)) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!listEquals<SupplyRequestParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(occurrenceX, o.occurrenceX)) {
      return false;
    }
    if (!equalsDeepWithNull(authoredOn, o.authoredOn)) {
      return false;
    }
    if (!equalsDeepWithNull(requester, o.requester)) {
      return false;
    }
    if (!listEquals<Reference>(
      supplier,
      o.supplier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(deliverFrom, o.deliverFrom)) {
      return false;
    }
    if (!equalsDeepWithNull(deliverTo, o.deliverTo)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'SupplyRequest.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SupplyRequestParameter.empty() => SupplyRequestParameter();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SupplyRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SupplyRequest.parameter';
    return SupplyRequestParameter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXSupplyRequestParameter>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
        },
        objectPath,
      ),
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
    if (json is Map<String, dynamic>) {
      return SupplyRequestParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();
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
    addField('code', code);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SupplyRequestParameter(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXSupplyRequestParameter? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SupplyRequestParameter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
  }
}
