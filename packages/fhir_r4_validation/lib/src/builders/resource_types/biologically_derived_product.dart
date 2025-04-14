import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        BiologicallyDerivedProduct,
        BiologicallyDerivedProductCollection,
        BiologicallyDerivedProductManipulation,
        BiologicallyDerivedProductProcessing,
        BiologicallyDerivedProductStorage,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [BiologicallyDerivedProductBuilder]
/// A material substance originating from a biological entity intended to
/// be transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProductBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductBuilder]

  BiologicallyDerivedProductBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.productCategory,
    this.productCode,
    this.status,
    this.request,
    this.quantity,
    this.parent,
    this.collection,
    this.processing,
    this.manipulation,
    this.storage,
  }) : super(
          objectPath: 'BiologicallyDerivedProduct',
          resourceType: R4ResourceType.BiologicallyDerivedProduct,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductBuilder.empty() =>
      BiologicallyDerivedProductBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct';
    return BiologicallyDerivedProductBuilder(
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
      productCategory:
          JsonParser.parsePrimitive<BiologicallyDerivedProductCategoryBuilder>(
        json,
        'productCategory',
        BiologicallyDerivedProductCategoryBuilder.fromJson,
        '$objectPath.productCategory',
      ),
      productCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productCode',
      ),
      status:
          JsonParser.parsePrimitive<BiologicallyDerivedProductStatusBuilder>(
        json,
        'status',
        BiologicallyDerivedProductStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      request: (json['request'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.request',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'quantity',
        FhirIntegerBuilder.fromJson,
        '$objectPath.quantity',
      ),
      parent: (json['parent'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parent',
              },
            ),
          )
          .toList(),
      collection:
          JsonParser.parseObject<BiologicallyDerivedProductCollectionBuilder>(
        json,
        'collection',
        BiologicallyDerivedProductCollectionBuilder.fromJson,
        '$objectPath.collection',
      ),
      processing: (json['processing'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductProcessingBuilder>(
            (v) => BiologicallyDerivedProductProcessingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processing',
              },
            ),
          )
          .toList(),
      manipulation:
          JsonParser.parseObject<BiologicallyDerivedProductManipulationBuilder>(
        json,
        'manipulation',
        BiologicallyDerivedProductManipulationBuilder.fromJson,
        '$objectPath.manipulation',
      ),
      storage: (json['storage'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductStorageBuilder>(
            (v) => BiologicallyDerivedProductStorageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.storage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BiologicallyDerivedProductBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  /// [identifier]
  /// This records identifiers associated with this biologically derived
  /// product instance that are defined by business processes and/or used to
  /// refer to it when a direct URL reference to the resource itself is not
  /// appropriate (e.g. in CDA documents, or in written / printed
  /// documentation).
  List<IdentifierBuilder>? identifier;

  /// [productCategory]
  /// Broad category of this product.
  BiologicallyDerivedProductCategoryBuilder? productCategory;

  /// [productCode]
  /// A code that identifies the kind of this biologically derived product
  /// (SNOMED Ctcode).
  CodeableConceptBuilder? productCode;

  /// [status]
  /// Whether the product is currently available.
  BiologicallyDerivedProductStatusBuilder? status;

  /// [request]
  /// Procedure request to obtain this biologically derived product.
  List<ReferenceBuilder>? request;

  /// [quantity]
  /// Number of discrete units within this product.
  FhirIntegerBuilder? quantity;

  /// [parent]
  /// Parent product (if any).
  List<ReferenceBuilder>? parent;

  /// [collection]
  /// How this product was collected.
  BiologicallyDerivedProductCollectionBuilder? collection;

  /// [processing]
  /// Any processing of the product during collection that does not change
  /// the fundamental nature of the product. For example adding
  /// anti-coagulants during the collection of Peripheral Blood Stem Cells.
  List<BiologicallyDerivedProductProcessingBuilder>? processing;

  /// [manipulation]
  /// Any manipulation of product post-collection that is intended to alter
  /// the product. For example a buffy-coat enrichment or CD8 reduction of
  /// Peripheral Blood Stem Cells to make it more suitable for infusion.
  BiologicallyDerivedProductManipulationBuilder? manipulation;

  /// [storage]
  /// Product storage.
  List<BiologicallyDerivedProductStorageBuilder>? storage;

  /// Converts a [BiologicallyDerivedProductBuilder]
  /// to [BiologicallyDerivedProduct]
  @override
  BiologicallyDerivedProduct build() =>
      BiologicallyDerivedProduct.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductBuilder]
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
    addField('productCategory', productCategory);
    addField('productCode', productCode);
    addField('status', status);
    addField('request', request);
    addField('quantity', quantity);
    addField('parent', parent);
    addField('collection', collection);
    addField('processing', processing);
    addField('manipulation', manipulation);
    addField('storage', storage);
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
      'productCategory',
      'productCode',
      'status',
      'request',
      'quantity',
      'parent',
      'collection',
      'processing',
      'manipulation',
      'storage',
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
      case 'productCategory':
        if (productCategory != null) {
          fields.add(productCategory!);
        }
      case 'productCode':
        if (productCode != null) {
          fields.add(productCode!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'request':
        if (request != null) {
          fields.addAll(request!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'parent':
        if (parent != null) {
          fields.addAll(parent!);
        }
      case 'collection':
        if (collection != null) {
          fields.add(collection!);
        }
      case 'processing':
        if (processing != null) {
          fields.addAll(processing!);
        }
      case 'manipulation':
        if (manipulation != null) {
          fields.add(manipulation!);
        }
      case 'storage':
        if (storage != null) {
          fields.addAll(storage!);
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
      case 'productCategory':
        {
          if (child is BiologicallyDerivedProductCategoryBuilder) {
            productCategory = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    BiologicallyDerivedProductCategoryBuilder(stringValue);
                productCategory = converted;
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
      case 'productCode':
        {
          if (child is CodeableConceptBuilder) {
            productCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is BiologicallyDerivedProductStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    BiologicallyDerivedProductStatusBuilder(stringValue);
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
      case 'request':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            request = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            request = [
              ...(request ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is FhirIntegerBuilder) {
            quantity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  quantity = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parent':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            parent = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            parent = [
              ...(parent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collection':
        {
          if (child is BiologicallyDerivedProductCollectionBuilder) {
            collection = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processing':
        {
          if (child is List<BiologicallyDerivedProductProcessingBuilder>) {
            // Replace or create new list
            processing = child;
            return;
          } else if (child is BiologicallyDerivedProductProcessingBuilder) {
            // Add single element to existing list or create new list
            processing = [
              ...(processing ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manipulation':
        {
          if (child is BiologicallyDerivedProductManipulationBuilder) {
            manipulation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'storage':
        {
          if (child is List<BiologicallyDerivedProductStorageBuilder>) {
            // Replace or create new list
            storage = child;
            return;
          } else if (child is BiologicallyDerivedProductStorageBuilder) {
            // Add single element to existing list or create new list
            storage = [
              ...(storage ?? []),
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
      case 'productCategory':
        return ['FhirCodeEnumBuilder'];
      case 'productCode':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['FhirIntegerBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      case 'collection':
        return ['BiologicallyDerivedProductCollectionBuilder'];
      case 'processing':
        return ['BiologicallyDerivedProductProcessingBuilder'];
      case 'manipulation':
        return ['BiologicallyDerivedProductManipulationBuilder'];
      case 'storage':
        return ['BiologicallyDerivedProductStorageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductBuilder]
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
      case 'productCategory':
        {
          productCategory = BiologicallyDerivedProductCategoryBuilder.empty();
          return;
        }
      case 'productCode':
        {
          productCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = BiologicallyDerivedProductStatusBuilder.empty();
          return;
        }
      case 'request':
        {
          request = <ReferenceBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = FhirIntegerBuilder.empty();
          return;
        }
      case 'parent':
        {
          parent = <ReferenceBuilder>[];
          return;
        }
      case 'collection':
        {
          collection = BiologicallyDerivedProductCollectionBuilder.empty();
          return;
        }
      case 'processing':
        {
          processing = <BiologicallyDerivedProductProcessingBuilder>[];
          return;
        }
      case 'manipulation':
        {
          manipulation = BiologicallyDerivedProductManipulationBuilder.empty();
          return;
        }
      case 'storage':
        {
          storage = <BiologicallyDerivedProductStorageBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductBuilder clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    BiologicallyDerivedProductCategoryBuilder? productCategory,
    CodeableConceptBuilder? productCode,
    BiologicallyDerivedProductStatusBuilder? status,
    List<ReferenceBuilder>? request,
    FhirIntegerBuilder? quantity,
    List<ReferenceBuilder>? parent,
    BiologicallyDerivedProductCollectionBuilder? collection,
    List<BiologicallyDerivedProductProcessingBuilder>? processing,
    BiologicallyDerivedProductManipulationBuilder? manipulation,
    List<BiologicallyDerivedProductStorageBuilder>? storage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = BiologicallyDerivedProductBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      productCategory: productCategory ?? this.productCategory,
      productCode: productCode ?? this.productCode,
      status: status ?? this.status,
      request: request ?? this.request,
      quantity: quantity ?? this.quantity,
      parent: parent ?? this.parent,
      collection: collection ?? this.collection,
      processing: processing ?? this.processing,
      manipulation: manipulation ?? this.manipulation,
      storage: storage ?? this.storage,
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
    if (o is! BiologicallyDerivedProductBuilder) {
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
      productCategory,
      o.productCategory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productCode,
      o.productCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductProcessingBuilder>(
      processing,
      o.processing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manipulation,
      o.manipulation,
    )) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductStorageBuilder>(
      storage,
      o.storage,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductCollectionBuilder]
/// How this product was collected.
class BiologicallyDerivedProductCollectionBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductCollectionBuilder]

  BiologicallyDerivedProductCollectionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    this.collectedX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BiologicallyDerivedProduct.collection',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductCollectionBuilder.empty() =>
      BiologicallyDerivedProductCollectionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductCollectionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.collection';
    return BiologicallyDerivedProductCollectionBuilder(
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
      collector: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'collector',
        ReferenceBuilder.fromJson,
        '$objectPath.collector',
      ),
      source: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'source',
        ReferenceBuilder.fromJson,
        '$objectPath.source',
      ),
      collectedX: JsonParser.parsePolymorphic<
          CollectedXBiologicallyDerivedProductCollectionBuilder>(
        json,
        {
          'collectedDateTime': FhirDateTimeBuilder.fromJson,
          'collectedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductCollectionBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductCollectionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductCollectionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductCollectionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductCollectionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductCollectionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductCollectionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductCollectionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// [collector]
  /// Healthcare professional who is performing the collection.
  ReferenceBuilder? collector;

  /// [source]
  /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  ReferenceBuilder? source;

  /// [collectedX]
  /// Time of product collection.
  CollectedXBiologicallyDerivedProductCollectionBuilder? collectedX;

  /// Getter for [collectedDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get collectedDateTime =>
      collectedX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [collectedPeriod] as a PeriodBuilder
  PeriodBuilder? get collectedPeriod => collectedX?.isAs<PeriodBuilder>();

  /// Converts a [BiologicallyDerivedProductCollectionBuilder]
  /// to [BiologicallyDerivedProductCollection]
  @override
  BiologicallyDerivedProductCollection build() =>
      BiologicallyDerivedProductCollection.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductCollectionBuilder]
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
    addField('collector', collector);
    addField('source', source);
    if (collectedX != null) {
      final fhirType = collectedX!.fhirType;
      addField('collected${fhirType.capitalizeFirstLetter()}', collectedX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'collector',
      'source',
      'collectedX',
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
      case 'collector':
        if (collector != null) {
          fields.add(collector!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'collected':
        if (collectedX != null) {
          fields.add(collectedX!);
        }
      case 'collectedX':
        if (collectedX != null) {
          fields.add(collectedX!);
        }
      case 'collectedDateTime':
        if (collectedX is FhirDateTimeBuilder) {
          fields.add(collectedX!);
        }
      case 'collectedPeriod':
        if (collectedX is PeriodBuilder) {
          fields.add(collectedX!);
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
      case 'collector':
        {
          if (child is ReferenceBuilder) {
            collector = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is ReferenceBuilder) {
            source = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collected':
      case 'collectedX':
        {
          if (child is CollectedXBiologicallyDerivedProductCollectionBuilder) {
            collectedX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              collectedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              collectedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collectedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            collectedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'collectedPeriod':
        {
          if (child is PeriodBuilder) {
            collectedX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'collector':
        return ['ReferenceBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      case 'collected':
      case 'collectedX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'collectedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'collectedPeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductCollectionBuilder]
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
      case 'collector':
        {
          collector = ReferenceBuilder.empty();
          return;
        }
      case 'source':
        {
          source = ReferenceBuilder.empty();
          return;
        }
      case 'collected':
      case 'collectedX':
      case 'collectedDateTime':
        {
          collectedX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'collectedPeriod':
        {
          collectedX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductCollectionBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductCollectionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? collector,
    ReferenceBuilder? source,
    CollectedXBiologicallyDerivedProductCollectionBuilder? collectedX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductCollectionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      source: source ?? this.source,
      collectedX: collectedX ?? this.collectedX,
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
    if (o is! BiologicallyDerivedProductCollectionBuilder) {
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
      collector,
      o.collector,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collectedX,
      o.collectedX,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductProcessingBuilder]
/// Any processing of the product during collection that does not change
/// the fundamental nature of the product. For example adding
/// anti-coagulants during the collection of Peripheral Blood Stem Cells.
class BiologicallyDerivedProductProcessingBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductProcessingBuilder]

  BiologicallyDerivedProductProcessingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BiologicallyDerivedProduct.processing',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductProcessingBuilder.empty() =>
      BiologicallyDerivedProductProcessingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductProcessingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.processing';
    return BiologicallyDerivedProductProcessingBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      procedure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'procedure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.procedure',
      ),
      additive: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'additive',
        ReferenceBuilder.fromJson,
        '$objectPath.additive',
      ),
      timeX: JsonParser.parsePolymorphic<
          TimeXBiologicallyDerivedProductProcessingBuilder>(
        json,
        {
          'timeDateTime': FhirDateTimeBuilder.fromJson,
          'timePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductProcessingBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductProcessingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductProcessingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductProcessingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductProcessingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductProcessingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductProcessingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductProcessingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductProcessing';

  /// [description]
  /// Description of of processing.
  FhirStringBuilder? description;

  /// [procedure]
  /// Procesing code.
  CodeableConceptBuilder? procedure;

  /// [additive]
  /// Substance added during processing.
  ReferenceBuilder? additive;

  /// [timeX]
  /// Time of processing.
  TimeXBiologicallyDerivedProductProcessingBuilder? timeX;

  /// Getter for [timeDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timeDateTime => timeX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [timePeriod] as a PeriodBuilder
  PeriodBuilder? get timePeriod => timeX?.isAs<PeriodBuilder>();

  /// Converts a [BiologicallyDerivedProductProcessingBuilder]
  /// to [BiologicallyDerivedProductProcessing]
  @override
  BiologicallyDerivedProductProcessing build() =>
      BiologicallyDerivedProductProcessing.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductProcessingBuilder]
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
    addField('description', description);
    addField('procedure', procedure);
    addField('additive', additive);
    if (timeX != null) {
      final fhirType = timeX!.fhirType;
      addField('time${fhirType.capitalizeFirstLetter()}', timeX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'procedure',
      'additive',
      'timeX',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.add(procedure!);
        }
      case 'additive':
        if (additive != null) {
          fields.add(additive!);
        }
      case 'time':
        if (timeX != null) {
          fields.add(timeX!);
        }
      case 'timeX':
        if (timeX != null) {
          fields.add(timeX!);
        }
      case 'timeDateTime':
        if (timeX is FhirDateTimeBuilder) {
          fields.add(timeX!);
        }
      case 'timePeriod':
        if (timeX is PeriodBuilder) {
          fields.add(timeX!);
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedure':
        {
          if (child is CodeableConceptBuilder) {
            procedure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additive':
        {
          if (child is ReferenceBuilder) {
            additive = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'time':
      case 'timeX':
        {
          if (child is TimeXBiologicallyDerivedProductProcessingBuilder) {
            timeX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              timeX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timeX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timePeriod':
        {
          if (child is PeriodBuilder) {
            timeX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'procedure':
        return ['CodeableConceptBuilder'];
      case 'additive':
        return ['ReferenceBuilder'];
      case 'time':
      case 'timeX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'timeDateTime':
        return ['FhirDateTimeBuilder'];
      case 'timePeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductProcessingBuilder]
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'procedure':
        {
          procedure = CodeableConceptBuilder.empty();
          return;
        }
      case 'additive':
        {
          additive = ReferenceBuilder.empty();
          return;
        }
      case 'time':
      case 'timeX':
      case 'timeDateTime':
        {
          timeX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'timePeriod':
        {
          timeX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductProcessingBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductProcessingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    CodeableConceptBuilder? procedure,
    ReferenceBuilder? additive,
    TimeXBiologicallyDerivedProductProcessingBuilder? timeX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductProcessingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeX: timeX ?? this.timeX,
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
    if (o is! BiologicallyDerivedProductProcessingBuilder) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeX,
      o.timeX,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductManipulationBuilder]
/// Any manipulation of product post-collection that is intended to alter
/// the product. For example a buffy-coat enrichment or CD8 reduction of
/// Peripheral Blood Stem Cells to make it more suitable for infusion.
class BiologicallyDerivedProductManipulationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductManipulationBuilder]

  BiologicallyDerivedProductManipulationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.timeX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BiologicallyDerivedProduct.manipulation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductManipulationBuilder.empty() =>
      BiologicallyDerivedProductManipulationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductManipulationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.manipulation';
    return BiologicallyDerivedProductManipulationBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      timeX: JsonParser.parsePolymorphic<
          TimeXBiologicallyDerivedProductManipulationBuilder>(
        json,
        {
          'timeDateTime': FhirDateTimeBuilder.fromJson,
          'timePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductManipulationBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductManipulationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductManipulationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductManipulationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductManipulationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductManipulationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductManipulationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductManipulationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductManipulation';

  /// [description]
  /// Description of manipulation.
  FhirStringBuilder? description;

  /// [timeX]
  /// Time of manipulation.
  TimeXBiologicallyDerivedProductManipulationBuilder? timeX;

  /// Getter for [timeDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timeDateTime => timeX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [timePeriod] as a PeriodBuilder
  PeriodBuilder? get timePeriod => timeX?.isAs<PeriodBuilder>();

  /// Converts a [BiologicallyDerivedProductManipulationBuilder]
  /// to [BiologicallyDerivedProductManipulation]
  @override
  BiologicallyDerivedProductManipulation build() =>
      BiologicallyDerivedProductManipulation.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductManipulationBuilder]
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
    addField('description', description);
    if (timeX != null) {
      final fhirType = timeX!.fhirType;
      addField('time${fhirType.capitalizeFirstLetter()}', timeX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'timeX',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'time':
        if (timeX != null) {
          fields.add(timeX!);
        }
      case 'timeX':
        if (timeX != null) {
          fields.add(timeX!);
        }
      case 'timeDateTime':
        if (timeX is FhirDateTimeBuilder) {
          fields.add(timeX!);
        }
      case 'timePeriod':
        if (timeX is PeriodBuilder) {
          fields.add(timeX!);
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'time':
      case 'timeX':
        {
          if (child is TimeXBiologicallyDerivedProductManipulationBuilder) {
            timeX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              timeX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timeX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timePeriod':
        {
          if (child is PeriodBuilder) {
            timeX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'time':
      case 'timeX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'timeDateTime':
        return ['FhirDateTimeBuilder'];
      case 'timePeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductManipulationBuilder]
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'time':
      case 'timeX':
      case 'timeDateTime':
        {
          timeX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'timePeriod':
        {
          timeX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductManipulationBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductManipulationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    TimeXBiologicallyDerivedProductManipulationBuilder? timeX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductManipulationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      timeX: timeX ?? this.timeX,
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
    if (o is! BiologicallyDerivedProductManipulationBuilder) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeX,
      o.timeX,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductStorageBuilder]
/// Product storage.
class BiologicallyDerivedProductStorageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductStorageBuilder]

  BiologicallyDerivedProductStorageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.temperature,
    this.scale,
    this.duration,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BiologicallyDerivedProduct.storage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductStorageBuilder.empty() =>
      BiologicallyDerivedProductStorageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductStorageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.storage';
    return BiologicallyDerivedProductStorageBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      temperature: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'temperature',
        FhirDecimalBuilder.fromJson,
        '$objectPath.temperature',
      ),
      scale: JsonParser.parsePrimitive<
          BiologicallyDerivedProductStorageScaleBuilder>(
        json,
        'scale',
        BiologicallyDerivedProductStorageScaleBuilder.fromJson,
        '$objectPath.scale',
      ),
      duration: JsonParser.parseObject<PeriodBuilder>(
        json,
        'duration',
        PeriodBuilder.fromJson,
        '$objectPath.duration',
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductStorageBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductStorageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductStorageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductStorageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductStorageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductStorageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductStorageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductStorageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductStorage';

  /// [description]
  /// Description of storage.
  FhirStringBuilder? description;

  /// [temperature]
  /// Storage temperature.
  FhirDecimalBuilder? temperature;

  /// [scale]
  /// Temperature scale used.
  BiologicallyDerivedProductStorageScaleBuilder? scale;

  /// [duration]
  /// Storage timeperiod.
  PeriodBuilder? duration;

  /// Converts a [BiologicallyDerivedProductStorageBuilder]
  /// to [BiologicallyDerivedProductStorage]
  @override
  BiologicallyDerivedProductStorage build() =>
      BiologicallyDerivedProductStorage.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductStorageBuilder]
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
    addField('description', description);
    addField('temperature', temperature);
    addField('scale', scale);
    addField('duration', duration);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'temperature',
      'scale',
      'duration',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'temperature':
        if (temperature != null) {
          fields.add(temperature!);
        }
      case 'scale':
        if (scale != null) {
          fields.add(scale!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'temperature':
        {
          if (child is FhirDecimalBuilder) {
            temperature = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  temperature = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scale':
        {
          if (child is BiologicallyDerivedProductStorageScaleBuilder) {
            scale = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    BiologicallyDerivedProductStorageScaleBuilder(stringValue);
                scale = converted;
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
      case 'duration':
        {
          if (child is PeriodBuilder) {
            duration = child;
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
      case 'description':
        return ['FhirStringBuilder'];
      case 'temperature':
        return ['FhirDecimalBuilder'];
      case 'scale':
        return ['FhirCodeEnumBuilder'];
      case 'duration':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductStorageBuilder]
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'temperature':
        {
          temperature = FhirDecimalBuilder.empty();
          return;
        }
      case 'scale':
        {
          scale = BiologicallyDerivedProductStorageScaleBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductStorageBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductStorageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    FhirDecimalBuilder? temperature,
    BiologicallyDerivedProductStorageScaleBuilder? scale,
    PeriodBuilder? duration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductStorageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      temperature: temperature ?? this.temperature,
      scale: scale ?? this.scale,
      duration: duration ?? this.duration,
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
    if (o is! BiologicallyDerivedProductStorageBuilder) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      temperature,
      o.temperature,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scale,
      o.scale,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    return true;
  }
}
