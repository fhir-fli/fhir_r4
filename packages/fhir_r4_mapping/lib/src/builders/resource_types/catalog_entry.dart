import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        CatalogEntry,
        CatalogEntryRelatedEntry,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [CatalogEntryBuilder]
/// Catalog entries are wrappers that contextualize items included in a
/// catalog.
class CatalogEntryBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [CatalogEntryBuilder]

  CatalogEntryBuilder({
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
    this.orderable,
    this.referencedItem,
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
  /// For Builder classes, no fields are required
  factory CatalogEntryBuilder.empty() => CatalogEntryBuilder(
        orderable: FhirBooleanBuilder.empty(),
        referencedItem: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CatalogEntry';
    return CatalogEntryBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      orderable: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'orderable',
        FhirBooleanBuilder.fromJson,
        '$objectPath.orderable',
      ),
      referencedItem: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'referencedItem',
        ReferenceBuilder.fromJson,
        '$objectPath.referencedItem',
      ),
      additionalIdentifier: (json['additionalIdentifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additionalIdentifier',
              },
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      validityPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'validityPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.validityPeriod',
      ),
      validTo: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'validTo',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.validTo',
      ),
      lastUpdated: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'lastUpdated',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.lastUpdated',
      ),
      additionalCharacteristic:
          (json['additionalCharacteristic'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.additionalCharacteristic',
                  },
                ),
              )
              .toList(),
      additionalClassification:
          (json['additionalClassification'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.additionalClassification',
                  },
                ),
              )
              .toList(),
      relatedEntry: (json['relatedEntry'] as List<dynamic>?)
          ?.map<CatalogEntryRelatedEntryBuilder>(
            (v) => CatalogEntryRelatedEntryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedEntry',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CatalogEntryBuilder]
  /// from a [String] or [YamlMap] object
  factory CatalogEntryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CatalogEntryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CatalogEntryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CatalogEntryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CatalogEntryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CatalogEntryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CatalogEntryBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// The type of item - medication, device, service, protocol or other.
  CodeableConceptBuilder? type;

  /// [orderable]
  /// Whether the entry represents an orderable item.
  FhirBooleanBuilder? orderable;

  /// [referencedItem]
  /// The item in a catalog or definition.
  ReferenceBuilder? referencedItem;

  /// [additionalIdentifier]
  /// Used in supporting related concepts, e.g. NDC to RxNorm.
  List<IdentifierBuilder>? additionalIdentifier;

  /// [classification]
  /// Classes of devices, or ATC for medication.
  List<CodeableConceptBuilder>? classification;

  /// [status]
  /// Used to support catalog exchange even for unsupported products, e.g.
  /// getting list of medications even if not prescribable.
  PublicationStatusBuilder? status;

  /// [validityPeriod]
  /// The time period in which this catalog entry is expected to be active.
  PeriodBuilder? validityPeriod;

  /// [validTo]
  /// The date until which this catalog entry is expected to be active.
  FhirDateTimeBuilder? validTo;

  /// [lastUpdated]
  /// Typically date of issue is different from the beginning of the
  /// validity. This can be used to see when an item was last updated.
  FhirDateTimeBuilder? lastUpdated;

  /// [additionalCharacteristic]
  /// Used for examplefor Out of Formulary, or any specifics.
  List<CodeableConceptBuilder>? additionalCharacteristic;

  /// [additionalClassification]
  /// User for example for ATC classification, or.
  List<CodeableConceptBuilder>? additionalClassification;

  /// [relatedEntry]
  /// Used for example, to point to a substance, or to a device used to
  /// administer a medication.
  List<CatalogEntryRelatedEntryBuilder>? relatedEntry;

  /// Converts a [CatalogEntryBuilder]
  /// to [CatalogEntry]
  @override
  CatalogEntry build() => CatalogEntry.fromJson(toJson());

  /// Converts a [CatalogEntryBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    addField('type', type);
    addField('orderable', orderable);
    addField('referencedItem', referencedItem);
    addField('additionalIdentifier', additionalIdentifier);
    addField('classification', classification);
    addField('status', status);
    addField('validityPeriod', validityPeriod);
    addField('validTo', validTo);
    addField('lastUpdated', lastUpdated);
    addField('additionalCharacteristic', additionalCharacteristic);
    addField('additionalClassification', additionalClassification);
    addField('relatedEntry', relatedEntry);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (orderable != null) {
          fields.add(orderable!);
        }
      case 'referencedItem':
        if (referencedItem != null) {
          fields.add(referencedItem!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'orderable':
        {
          if (child is FhirBooleanBuilder) {
            orderable = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                orderable = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referencedItem':
        {
          if (child is ReferenceBuilder) {
            referencedItem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additionalIdentifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            additionalIdentifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            additionalIdentifier = [
              ...(additionalIdentifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classification':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classification = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classification = [
              ...(classification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validityPeriod':
        {
          if (child is PeriodBuilder) {
            validityPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validTo':
        {
          if (child is FhirDateTimeBuilder) {
            validTo = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                validTo = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastUpdated':
        {
          if (child is FhirDateTimeBuilder) {
            lastUpdated = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                lastUpdated = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additionalCharacteristic':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            additionalCharacteristic = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            additionalCharacteristic = [
              ...(additionalCharacteristic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additionalClassification':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            additionalClassification = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            additionalClassification = [
              ...(additionalClassification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedEntry':
        {
          if (child is List<CatalogEntryRelatedEntryBuilder>) {
            // Replace or create new list
            relatedEntry = child;
            return;
          } else if (child is CatalogEntryRelatedEntryBuilder) {
            // Add single element to existing list or create new list
            relatedEntry = [
              ...(relatedEntry ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'orderable':
        return ['FhirBooleanBuilder'];
      case 'referencedItem':
        return ['ReferenceBuilder'];
      case 'additionalIdentifier':
        return ['IdentifierBuilder'];
      case 'classification':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'validityPeriod':
        return ['PeriodBuilder'];
      case 'validTo':
        return ['FhirDateTimeBuilder'];
      case 'lastUpdated':
        return ['FhirDateTimeBuilder'];
      case 'additionalCharacteristic':
        return ['CodeableConceptBuilder'];
      case 'additionalClassification':
        return ['CodeableConceptBuilder'];
      case 'relatedEntry':
        return ['CatalogEntryRelatedEntryBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CatalogEntryBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'orderable':
        {
          orderable = FhirBooleanBuilder.empty();
          return;
        }
      case 'referencedItem':
        {
          referencedItem = ReferenceBuilder.empty();
          return;
        }
      case 'additionalIdentifier':
        {
          additionalIdentifier = <IdentifierBuilder>[];
          return;
        }
      case 'classification':
        {
          classification = <CodeableConceptBuilder>[];
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'validityPeriod':
        {
          validityPeriod = PeriodBuilder.empty();
          return;
        }
      case 'validTo':
        {
          validTo = FhirDateTimeBuilder.empty();
          return;
        }
      case 'lastUpdated':
        {
          lastUpdated = FhirDateTimeBuilder.empty();
          return;
        }
      case 'additionalCharacteristic':
        {
          additionalCharacteristic = <CodeableConceptBuilder>[];
          return;
        }
      case 'additionalClassification':
        {
          additionalClassification = <CodeableConceptBuilder>[];
          return;
        }
      case 'relatedEntry':
        {
          relatedEntry = <CatalogEntryRelatedEntryBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CatalogEntryBuilder clone() => throw UnimplementedError();
  @override
  CatalogEntryBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? type,
    FhirBooleanBuilder? orderable,
    ReferenceBuilder? referencedItem,
    List<IdentifierBuilder>? additionalIdentifier,
    List<CodeableConceptBuilder>? classification,
    PublicationStatusBuilder? status,
    PeriodBuilder? validityPeriod,
    FhirDateTimeBuilder? validTo,
    FhirDateTimeBuilder? lastUpdated,
    List<CodeableConceptBuilder>? additionalCharacteristic,
    List<CodeableConceptBuilder>? additionalClassification,
    List<CatalogEntryRelatedEntryBuilder>? relatedEntry,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = CatalogEntryBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      orderable: orderable ?? this.orderable,
      referencedItem: referencedItem ?? this.referencedItem,
      additionalIdentifier: additionalIdentifier ?? this.additionalIdentifier,
      classification: classification ?? this.classification,
      status: status ?? this.status,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      validTo: validTo ?? this.validTo,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      additionalCharacteristic:
          additionalCharacteristic ?? this.additionalCharacteristic,
      additionalClassification:
          additionalClassification ?? this.additionalClassification,
      relatedEntry: relatedEntry ?? this.relatedEntry,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! CatalogEntryBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<IdentifierBuilder>(
      additionalIdentifier,
      o.additionalIdentifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      additionalCharacteristic,
      o.additionalCharacteristic,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      additionalClassification,
      o.additionalClassification,
    )) {
      return false;
    }
    if (!listEquals<CatalogEntryRelatedEntryBuilder>(
      relatedEntry,
      o.relatedEntry,
    )) {
      return false;
    }
    return true;
  }
}

/// [CatalogEntryRelatedEntryBuilder]
/// Used for example, to point to a substance, or to a device used to
/// administer a medication.
class CatalogEntryRelatedEntryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CatalogEntryRelatedEntryBuilder]

  CatalogEntryRelatedEntryBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relationtype,
    this.item,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CatalogEntry.relatedEntry',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CatalogEntryRelatedEntryBuilder.empty() =>
      CatalogEntryRelatedEntryBuilder(
        relationtype: CatalogEntryRelationTypeBuilder.values.first,
        item: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntryRelatedEntryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CatalogEntry.relatedEntry';
    return CatalogEntryRelatedEntryBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      relationtype: JsonParser.parsePrimitive<CatalogEntryRelationTypeBuilder>(
        json,
        'relationtype',
        CatalogEntryRelationTypeBuilder.fromJson,
        '$objectPath.relationtype',
      ),
      item: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'item',
        ReferenceBuilder.fromJson,
        '$objectPath.item',
      ),
    );
  }

  /// Deserialize [CatalogEntryRelatedEntryBuilder]
  /// from a [String] or [YamlMap] object
  factory CatalogEntryRelatedEntryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CatalogEntryRelatedEntryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CatalogEntryRelatedEntryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CatalogEntryRelatedEntryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CatalogEntryRelatedEntryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CatalogEntryRelatedEntryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CatalogEntryRelatedEntryBuilder.fromJson(json);
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
  CatalogEntryRelationTypeBuilder? relationtype;

  /// [item]
  /// The reference to the related item.
  ReferenceBuilder? item;

  /// Converts a [CatalogEntryRelatedEntryBuilder]
  /// to [CatalogEntryRelatedEntry]
  @override
  CatalogEntryRelatedEntry build() =>
      CatalogEntryRelatedEntry.fromJson(toJson());

  /// Converts a [CatalogEntryRelatedEntryBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('relationtype', relationtype);
    addField('item', item);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (relationtype != null) {
          fields.add(relationtype!);
        }
      case 'item':
        if (item != null) {
          fields.add(item!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationtype':
        {
          if (child is CatalogEntryRelationTypeBuilder) {
            relationtype = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CatalogEntryRelationTypeBuilder(stringValue);
                relationtype = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is ReferenceBuilder) {
            item = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'relationtype':
        return ['FhirCodeEnumBuilder'];
      case 'item':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CatalogEntryRelatedEntryBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'relationtype':
        {
          relationtype = CatalogEntryRelationTypeBuilder.empty();
          return;
        }
      case 'item':
        {
          item = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CatalogEntryRelatedEntryBuilder clone() => throw UnimplementedError();
  @override
  CatalogEntryRelatedEntryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CatalogEntryRelationTypeBuilder? relationtype,
    ReferenceBuilder? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CatalogEntryRelatedEntryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationtype: relationtype ?? this.relationtype,
      item: item ?? this.item,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! CatalogEntryRelatedEntryBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
