// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [BiologicallyDerivedProduct]
/// A material substance originating from a biological entity intended to
/// be transplanted or infused
/// into another (possibly the same) biological entity.
@Entity()
class BiologicallyDerivedProduct extends DomainResource {
  /// Primary constructor for
  /// [BiologicallyDerivedProduct]

  BiologicallyDerivedProduct({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  factory BiologicallyDerivedProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProduct(
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
      productCategory:
          (json['productCategory'] != null || json['_productCategory'] != null)
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
      status: (json['status'] != null || json['_status'] != null)
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
      quantity: (json['quantity'] != null || json['_quantity'] != null)
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

  /// Deserialize [BiologicallyDerivedProduct]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProduct.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? BiologicallyDerivedProduct.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? BiologicallyDerivedProduct.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'BiologicallyDerivedProduct '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [BiologicallyDerivedProduct]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProduct.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  final FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  final CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  final List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  final List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  final List<FhirExtension>? modifierExtension;

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
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
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

    if (productCategory != null) {
      final fieldJson8 = productCategory!.toJson();
      json['productCategory'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_productCategory'] = fieldJson8['_value'];
      }
    }

    if (productCode != null) {
      json['productCode'] = productCode!.toJson();
    }

    if (status != null) {
      final fieldJson10 = status!.toJson();
      json['status'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_status'] = fieldJson10['_value'];
      }
    }

    if (request != null && request!.isNotEmpty) {
      json['request'] = request!.map((e) => e.toJson()).toList();
    }

    if (quantity != null) {
      final fieldJson12 = quantity!.toJson();
      json['quantity'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_quantity'] = fieldJson12['_value'];
      }
    }

    if (parent != null && parent!.isNotEmpty) {
      json['parent'] = parent!.map((e) => e.toJson()).toList();
    }

    if (collection != null) {
      json['collection'] = collection!.toJson();
    }

    if (processing != null && processing!.isNotEmpty) {
      json['processing'] = processing!.map((e) => e.toJson()).toList();
    }

    if (manipulation != null) {
      json['manipulation'] = manipulation!.toJson();
    }

    if (storage != null && storage!.isNotEmpty) {
      json['storage'] = storage!.map((e) => e.toJson()).toList();
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
@Entity()
class BiologicallyDerivedProductCollection extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductCollection]

  BiologicallyDerivedProductCollection({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductCollection(
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
      collectedDateTime: (json['collectedDateTime'] != null ||
              json['_collectedDateTime'] != null)
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

  /// Deserialize [BiologicallyDerivedProductCollection]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductCollection.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? BiologicallyDerivedProductCollection.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? BiologicallyDerivedProductCollection.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'BiologicallyDerivedProductCollection '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [BiologicallyDerivedProductCollection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductCollection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  final FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  final List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  final List<FhirExtension>? modifierExtension;

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
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (collector != null) {
      json['collector'] = collector!.toJson();
    }

    if (source != null) {
      json['source'] = source!.toJson();
    }

    if (collectedDateTime != null) {
      final fieldJson4 = collectedDateTime!.toJson();
      json['collectedDateTime'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_collectedDateTime'] = fieldJson4['_value'];
      }
    }

    if (collectedPeriod != null) {
      json['collectedPeriod'] = collectedPeriod!.toJson();
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
@Entity()
class BiologicallyDerivedProductProcessing extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductProcessing]

  BiologicallyDerivedProductProcessing({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductProcessing(
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
      description: (json['description'] != null || json['_description'] != null)
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
      timeDateTime:
          (json['timeDateTime'] != null || json['_timeDateTime'] != null)
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

  /// Deserialize [BiologicallyDerivedProductProcessing]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductProcessing.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? BiologicallyDerivedProductProcessing.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? BiologicallyDerivedProductProcessing.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'BiologicallyDerivedProductProcessing '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [BiologicallyDerivedProductProcessing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductProcessing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'BiologicallyDerivedProductProcessing';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  final FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  final List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  final List<FhirExtension>? modifierExtension;

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
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson2 = description!.toJson();
      json['description'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_description'] = fieldJson2['_value'];
      }
    }

    if (procedure != null) {
      json['procedure'] = procedure!.toJson();
    }

    if (additive != null) {
      json['additive'] = additive!.toJson();
    }

    if (timeDateTime != null) {
      final fieldJson5 = timeDateTime!.toJson();
      json['timeDateTime'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_timeDateTime'] = fieldJson5['_value'];
      }
    }

    if (timePeriod != null) {
      json['timePeriod'] = timePeriod!.toJson();
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
@Entity()
class BiologicallyDerivedProductManipulation extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductManipulation]

  BiologicallyDerivedProductManipulation({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductManipulation(
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
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      timeDateTime:
          (json['timeDateTime'] != null || json['_timeDateTime'] != null)
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

  /// Deserialize [BiologicallyDerivedProductManipulation]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductManipulation.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? BiologicallyDerivedProductManipulation.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? BiologicallyDerivedProductManipulation.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'BiologicallyDerivedProductManipulation '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [BiologicallyDerivedProductManipulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductManipulation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductManipulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'BiologicallyDerivedProductManipulation';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  final FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  final List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  final List<FhirExtension>? modifierExtension;

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
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson2 = description!.toJson();
      json['description'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_description'] = fieldJson2['_value'];
      }
    }

    if (timeDateTime != null) {
      final fieldJson3 = timeDateTime!.toJson();
      json['timeDateTime'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_timeDateTime'] = fieldJson3['_value'];
      }
    }

    if (timePeriod != null) {
      json['timePeriod'] = timePeriod!.toJson();
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
@Entity()
class BiologicallyDerivedProductStorage extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductStorage]

  BiologicallyDerivedProductStorage({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductStorage(
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
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      temperature: (json['temperature'] != null || json['_temperature'] != null)
          ? FhirDecimal.fromJson({
              'value': json['temperature'],
              '_value': json['_temperature'],
            })
          : null,
      scale: (json['scale'] != null || json['_scale'] != null)
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

  /// Deserialize [BiologicallyDerivedProductStorage]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductStorage.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? BiologicallyDerivedProductStorage.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? BiologicallyDerivedProductStorage.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'BiologicallyDerivedProductStorage '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [BiologicallyDerivedProductStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductStorage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'BiologicallyDerivedProductStorage';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  final FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  final List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  final List<FhirExtension>? modifierExtension;

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
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson2 = description!.toJson();
      json['description'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_description'] = fieldJson2['_value'];
      }
    }

    if (temperature != null) {
      final fieldJson3 = temperature!.toJson();
      json['temperature'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_temperature'] = fieldJson3['_value'];
      }
    }

    if (scale != null) {
      final fieldJson4 = scale!.toJson();
      json['scale'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_scale'] = fieldJson4['_value'];
      }
    }

    if (duration != null) {
      json['duration'] = duration!.toJson();
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
