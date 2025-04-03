import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
          objectPath: 'CatalogEntry',
          resourceType: R4ResourceType.CatalogEntry,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CatalogEntry.empty() => CatalogEntry(
        orderable: FhirBoolean.empty(),
        referencedItem: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CatalogEntry';
    return CatalogEntry(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      orderable: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'orderable',
        FhirBoolean.fromJson,
        '$objectPath.orderable',
      )!,
      referencedItem: JsonParser.parseObject<Reference>(
        json,
        'referencedItem',
        Reference.fromJson,
        '$objectPath.referencedItem',
      )!,
      additionalIdentifier: (json['additionalIdentifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additionalIdentifier',
              },
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      validityPeriod: JsonParser.parseObject<Period>(
        json,
        'validityPeriod',
        Period.fromJson,
        '$objectPath.validityPeriod',
      ),
      validTo: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'validTo',
        FhirDateTime.fromJson,
        '$objectPath.validTo',
      ),
      lastUpdated: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastUpdated',
        FhirDateTime.fromJson,
        '$objectPath.lastUpdated',
      ),
      additionalCharacteristic:
          (json['additionalCharacteristic'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.additionalCharacteristic',
                  },
                ),
              )
              .toList(),
      additionalClassification:
          (json['additionalClassification'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.additionalClassification',
                  },
                ),
              )
              .toList(),
      relatedEntry: (json['relatedEntry'] as List<dynamic>?)
          ?.map<CatalogEntryRelatedEntry>(
            (v) => CatalogEntryRelatedEntry.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedEntry',
              },
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'orderable':
        {
          if (child is FhirBoolean) {
            return copyWith(orderable: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referencedItem':
        {
          if (child is Reference) {
            return copyWith(referencedItem: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additionalIdentifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?additionalIdentifier, ...child];
            return copyWith(additionalIdentifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?additionalIdentifier,
              child,
            ];
            return copyWith(additionalIdentifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'classification':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?classification, ...child];
            return copyWith(classification: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?classification,
              child,
            ];
            return copyWith(classification: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validityPeriod':
        {
          if (child is Period) {
            return copyWith(validityPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'validTo':
        {
          if (child is FhirDateTime) {
            return copyWith(validTo: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastUpdated':
        {
          if (child is FhirDateTime) {
            return copyWith(lastUpdated: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additionalCharacteristic':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?additionalCharacteristic, ...child];
            return copyWith(additionalCharacteristic: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?additionalCharacteristic,
              child,
            ];
            return copyWith(additionalCharacteristic: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additionalClassification':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?additionalClassification, ...child];
            return copyWith(additionalClassification: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?additionalClassification,
              child,
            ];
            return copyWith(additionalClassification: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatedEntry':
        {
          if (child is List<CatalogEntryRelatedEntry>) {
            // Add all elements from passed list
            final newList = [...?relatedEntry, ...child];
            return copyWith(relatedEntry: newList);
          } else if (child is CatalogEntryRelatedEntry) {
            // Add single element to existing list or create new list
            final newList = [
              ...?relatedEntry,
              child,
            ];
            return copyWith(relatedEntry: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'type':
        return ['CodeableConcept'];
      case 'orderable':
        return ['FhirBoolean'];
      case 'referencedItem':
        return ['Reference'];
      case 'additionalIdentifier':
        return ['Identifier'];
      case 'classification':
        return ['CodeableConcept'];
      case 'status':
        return ['FhirCode'];
      case 'validityPeriod':
        return ['Period'];
      case 'validTo':
        return ['FhirDateTime'];
      case 'lastUpdated':
        return ['FhirDateTime'];
      case 'additionalCharacteristic':
        return ['CodeableConcept'];
      case 'additionalClassification':
        return ['CodeableConcept'];
      case 'relatedEntry':
        return ['CatalogEntryRelatedEntry'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CatalogEntry]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CatalogEntry createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'orderable':
        {
          return copyWith(
            orderable: FhirBoolean.empty(),
          );
        }
      case 'referencedItem':
        {
          return copyWith(
            referencedItem: Reference.empty(),
          );
        }
      case 'additionalIdentifier':
        {
          return copyWith(
            additionalIdentifier: <Identifier>[],
          );
        }
      case 'classification':
        {
          return copyWith(
            classification: <CodeableConcept>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'validityPeriod':
        {
          return copyWith(
            validityPeriod: Period.empty(),
          );
        }
      case 'validTo':
        {
          return copyWith(
            validTo: FhirDateTime.empty(),
          );
        }
      case 'lastUpdated':
        {
          return copyWith(
            lastUpdated: FhirDateTime.empty(),
          );
        }
      case 'additionalCharacteristic':
        {
          return copyWith(
            additionalCharacteristic: <CodeableConcept>[],
          );
        }
      case 'additionalClassification':
        {
          return copyWith(
            additionalClassification: <CodeableConcept>[],
          );
        }
      case 'relatedEntry':
        {
          return copyWith(
            relatedEntry: <CatalogEntryRelatedEntry>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CatalogEntry clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool type = false,
    bool additionalIdentifier = false,
    bool classification = false,
    bool status = false,
    bool validityPeriod = false,
    bool validTo = false,
    bool lastUpdated = false,
    bool additionalCharacteristic = false,
    bool additionalClassification = false,
    bool relatedEntry = false,
  }) {
    return CatalogEntry(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      type: type ? null : this.type,
      orderable: orderable,
      referencedItem: referencedItem,
      additionalIdentifier:
          additionalIdentifier ? null : this.additionalIdentifier,
      classification: classification ? null : this.classification,
      status: status ? null : this.status,
      validityPeriod: validityPeriod ? null : this.validityPeriod,
      validTo: validTo ? null : this.validTo,
      lastUpdated: lastUpdated ? null : this.lastUpdated,
      additionalCharacteristic:
          additionalCharacteristic ? null : this.additionalCharacteristic,
      additionalClassification:
          additionalClassification ? null : this.additionalClassification,
      relatedEntry: relatedEntry ? null : this.relatedEntry,
    );
  }

  @override
  CatalogEntry clone() => throw UnimplementedError();
  @override
  CatalogEntry copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    FhirBoolean? orderable,
    Reference? referencedItem,
    List<Identifier>? additionalIdentifier,
    List<CodeableConcept>? classification,
    PublicationStatus? status,
    Period? validityPeriod,
    FhirDateTime? validTo,
    FhirDateTime? lastUpdated,
    List<CodeableConcept>? additionalCharacteristic,
    List<CodeableConcept>? additionalClassification,
    List<CatalogEntryRelatedEntry>? relatedEntry,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CatalogEntry(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      orderable: orderable?.copyWith(
            objectPath: '$newObjectPath.orderable',
          ) ??
          this.orderable,
      referencedItem: referencedItem?.copyWith(
            objectPath: '$newObjectPath.referencedItem',
          ) ??
          this.referencedItem,
      additionalIdentifier: additionalIdentifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additionalIdentifier',
                ),
              )
              .toList() ??
          this.additionalIdentifier,
      classification: classification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classification',
                ),
              )
              .toList() ??
          this.classification,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      validityPeriod: validityPeriod?.copyWith(
            objectPath: '$newObjectPath.validityPeriod',
          ) ??
          this.validityPeriod,
      validTo: validTo?.copyWith(
            objectPath: '$newObjectPath.validTo',
          ) ??
          this.validTo,
      lastUpdated: lastUpdated?.copyWith(
            objectPath: '$newObjectPath.lastUpdated',
          ) ??
          this.lastUpdated,
      additionalCharacteristic: additionalCharacteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additionalCharacteristic',
                ),
              )
              .toList() ??
          this.additionalCharacteristic,
      additionalClassification: additionalClassification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additionalClassification',
                ),
              )
              .toList() ??
          this.additionalClassification,
      relatedEntry: relatedEntry
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedEntry',
                ),
              )
              .toList() ??
          this.relatedEntry,
    );
  }

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
  }) : super(
          objectPath: 'CatalogEntry.relatedEntry',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CatalogEntryRelatedEntry.empty() => CatalogEntryRelatedEntry(
        relationtype: CatalogEntryRelationType.values.first,
        item: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntryRelatedEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CatalogEntry.relatedEntry';
    return CatalogEntryRelatedEntry(
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
      relationtype: JsonParser.parsePrimitive<CatalogEntryRelationType>(
        json,
        'relationtype',
        CatalogEntryRelationType.fromJson,
        '$objectPath.relationtype',
      )!,
      item: JsonParser.parseObject<Reference>(
        json,
        'item',
        Reference.fromJson,
        '$objectPath.item',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relationtype':
        {
          if (child is CatalogEntryRelationType) {
            return copyWith(relationtype: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is Reference) {
            return copyWith(item: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'relationtype':
        return ['FhirCode'];
      case 'item':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CatalogEntryRelatedEntry]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CatalogEntryRelatedEntry createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'relationtype':
        {
          return copyWith(
            relationtype: CatalogEntryRelationType.empty(),
          );
        }
      case 'item':
        {
          return copyWith(
            item: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CatalogEntryRelatedEntry clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return CatalogEntryRelatedEntry(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      relationtype: relationtype,
      item: item,
    );
  }

  @override
  CatalogEntryRelatedEntry clone() => throw UnimplementedError();
  @override
  CatalogEntryRelatedEntry copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CatalogEntryRelationType? relationtype,
    Reference? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CatalogEntryRelatedEntry(
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
      relationtype: relationtype?.copyWith(
            objectPath: '$newObjectPath.relationtype',
          ) ??
          this.relationtype,
      item: item?.copyWith(
            objectPath: '$newObjectPath.item',
          ) ??
          this.item,
    );
  }

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
