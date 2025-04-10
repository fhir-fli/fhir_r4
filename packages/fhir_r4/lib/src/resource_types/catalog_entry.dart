import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'catalog_entry.g.dart';

/// [CatalogEntry]
/// Catalog entries are wrappers that contextualize items included in a
/// catalog.
class CatalogEntry extends DomainResource {
  /// Primary constructor for
  /// [CatalogEntry]

  const CatalogEntry({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    required this.orderable,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.validityPeriod,
    this.validTo,
    this.lastUpdated,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
  }) : super(
          resourceType: R4ResourceType.CatalogEntry,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    return CatalogEntry(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      orderable: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'orderable',
        FhirBoolean.fromJson,
      )!,
      referencedItem: JsonParser.parseObject<Reference>(
        json,
        'referencedItem',
        Reference.fromJson,
      )!,
      additionalIdentifier: (json['additionalIdentifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      validityPeriod: JsonParser.parseObject<Period>(
        json,
        'validityPeriod',
        Period.fromJson,
      ),
      validTo: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'validTo',
        FhirDateTime.fromJson,
      ),
      lastUpdated: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastUpdated',
        FhirDateTime.fromJson,
      ),
      additionalCharacteristic:
          (json['additionalCharacteristic'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      additionalClassification:
          (json['additionalClassification'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      relatedEntry: (json['relatedEntry'] as List<dynamic>?)
          ?.map<CatalogEntryRelatedEntry>(
            (v) => CatalogEntryRelatedEntry.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CatalogEntry]
  /// from a [String] or [YamlMap] object
  factory CatalogEntry.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CatalogEntry.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CatalogEntry.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CatalogEntry '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CatalogEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CatalogEntry.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CatalogEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CatalogEntry';

  /// [identifier]
  /// Used in supporting different identifiers for the same product, e.g.
  /// manufacturer code and retailer code.
  final List<Identifier>? identifier;

  /// [type]
  /// The type of item - medication, device, service, protocol or other.
  final CodeableConcept? type;

  /// [orderable]
  /// Whether the entry represents an orderable item.
  final FhirBoolean orderable;

  /// [referencedItem]
  /// The item in a catalog or definition.
  final Reference referencedItem;

  /// [additionalIdentifier]
  /// Used in supporting related concepts, e.g. NDC to RxNorm.
  final List<Identifier>? additionalIdentifier;

  /// [classification]
  /// Classes of devices, or ATC for medication.
  final List<CodeableConcept>? classification;

  /// [status]
  /// Used to support catalog exchange even for unsupported products, e.g.
  /// getting list of medications even if not prescribable.
  final PublicationStatus? status;

  /// [validityPeriod]
  /// The time period in which this catalog entry is expected to be active.
  final Period? validityPeriod;

  /// [validTo]
  /// The date until which this catalog entry is expected to be active.
  final FhirDateTime? validTo;

  /// [lastUpdated]
  /// Typically date of issue is different from the beginning of the
  /// validity. This can be used to see when an item was last updated.
  final FhirDateTime? lastUpdated;

  /// [additionalCharacteristic]
  /// Used for examplefor Out of Formulary, or any specifics.
  final List<CodeableConcept>? additionalCharacteristic;

  /// [additionalClassification]
  /// User for example for ATC classification, or.
  final List<CodeableConcept>? additionalClassification;

  /// [relatedEntry]
  /// Used for example, to point to a substance, or to a device used to
  /// administer a medication.
  final List<CatalogEntryRelatedEntry>? relatedEntry;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'type',
      type,
    );
    addField(
      'orderable',
      orderable,
    );
    addField(
      'referencedItem',
      referencedItem,
    );
    addField(
      'additionalIdentifier',
      additionalIdentifier,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'status',
      status,
    );
    addField(
      'validityPeriod',
      validityPeriod,
    );
    addField(
      'validTo',
      validTo,
    );
    addField(
      'lastUpdated',
      lastUpdated,
    );
    addField(
      'additionalCharacteristic',
      additionalCharacteristic,
    );
    addField(
      'additionalClassification',
      additionalClassification,
    );
    addField(
      'relatedEntry',
      relatedEntry,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
      'type',
      'orderable',
      'referencedItem',
      'additionalIdentifier',
      'classification',
      'status',
      'validityPeriod',
      'validTo',
      'lastUpdated',
      'additionalCharacteristic',
      'additionalClassification',
      'relatedEntry',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'orderable':
        fields.add(orderable);
      case 'referencedItem':
        fields.add(referencedItem);
      case 'additionalIdentifier':
        if (additionalIdentifier != null) {
          fields.addAll(additionalIdentifier!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'validityPeriod':
        if (validityPeriod != null) {
          fields.add(validityPeriod!);
        }
      case 'validTo':
        if (validTo != null) {
          fields.add(validTo!);
        }
      case 'lastUpdated':
        if (lastUpdated != null) {
          fields.add(lastUpdated!);
        }
      case 'additionalCharacteristic':
        if (additionalCharacteristic != null) {
          fields.addAll(additionalCharacteristic!);
        }
      case 'additionalClassification':
        if (additionalClassification != null) {
          fields.addAll(additionalClassification!);
        }
      case 'relatedEntry':
        if (relatedEntry != null) {
          fields.addAll(relatedEntry!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CatalogEntry clone() => copyWith();

  /// Copy function for [CatalogEntry]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CatalogEntryCopyWith<CatalogEntry> get copyWith =>
      _$CatalogEntryCopyWithImpl<CatalogEntry>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CatalogEntry) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
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
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orderable,
      o.orderable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referencedItem,
      o.referencedItem,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      additionalIdentifier,
      o.additionalIdentifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validityPeriod,
      o.validityPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validTo,
      o.validTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastUpdated,
      o.lastUpdated,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      additionalCharacteristic,
      o.additionalCharacteristic,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      additionalClassification,
      o.additionalClassification,
    )) {
      return false;
    }
    if (!listEquals<CatalogEntryRelatedEntry>(
      relatedEntry,
      o.relatedEntry,
    )) {
      return false;
    }
    return true;
  }
}

/// [CatalogEntryRelatedEntry]
/// Used for example, to point to a substance, or to a device used to
/// administer a medication.
class CatalogEntryRelatedEntry extends BackboneElement {
  /// Primary constructor for
  /// [CatalogEntryRelatedEntry]

  const CatalogEntryRelatedEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationtype,
    required this.item,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntryRelatedEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    return CatalogEntryRelatedEntry(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relationtype: JsonParser.parsePrimitive<CatalogEntryRelationType>(
        json,
        'relationtype',
        CatalogEntryRelationType.fromJson,
      )!,
      item: JsonParser.parseObject<Reference>(
        json,
        'item',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [CatalogEntryRelatedEntry]
  /// from a [String] or [YamlMap] object
  factory CatalogEntryRelatedEntry.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CatalogEntryRelatedEntry.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CatalogEntryRelatedEntry.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CatalogEntryRelatedEntry '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CatalogEntryRelatedEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CatalogEntryRelatedEntry.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CatalogEntryRelatedEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CatalogEntryRelatedEntry';

  /// [relationtype]
  /// The type of relation to the related item: child, parent,
  /// packageContent, containerPackage, usedIn, uses, requires, etc.
  final CatalogEntryRelationType relationtype;

  /// [item]
  /// The reference to the related item.
  final Reference item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'relationtype',
      relationtype,
    );
    addField(
      'item',
      item,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationtype',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'relationtype':
        fields.add(relationtype);
      case 'item':
        fields.add(item);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CatalogEntryRelatedEntry clone() => copyWith();

  /// Copy function for [CatalogEntryRelatedEntry]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CatalogEntryRelatedEntryCopyWith<CatalogEntryRelatedEntry> get copyWith =>
      _$CatalogEntryRelatedEntryCopyWithImpl<CatalogEntryRelatedEntry>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CatalogEntryRelatedEntry) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      relationtype,
      o.relationtype,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}
