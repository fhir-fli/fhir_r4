import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [BiologicallyDerivedProduct]
/// A material substance originating from a biological entity intended to
/// be transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct extends DomainResource {
  /// Primary constructor for
  /// [BiologicallyDerivedProduct]

  const BiologicallyDerivedProduct({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BiologicallyDerivedProduct.empty() =>
      const BiologicallyDerivedProduct();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct';
    return BiologicallyDerivedProduct(
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
      productCategory:
          JsonParser.parsePrimitive<BiologicallyDerivedProductCategory>(
        json,
        'productCategory',
        BiologicallyDerivedProductCategory.fromJson,
        '$objectPath.productCategory',
      ),
      productCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'productCode',
        CodeableConcept.fromJson,
        '$objectPath.productCode',
      ),
      status: JsonParser.parsePrimitive<BiologicallyDerivedProductStatus>(
        json,
        'status',
        BiologicallyDerivedProductStatus.fromJson,
        '$objectPath.status',
      ),
      request: (json['request'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.request',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'quantity',
        FhirInteger.fromJson,
        '$objectPath.quantity',
      ),
      parent: (json['parent'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parent',
              },
            ),
          )
          .toList(),
      collection: JsonParser.parseObject<BiologicallyDerivedProductCollection>(
        json,
        'collection',
        BiologicallyDerivedProductCollection.fromJson,
        '$objectPath.collection',
      ),
      processing: (json['processing'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductProcessing>(
            (v) => BiologicallyDerivedProductProcessing.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processing',
              },
            ),
          )
          .toList(),
      manipulation:
          JsonParser.parseObject<BiologicallyDerivedProductManipulation>(
        json,
        'manipulation',
        BiologicallyDerivedProductManipulation.fromJson,
        '$objectPath.manipulation',
      ),
      storage: (json['storage'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductStorage>(
            (v) => BiologicallyDerivedProductStorage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.storage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BiologicallyDerivedProduct]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProduct.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProduct.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProduct.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProduct '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProduct]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProduct.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProduct.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [productCategory]
  /// Broad category of this product.
  final BiologicallyDerivedProductCategory? productCategory;

  /// [productCode]
  /// A code that identifies the kind of this biologically derived product
  /// (SNOMED Ctcode).
  final CodeableConcept? productCode;

  /// [status]
  /// Whether the product is currently available.
  final BiologicallyDerivedProductStatus? status;

  /// [request]
  /// Procedure request to obtain this biologically derived product.
  final List<Reference>? request;

  /// [quantity]
  /// Number of discrete units within this product.
  final FhirInteger? quantity;

  /// [parent]
  /// Parent product (if any).
  final List<Reference>? parent;

  /// [collection]
  /// How this product was collected.
  final BiologicallyDerivedProductCollection? collection;

  /// [processing]
  /// Any processing of the product during collection that does not change
  /// the fundamental nature of the product. For example adding
  /// anti-coagulants during the collection of Peripheral Blood Stem Cells.
  final List<BiologicallyDerivedProductProcessing>? processing;

  /// [manipulation]
  /// Any manipulation of product post-collection that is intended to alter
  /// the product. For example a buffy-coat enrichment or CD8 reduction of
  /// Peripheral Blood Stem Cells to make it more suitable for infusion.
  final BiologicallyDerivedProductManipulation? manipulation;

  /// [storage]
  /// Product storage.
  final List<BiologicallyDerivedProductStorage>? storage;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'productCategory':
        {
          if (child is BiologicallyDerivedProductCategory) {
            return copyWith(productCategory: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'productCode':
        {
          if (child is CodeableConcept) {
            return copyWith(productCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is BiologicallyDerivedProductStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'request':
        {
          if (child is List<Reference>) {
            return copyWith(request: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantity':
        {
          if (child is FhirInteger) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'parent':
        {
          if (child is List<Reference>) {
            return copyWith(parent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collection':
        {
          if (child is BiologicallyDerivedProductCollection) {
            return copyWith(collection: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'processing':
        {
          if (child is List<BiologicallyDerivedProductProcessing>) {
            return copyWith(processing: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'manipulation':
        {
          if (child is BiologicallyDerivedProductManipulation) {
            return copyWith(manipulation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'storage':
        {
          if (child is List<BiologicallyDerivedProductStorage>) {
            return copyWith(storage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'productCategory':
        return ['FhirCode'];
      case 'productCode':
        return ['CodeableConcept'];
      case 'status':
        return ['FhirCode'];
      case 'request':
        return ['Reference'];
      case 'quantity':
        return ['FhirInteger'];
      case 'parent':
        return ['Reference'];
      case 'collection':
        return ['BiologicallyDerivedProductCollection'];
      case 'processing':
        return ['BiologicallyDerivedProductProcessing'];
      case 'manipulation':
        return ['BiologicallyDerivedProductManipulation'];
      case 'storage':
        return ['BiologicallyDerivedProductStorage'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProduct]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  BiologicallyDerivedProduct createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'productCategory':
        {
          return copyWith(
            productCategory: BiologicallyDerivedProductCategory.empty(),
          );
        }
      case 'productCode':
        {
          return copyWith(productCode: CodeableConcept.empty());
        }
      case 'status':
        {
          return copyWith(status: BiologicallyDerivedProductStatus.empty());
        }
      case 'request':
        {
          return copyWith(request: <Reference>[]);
        }
      case 'quantity':
        {
          return copyWith(quantity: FhirInteger.empty());
        }
      case 'parent':
        {
          return copyWith(parent: <Reference>[]);
        }
      case 'collection':
        {
          return copyWith(
            collection: BiologicallyDerivedProductCollection.empty(),
          );
        }
      case 'processing':
        {
          return copyWith(processing: <BiologicallyDerivedProductProcessing>[]);
        }
      case 'manipulation':
        {
          return copyWith(
            manipulation: BiologicallyDerivedProductManipulation.empty(),
          );
        }
      case 'storage':
        {
          return copyWith(storage: <BiologicallyDerivedProductStorage>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  BiologicallyDerivedProduct clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool productCategory = false,
    bool productCode = false,
    bool status = false,
    bool request = false,
    bool quantity = false,
    bool parent = false,
    bool collection = false,
    bool processing = false,
    bool manipulation = false,
    bool storage = false,
  }) {
    return BiologicallyDerivedProduct(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      productCategory: productCategory ? null : this.productCategory,
      productCode: productCode ? null : this.productCode,
      status: status ? null : this.status,
      request: request ? null : this.request,
      quantity: quantity ? null : this.quantity,
      parent: parent ? null : this.parent,
      collection: collection ? null : this.collection,
      processing: processing ? null : this.processing,
      manipulation: manipulation ? null : this.manipulation,
      storage: storage ? null : this.storage,
    );
  }

  @override
  BiologicallyDerivedProduct clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProduct copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    BiologicallyDerivedProductCategory? productCategory,
    CodeableConcept? productCode,
    BiologicallyDerivedProductStatus? status,
    List<Reference>? request,
    FhirInteger? quantity,
    List<Reference>? parent,
    BiologicallyDerivedProductCollection? collection,
    List<BiologicallyDerivedProductProcessing>? processing,
    BiologicallyDerivedProductManipulation? manipulation,
    List<BiologicallyDerivedProductStorage>? storage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return BiologicallyDerivedProduct(
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
      productCategory: productCategory?.copyWith(
            objectPath: '$newObjectPath.productCategory',
          ) ??
          this.productCategory,
      productCode: productCode?.copyWith(
            objectPath: '$newObjectPath.productCode',
          ) ??
          this.productCode,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      request: request
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.request',
                ),
              )
              .toList() ??
          this.request,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      parent: parent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parent',
                ),
              )
              .toList() ??
          this.parent,
      collection: collection?.copyWith(
            objectPath: '$newObjectPath.collection',
          ) ??
          this.collection,
      processing: processing
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.processing',
                ),
              )
              .toList() ??
          this.processing,
      manipulation: manipulation?.copyWith(
            objectPath: '$newObjectPath.manipulation',
          ) ??
          this.manipulation,
      storage: storage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.storage',
                ),
              )
              .toList() ??
          this.storage,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProduct) {
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
    if (!equalsDeepWithNull(productCategory, o.productCategory)) {
      return false;
    }
    if (!equalsDeepWithNull(productCode, o.productCode)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!listEquals<Reference>(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!listEquals<Reference>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(collection, o.collection)) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductProcessing>(
      processing,
      o.processing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(manipulation, o.manipulation)) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductStorage>(
      storage,
      o.storage,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductCollection]
/// How this product was collected.
class BiologicallyDerivedProductCollection extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductCollection]

  const BiologicallyDerivedProductCollection({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BiologicallyDerivedProductCollection.empty() =>
      const BiologicallyDerivedProductCollection();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductCollection.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.collection';
    return BiologicallyDerivedProductCollection(
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
      collector: JsonParser.parseObject<Reference>(
        json,
        'collector',
        Reference.fromJson,
        '$objectPath.collector',
      ),
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
        '$objectPath.source',
      ),
      collectedX: JsonParser.parsePolymorphic<
          CollectedXBiologicallyDerivedProductCollection>(
        json,
        {
          'collectedDateTime': FhirDateTime.fromJson,
          'collectedPeriod': Period.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductCollection]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductCollection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductCollection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductCollection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductCollection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductCollection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductCollection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// [collector]
  /// Healthcare professional who is performing the collection.
  final Reference? collector;

  /// [source]
  /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  final Reference? source;

  /// [collectedX]
  /// Time of product collection.
  final CollectedXBiologicallyDerivedProductCollection? collectedX;

  /// Getter for [collectedDateTime] as a FhirDateTime
  FhirDateTime? get collectedDateTime => collectedX?.isAs<FhirDateTime>();

  /// Getter for [collectedPeriod] as a Period
  Period? get collectedPeriod => collectedX?.isAs<Period>();
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
    addField('collector', collector);
    addField('source', source);
    if (collectedX != null) {
      final fhirType = collectedX!.fhirType;
      addField('collected${fhirType.capitalize()}', collectedX);
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
      case 'collector':
        if (collector != null) {
          fields.add(collector!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'collected':
        fields.add(collectedX!);
      case 'collectedX':
        fields.add(collectedX!);
      case 'collectedDateTime':
        if (collectedX is FhirDateTime) {
          fields.add(collectedX!);
        }
      case 'collectedPeriod':
        if (collectedX is Period) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collector':
        {
          if (child is Reference) {
            return copyWith(collector: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'source':
        {
          if (child is Reference) {
            return copyWith(source: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectedX':
        {
          if (child is CollectedXBiologicallyDerivedProductCollection) {
            // child is e.g. SubjectX union
            return copyWith(collectedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectedFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(collectedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectedPeriod':
        {
          if (child is Period) {
            return copyWith(collectedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'collector':
        return ['Reference'];
      case 'source':
        return ['Reference'];
      case 'collected':
      case 'collectedX':
        return ['FhirDateTime', 'Period'];
      case 'collectedDateTime':
        return ['FhirDateTime'];
      case 'collectedPeriod':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductCollection]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  BiologicallyDerivedProductCollection createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'collector':
        {
          return copyWith(collector: Reference.empty());
        }
      case 'source':
        {
          return copyWith(source: Reference.empty());
        }
      case 'collected':
      case 'collectedX':
      case 'collectedDateTime':
        {
          return copyWith(collectedX: FhirDateTime.empty());
        }
      case 'collectedPeriod':
        {
          return copyWith(collectedX: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  BiologicallyDerivedProductCollection clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool collector = false,
    bool source = false,
    bool collected = false,
  }) {
    return BiologicallyDerivedProductCollection(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      collector: collector ? null : this.collector,
      source: source ? null : this.source,
      collectedX: collected ? null : collectedX,
    );
  }

  @override
  BiologicallyDerivedProductCollection clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductCollection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    Reference? source,
    CollectedXBiologicallyDerivedProductCollection? collectedX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BiologicallyDerivedProductCollection(
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
      collector: collector?.copyWith(
            objectPath: '$newObjectPath.collector',
          ) ??
          this.collector,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      collectedX: collectedX?.copyWith(
            objectPath: '$newObjectPath.collectedX',
          ) as CollectedXBiologicallyDerivedProductCollection? ??
          this.collectedX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductCollection) {
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
    if (!equalsDeepWithNull(collector, o.collector)) {
      return false;
    }
    if (!equalsDeepWithNull(source, o.source)) {
      return false;
    }
    if (!equalsDeepWithNull(collectedX, o.collectedX)) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductProcessing]
/// Any processing of the product during collection that does not change
/// the fundamental nature of the product. For example adding
/// anti-coagulants during the collection of Peripheral Blood Stem Cells.
class BiologicallyDerivedProductProcessing extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductProcessing]

  const BiologicallyDerivedProductProcessing({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BiologicallyDerivedProductProcessing.empty() =>
      const BiologicallyDerivedProductProcessing();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductProcessing.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.processing';
    return BiologicallyDerivedProductProcessing(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      procedure: JsonParser.parseObject<CodeableConcept>(
        json,
        'procedure',
        CodeableConcept.fromJson,
        '$objectPath.procedure',
      ),
      additive: JsonParser.parseObject<Reference>(
        json,
        'additive',
        Reference.fromJson,
        '$objectPath.additive',
      ),
      timeX: JsonParser.parsePolymorphic<
          TimeXBiologicallyDerivedProductProcessing>(
        json,
        {
          'timeDateTime': FhirDateTime.fromJson,
          'timePeriod': Period.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductProcessing]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductProcessing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductProcessing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductProcessing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductProcessing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductProcessing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductProcessing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductProcessing';

  /// [description]
  /// Description of of processing.
  final FhirString? description;

  /// [procedure]
  /// Procesing code.
  final CodeableConcept? procedure;

  /// [additive]
  /// Substance added during processing.
  final Reference? additive;

  /// [timeX]
  /// Time of processing.
  final TimeXBiologicallyDerivedProductProcessing? timeX;

  /// Getter for [timeDateTime] as a FhirDateTime
  FhirDateTime? get timeDateTime => timeX?.isAs<FhirDateTime>();

  /// Getter for [timePeriod] as a Period
  Period? get timePeriod => timeX?.isAs<Period>();
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
    addField('description', description);
    addField('procedure', procedure);
    addField('additive', additive);
    if (timeX != null) {
      final fhirType = timeX!.fhirType;
      addField('time${fhirType.capitalize()}', timeX);
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
        fields.add(timeX!);
      case 'timeX':
        fields.add(timeX!);
      case 'timeDateTime':
        if (timeX is FhirDateTime) {
          fields.add(timeX!);
        }
      case 'timePeriod':
        if (timeX is Period) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'procedure':
        {
          if (child is CodeableConcept) {
            return copyWith(procedure: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'additive':
        {
          if (child is Reference) {
            return copyWith(additive: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeX':
        {
          if (child is TimeXBiologicallyDerivedProductProcessing) {
            // child is e.g. SubjectX union
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timePeriod':
        {
          if (child is Period) {
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'description':
        return ['FhirString'];
      case 'procedure':
        return ['CodeableConcept'];
      case 'additive':
        return ['Reference'];
      case 'time':
      case 'timeX':
        return ['FhirDateTime', 'Period'];
      case 'timeDateTime':
        return ['FhirDateTime'];
      case 'timePeriod':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductProcessing]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  BiologicallyDerivedProductProcessing createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'procedure':
        {
          return copyWith(procedure: CodeableConcept.empty());
        }
      case 'additive':
        {
          return copyWith(additive: Reference.empty());
        }
      case 'time':
      case 'timeX':
      case 'timeDateTime':
        {
          return copyWith(timeX: FhirDateTime.empty());
        }
      case 'timePeriod':
        {
          return copyWith(timeX: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  BiologicallyDerivedProductProcessing clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool procedure = false,
    bool additive = false,
    bool time = false,
  }) {
    return BiologicallyDerivedProductProcessing(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      procedure: procedure ? null : this.procedure,
      additive: additive ? null : this.additive,
      timeX: time ? null : timeX,
    );
  }

  @override
  BiologicallyDerivedProductProcessing clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductProcessing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    CodeableConcept? procedure,
    Reference? additive,
    TimeXBiologicallyDerivedProductProcessing? timeX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BiologicallyDerivedProductProcessing(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      procedure: procedure?.copyWith(
            objectPath: '$newObjectPath.procedure',
          ) ??
          this.procedure,
      additive: additive?.copyWith(
            objectPath: '$newObjectPath.additive',
          ) ??
          this.additive,
      timeX: timeX?.copyWith(
            objectPath: '$newObjectPath.timeX',
          ) as TimeXBiologicallyDerivedProductProcessing? ??
          this.timeX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductProcessing) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(procedure, o.procedure)) {
      return false;
    }
    if (!equalsDeepWithNull(additive, o.additive)) {
      return false;
    }
    if (!equalsDeepWithNull(timeX, o.timeX)) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductManipulation]
/// Any manipulation of product post-collection that is intended to alter
/// the product. For example a buffy-coat enrichment or CD8 reduction of
/// Peripheral Blood Stem Cells to make it more suitable for infusion.
class BiologicallyDerivedProductManipulation extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductManipulation]

  const BiologicallyDerivedProductManipulation({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BiologicallyDerivedProductManipulation.empty() =>
      const BiologicallyDerivedProductManipulation();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductManipulation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.manipulation';
    return BiologicallyDerivedProductManipulation(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      timeX: JsonParser.parsePolymorphic<
          TimeXBiologicallyDerivedProductManipulation>(
        json,
        {
          'timeDateTime': FhirDateTime.fromJson,
          'timePeriod': Period.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductManipulation]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductManipulation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductManipulation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductManipulation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductManipulation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductManipulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductManipulation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductManipulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductManipulation';

  /// [description]
  /// Description of manipulation.
  final FhirString? description;

  /// [timeX]
  /// Time of manipulation.
  final TimeXBiologicallyDerivedProductManipulation? timeX;

  /// Getter for [timeDateTime] as a FhirDateTime
  FhirDateTime? get timeDateTime => timeX?.isAs<FhirDateTime>();

  /// Getter for [timePeriod] as a Period
  Period? get timePeriod => timeX?.isAs<Period>();
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
    addField('description', description);
    if (timeX != null) {
      final fhirType = timeX!.fhirType;
      addField('time${fhirType.capitalize()}', timeX);
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'time':
        fields.add(timeX!);
      case 'timeX':
        fields.add(timeX!);
      case 'timeDateTime':
        if (timeX is FhirDateTime) {
          fields.add(timeX!);
        }
      case 'timePeriod':
        if (timeX is Period) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeX':
        {
          if (child is TimeXBiologicallyDerivedProductManipulation) {
            // child is e.g. SubjectX union
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timeFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timePeriod':
        {
          if (child is Period) {
            return copyWith(timeX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'description':
        return ['FhirString'];
      case 'time':
      case 'timeX':
        return ['FhirDateTime', 'Period'];
      case 'timeDateTime':
        return ['FhirDateTime'];
      case 'timePeriod':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductManipulation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  BiologicallyDerivedProductManipulation createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'time':
      case 'timeX':
      case 'timeDateTime':
        {
          return copyWith(timeX: FhirDateTime.empty());
        }
      case 'timePeriod':
        {
          return copyWith(timeX: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  BiologicallyDerivedProductManipulation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool time = false,
  }) {
    return BiologicallyDerivedProductManipulation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      timeX: time ? null : timeX,
    );
  }

  @override
  BiologicallyDerivedProductManipulation clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductManipulation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    TimeXBiologicallyDerivedProductManipulation? timeX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BiologicallyDerivedProductManipulation(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      timeX: timeX?.copyWith(
            objectPath: '$newObjectPath.timeX',
          ) as TimeXBiologicallyDerivedProductManipulation? ??
          this.timeX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductManipulation) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(timeX, o.timeX)) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductStorage]
/// Product storage.
class BiologicallyDerivedProductStorage extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductStorage]

  const BiologicallyDerivedProductStorage({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BiologicallyDerivedProductStorage.empty() =>
      const BiologicallyDerivedProductStorage();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductStorage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.storage';
    return BiologicallyDerivedProductStorage(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      temperature: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'temperature',
        FhirDecimal.fromJson,
        '$objectPath.temperature',
      ),
      scale: JsonParser.parsePrimitive<BiologicallyDerivedProductStorageScale>(
        json,
        'scale',
        BiologicallyDerivedProductStorageScale.fromJson,
        '$objectPath.scale',
      ),
      duration: JsonParser.parseObject<Period>(
        json,
        'duration',
        Period.fromJson,
        '$objectPath.duration',
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductStorage]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductStorage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductStorage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductStorage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductStorage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductStorage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductStorage';

  /// [description]
  /// Description of storage.
  final FhirString? description;

  /// [temperature]
  /// Storage temperature.
  final FhirDecimal? temperature;

  /// [scale]
  /// Temperature scale used.
  final BiologicallyDerivedProductStorageScale? scale;

  /// [duration]
  /// Storage timeperiod.
  final Period? duration;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'temperature':
        {
          if (child is FhirDecimal) {
            return copyWith(temperature: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'scale':
        {
          if (child is BiologicallyDerivedProductStorageScale) {
            return copyWith(scale: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'duration':
        {
          if (child is Period) {
            return copyWith(duration: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'description':
        return ['FhirString'];
      case 'temperature':
        return ['FhirDecimal'];
      case 'scale':
        return ['FhirCode'];
      case 'duration':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductStorage]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  BiologicallyDerivedProductStorage createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'temperature':
        {
          return copyWith(temperature: FhirDecimal.empty());
        }
      case 'scale':
        {
          return copyWith(
            scale: BiologicallyDerivedProductStorageScale.empty(),
          );
        }
      case 'duration':
        {
          return copyWith(duration: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  BiologicallyDerivedProductStorage clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool temperature = false,
    bool scale = false,
    bool duration = false,
  }) {
    return BiologicallyDerivedProductStorage(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      temperature: temperature ? null : this.temperature,
      scale: scale ? null : this.scale,
      duration: duration ? null : this.duration,
    );
  }

  @override
  BiologicallyDerivedProductStorage clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductStorage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirDecimal? temperature,
    BiologicallyDerivedProductStorageScale? scale,
    Period? duration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BiologicallyDerivedProductStorage(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      temperature: temperature?.copyWith(
            objectPath: '$newObjectPath.temperature',
          ) ??
          this.temperature,
      scale: scale?.copyWith(
            objectPath: '$newObjectPath.scale',
          ) ??
          this.scale,
      duration: duration?.copyWith(
            objectPath: '$newObjectPath.duration',
          ) ??
          this.duration,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductStorage) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(temperature, o.temperature)) {
      return false;
    }
    if (!equalsDeepWithNull(scale, o.scale)) {
      return false;
    }
    if (!equalsDeepWithNull(duration, o.duration)) {
      return false;
    }
    return true;
  }
}
