import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [BiologicallyDerivedProduct]
/// A material substance originating from a biological entity intended to
/// be transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct extends DomainResource {
  /// Primary constructor for [BiologicallyDerivedProduct]

  BiologicallyDerivedProduct({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.BiologicallyDerivedProduct,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) {
    return BiologicallyDerivedProduct(
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
      productCategory: json['productCategory'] != null
          ? BiologicallyDerivedProductCategory.fromJson({
              'value': json['productCategory'],
              '_value': json['_productCategory'],
            })
          : null,
      productCode: json['productCode'] != null
          ? CodeableConcept.fromJson(
              json['productCode'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? BiologicallyDerivedProductStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      request: json['request'] != null
          ? (json['request'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? FhirInteger.fromJson({
              'value': json['quantity'],
              '_value': json['_quantity'],
            })
          : null,
      parent: json['parent'] != null
          ? (json['parent'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      collection: json['collection'] != null
          ? BiologicallyDerivedProductCollection.fromJson(
              json['collection'] as Map<String, dynamic>,
            )
          : null,
      processing: json['processing'] != null
          ? (json['processing'] as List<dynamic>)
              .map<BiologicallyDerivedProductProcessing>(
                (v) => BiologicallyDerivedProductProcessing.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      manipulation: json['manipulation'] != null
          ? BiologicallyDerivedProductManipulation.fromJson(
              json['manipulation'] as Map<String, dynamic>,
            )
          : null,
      storage: json['storage'] != null
          ? (json['storage'] as List<dynamic>)
              .map<BiologicallyDerivedProductStorage>(
                (v) => BiologicallyDerivedProductStorage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [BiologicallyDerivedProduct] from a [String]
  /// or [YamlMap] object
  factory BiologicallyDerivedProduct.fromYaml(dynamic yaml) => yaml is String
      ? BiologicallyDerivedProduct.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? BiologicallyDerivedProduct.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'BiologicallyDerivedProduct cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BiologicallyDerivedProduct]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProduct.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (productCategory != null) {
      final fieldJson9 = productCategory!.toJson();
      json['productCategory'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_productCategory'] = fieldJson9['_value'];
      }
    }

    if (productCode != null) {
      final fieldJson10 = productCode!.toJson();
      json['productCode'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_productCode'] = fieldJson10['_value'];
      }
    }

    if (status != null) {
      final fieldJson11 = status!.toJson();
      json['status'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_status'] = fieldJson11['_value'];
      }
    }

    if (request != null && request!.isNotEmpty) {
      final fieldJson12 = request!.map((e) => e.toJson()).toList();
      json['request'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_request'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson13 = quantity!.toJson();
      json['quantity'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_quantity'] = fieldJson13['_value'];
      }
    }

    if (parent != null && parent!.isNotEmpty) {
      final fieldJson14 = parent!.map((e) => e.toJson()).toList();
      json['parent'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_parent'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (collection != null) {
      final fieldJson15 = collection!.toJson();
      json['collection'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_collection'] = fieldJson15['_value'];
      }
    }

    if (processing != null && processing!.isNotEmpty) {
      final fieldJson16 = processing!.map((e) => e.toJson()).toList();
      json['processing'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_processing'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (manipulation != null) {
      final fieldJson17 = manipulation!.toJson();
      json['manipulation'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_manipulation'] = fieldJson17['_value'];
      }
    }

    if (storage != null && storage!.isNotEmpty) {
      final fieldJson18 = storage!.map((e) => e.toJson()).toList();
      json['storage'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_storage'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BiologicallyDerivedProduct(
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [BiologicallyDerivedProductCollection]
/// How this product was collected.
class BiologicallyDerivedProductCollection extends BackboneElement {
  /// Primary constructor for [BiologicallyDerivedProductCollection]

  BiologicallyDerivedProductCollection({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.collectedPeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductCollection.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductCollection(
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
      collector: json['collector'] != null
          ? Reference.fromJson(
              json['collector'] as Map<String, dynamic>,
            )
          : null,
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      collectedDateTime: json['collectedDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['collectedDateTime'],
              '_value': json['_collectedDateTime'],
            })
          : null,
      collectedPeriod: json['collectedPeriod'] != null
          ? Period.fromJson(
              json['collectedPeriod'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [BiologicallyDerivedProductCollection] from a [String]
  /// or [YamlMap] object
  factory BiologicallyDerivedProductCollection.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductCollection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? BiologicallyDerivedProductCollection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'BiologicallyDerivedProductCollection cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BiologicallyDerivedProductCollection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductCollection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [collector]
  /// Healthcare professional who is performing the collection.
  final Reference? collector;

  /// [source]
  /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  final Reference? source;

  /// [collectedDateTime]
  /// Time of product collection.
  final FhirDateTime? collectedDateTime;

  /// [collectedPeriod]
  /// Time of product collection.
  final Period? collectedPeriod;
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

    if (collector != null) {
      final fieldJson3 = collector!.toJson();
      json['collector'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_collector'] = fieldJson3['_value'];
      }
    }

    if (source != null) {
      final fieldJson4 = source!.toJson();
      json['source'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_source'] = fieldJson4['_value'];
      }
    }

    if (collectedDateTime != null) {
      final fieldJson5 = collectedDateTime!.toJson();
      json['collectedDateTime'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_collectedDateTime'] = fieldJson5['_value'];
      }
    }

    if (collectedPeriod != null) {
      final fieldJson6 = collectedPeriod!.toJson();
      json['collectedPeriod'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_collectedPeriod'] = fieldJson6['_value'];
      }
    }

    return json;
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
    FhirDateTime? collectedDateTime,
    Period? collectedPeriod,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BiologicallyDerivedProductCollection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      source: source ?? this.source,
      collectedDateTime: collectedDateTime ?? this.collectedDateTime,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [BiologicallyDerivedProductProcessing]
/// Any processing of the product during collection that does not change
/// the fundamental nature of the product. For example adding
/// anti-coagulants during the collection of Peripheral Blood Stem Cells.
class BiologicallyDerivedProductProcessing extends BackboneElement {
  /// Primary constructor for [BiologicallyDerivedProductProcessing]

  BiologicallyDerivedProductProcessing({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductProcessing.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductProcessing(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      procedure: json['procedure'] != null
          ? CodeableConcept.fromJson(
              json['procedure'] as Map<String, dynamic>,
            )
          : null,
      additive: json['additive'] != null
          ? Reference.fromJson(
              json['additive'] as Map<String, dynamic>,
            )
          : null,
      timeDateTime: json['timeDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['timeDateTime'],
              '_value': json['_timeDateTime'],
            })
          : null,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson(
              json['timePeriod'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [BiologicallyDerivedProductProcessing] from a [String]
  /// or [YamlMap] object
  factory BiologicallyDerivedProductProcessing.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductProcessing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? BiologicallyDerivedProductProcessing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'BiologicallyDerivedProductProcessing cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BiologicallyDerivedProductProcessing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductProcessing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductProcessing';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// Description of of processing.
  final FhirString? description;

  /// [procedure]
  /// Procesing code.
  final CodeableConcept? procedure;

  /// [additive]
  /// Substance added during processing.
  final Reference? additive;

  /// [timeDateTime]
  /// Time of processing.
  final FhirDateTime? timeDateTime;

  /// [timePeriod]
  /// Time of processing.
  final Period? timePeriod;
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

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (procedure != null) {
      final fieldJson4 = procedure!.toJson();
      json['procedure'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_procedure'] = fieldJson4['_value'];
      }
    }

    if (additive != null) {
      final fieldJson5 = additive!.toJson();
      json['additive'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_additive'] = fieldJson5['_value'];
      }
    }

    if (timeDateTime != null) {
      final fieldJson6 = timeDateTime!.toJson();
      json['timeDateTime'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_timeDateTime'] = fieldJson6['_value'];
      }
    }

    if (timePeriod != null) {
      final fieldJson7 = timePeriod!.toJson();
      json['timePeriod'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_timePeriod'] = fieldJson7['_value'];
      }
    }

    return json;
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
    FhirDateTime? timeDateTime,
    Period? timePeriod,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BiologicallyDerivedProductProcessing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timePeriod: timePeriod ?? this.timePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [BiologicallyDerivedProductManipulation]
/// Any manipulation of product post-collection that is intended to alter
/// the product. For example a buffy-coat enrichment or CD8 reduction of
/// Peripheral Blood Stem Cells to make it more suitable for infusion.
class BiologicallyDerivedProductManipulation extends BackboneElement {
  /// Primary constructor for [BiologicallyDerivedProductManipulation]

  BiologicallyDerivedProductManipulation({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.timeDateTime,
    this.timePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductManipulation.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductManipulation(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      timeDateTime: json['timeDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['timeDateTime'],
              '_value': json['_timeDateTime'],
            })
          : null,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson(
              json['timePeriod'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [BiologicallyDerivedProductManipulation] from a [String]
  /// or [YamlMap] object
  factory BiologicallyDerivedProductManipulation.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductManipulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? BiologicallyDerivedProductManipulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'BiologicallyDerivedProductManipulation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BiologicallyDerivedProductManipulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductManipulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductManipulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductManipulation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// Description of manipulation.
  final FhirString? description;

  /// [timeDateTime]
  /// Time of manipulation.
  final FhirDateTime? timeDateTime;

  /// [timePeriod]
  /// Time of manipulation.
  final Period? timePeriod;
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

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (timeDateTime != null) {
      final fieldJson4 = timeDateTime!.toJson();
      json['timeDateTime'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_timeDateTime'] = fieldJson4['_value'];
      }
    }

    if (timePeriod != null) {
      final fieldJson5 = timePeriod!.toJson();
      json['timePeriod'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_timePeriod'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  BiologicallyDerivedProductManipulation clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductManipulation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirDateTime? timeDateTime,
    Period? timePeriod,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BiologicallyDerivedProductManipulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timePeriod: timePeriod ?? this.timePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [BiologicallyDerivedProductStorage]
/// Product storage.
class BiologicallyDerivedProductStorage extends BackboneElement {
  /// Primary constructor for [BiologicallyDerivedProductStorage]

  BiologicallyDerivedProductStorage({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.temperature,
    this.scale,
    this.duration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductStorage.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductStorage(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      temperature: json['temperature'] != null
          ? FhirDecimal.fromJson({
              'value': json['temperature'],
              '_value': json['_temperature'],
            })
          : null,
      scale: json['scale'] != null
          ? BiologicallyDerivedProductStorageScale.fromJson({
              'value': json['scale'],
              '_value': json['_scale'],
            })
          : null,
      duration: json['duration'] != null
          ? Period.fromJson(
              json['duration'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [BiologicallyDerivedProductStorage] from a [String]
  /// or [YamlMap] object
  factory BiologicallyDerivedProductStorage.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductStorage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? BiologicallyDerivedProductStorage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'BiologicallyDerivedProductStorage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BiologicallyDerivedProductStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductStorage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductStorage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (temperature != null) {
      final fieldJson4 = temperature!.toJson();
      json['temperature'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_temperature'] = fieldJson4['_value'];
      }
    }

    if (scale != null) {
      final fieldJson5 = scale!.toJson();
      json['scale'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_scale'] = fieldJson5['_value'];
      }
    }

    if (duration != null) {
      final fieldJson6 = duration!.toJson();
      json['duration'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_duration'] = fieldJson6['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BiologicallyDerivedProductStorage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      temperature: temperature ?? this.temperature,
      scale: scale ?? this.scale,
      duration: duration ?? this.duration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
