import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [BiologicallyDerivedProduct] /// A material substance originating from a biological entity intended to be
/// transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct extends DomainResource {
  BiologicallyDerivedProduct({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.productCategory,
    this.productCategoryElement,
    this.productCode,
    this.status,
    this.statusElement,
    this.request,
    this.quantity,
    this.quantityElement,
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
  }) : super(resourceType: R4ResourceType.BiologicallyDerivedProduct);

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  @Id()
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this biologically derived product
  /// instance that are defined by business processes and/or used to refer to it
  /// when a direct URL reference to the resource itself is not appropriate (e.g.
  /// in CDA documents, or in written / printed documentation).
  final List<Identifier>? identifier;

  /// [productCategory] /// Broad category of this product.
  final BiologicallyDerivedProductCategory? productCategory;
  final Element? productCategoryElement;

  /// [productCode] /// A code that identifies the kind of this biologically derived product
  /// (SNOMED Ctcode).
  final CodeableConcept? productCode;

  /// [status] /// Whether the product is currently available.
  final BiologicallyDerivedProductStatus? status;
  final Element? statusElement;

  /// [request] /// Procedure request to obtain this biologically derived product.
  final List<Reference>? request;

  /// [quantity] /// Number of discrete units within this product.
  final FhirInteger? quantity;
  final Element? quantityElement;

  /// [parent] /// Parent product (if any).
  final List<Reference>? parent;

  /// [collection] /// How this product was collected.
  final BiologicallyDerivedProductCollection? collection;

  /// [processing] /// Any processing of the product during collection that does not change the
  /// fundamental nature of the product. For example adding anti-coagulants
  /// during the collection of Peripheral Blood Stem Cells.
  final List<BiologicallyDerivedProductProcessing>? processing;

  /// [manipulation] /// Any manipulation of product post-collection that is intended to alter the
  /// product. For example a buffy-coat enrichment or CD8 reduction of Peripheral
  /// Blood Stem Cells to make it more suitable for infusion.
  final BiologicallyDerivedProductManipulation? manipulation;

  /// [storage] /// Product storage.
  final List<BiologicallyDerivedProductStorage>? storage;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (productCategory != null) {
      json['productCategory'] = productCategory!.toJson();
    }
    if (productCode != null) {
      json['productCode'] = productCode!.toJson();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (request != null && request!.isNotEmpty) {
      json['request'] =
          request!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (quantity?.value != null) {
      json['quantity'] = quantity!.value;
    }
    if (quantityElement != null) {
      json['_quantity'] = quantityElement!.toJson();
    }
    if (parent != null && parent!.isNotEmpty) {
      json['parent'] =
          parent!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (collection != null) {
      json['collection'] = collection!.toJson();
    }
    if (processing != null && processing!.isNotEmpty) {
      json['processing'] = processing!
          .map<dynamic>((BiologicallyDerivedProductProcessing v) => v.toJson())
          .toList();
    }
    if (manipulation != null) {
      json['manipulation'] = manipulation!.toJson();
    }
    if (storage != null && storage!.isNotEmpty) {
      json['storage'] = storage!
          .map<dynamic>((BiologicallyDerivedProductStorage v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) {
    return BiologicallyDerivedProduct(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productCategory: json['productCategory'] != null
          ? BiologicallyDerivedProductCategory.fromJson(
              json['productCategory'] as Map<String, dynamic>)
          : null,
      productCode: json['productCode'] != null
          ? CodeableConcept.fromJson(
              json['productCode'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? BiologicallyDerivedProductStatus.fromJson(
              json['status'] as Map<String, dynamic>)
          : null,
      request: json['request'] != null
          ? (json['request'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null ? FhirInteger(json['quantity']) : null,
      quantityElement: json['_quantity'] != null
          ? Element.fromJson(json['_quantity'] as Map<String, dynamic>)
          : null,
      parent: json['parent'] != null
          ? (json['parent'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      collection: json['collection'] != null
          ? BiologicallyDerivedProductCollection.fromJson(
              json['collection'] as Map<String, dynamic>)
          : null,
      processing: json['processing'] != null
          ? (json['processing'] as List<dynamic>)
              .map<BiologicallyDerivedProductProcessing>((dynamic v) =>
                  BiologicallyDerivedProductProcessing.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      manipulation: json['manipulation'] != null
          ? BiologicallyDerivedProductManipulation.fromJson(
              json['manipulation'] as Map<String, dynamic>)
          : null,
      storage: json['storage'] != null
          ? (json['storage'] as List<dynamic>)
              .map<BiologicallyDerivedProductStorage>((dynamic v) =>
                  BiologicallyDerivedProductStorage.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  BiologicallyDerivedProduct clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProduct copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    BiologicallyDerivedProductCategory? productCategory,
    Element? productCategoryElement,
    CodeableConcept? productCode,
    BiologicallyDerivedProductStatus? status,
    Element? statusElement,
    List<Reference>? request,
    FhirInteger? quantity,
    Element? quantityElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      productCategory: productCategory ?? this.productCategory,
      productCategoryElement:
          productCategoryElement ?? this.productCategoryElement,
      productCode: productCode ?? this.productCode,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      request: request ?? this.request,
      quantity: quantity ?? this.quantity,
      quantityElement: quantityElement ?? this.quantityElement,
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

  factory BiologicallyDerivedProduct.fromYaml(dynamic yaml) => yaml is String
      ? BiologicallyDerivedProduct.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BiologicallyDerivedProduct.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BiologicallyDerivedProduct cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProduct.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BiologicallyDerivedProductCollection] /// How this product was collected.
class BiologicallyDerivedProductCollection extends BackboneElement {
  BiologicallyDerivedProductCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.collectedDateTimeElement,
    this.collectedPeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  @Id()
  int dbId = 0;

  /// [collector] /// Healthcare professional who is performing the collection.
  final Reference? collector;

  /// [source] /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  final Reference? source;

  /// [collectedDateTime] /// Time of product collection.
  final FhirDateTime? collectedDateTime;
  final Element? collectedDateTimeElement;

  /// [collectedPeriod] /// Time of product collection.
  final Period? collectedPeriod;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (collector != null) {
      json['collector'] = collector!.toJson();
    }
    if (source != null) {
      json['source'] = source!.toJson();
    }
    if (collectedDateTime?.value != null) {
      json['collectedDateTime'] = collectedDateTime!.value;
    }
    if (collectedDateTimeElement != null) {
      json['_collectedDateTime'] = collectedDateTimeElement!.toJson();
    }
    if (collectedPeriod != null) {
      json['collectedPeriod'] = collectedPeriod!.toJson();
    }
    return json;
  }

  factory BiologicallyDerivedProductCollection.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductCollection(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      collector: json['collector'] != null
          ? Reference.fromJson(json['collector'] as Map<String, dynamic>)
          : null,
      source: json['source'] != null
          ? Reference.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      collectedDateTime: json['collectedDateTime'] != null
          ? FhirDateTime(json['collectedDateTime'])
          : null,
      collectedDateTimeElement: json['_collectedDateTime'] != null
          ? Element.fromJson(json['_collectedDateTime'] as Map<String, dynamic>)
          : null,
      collectedPeriod: json['collectedPeriod'] != null
          ? Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>)
          : null,
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
    FhirDateTime? collectedDateTime,
    Element? collectedDateTimeElement,
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
      collectedDateTimeElement:
          collectedDateTimeElement ?? this.collectedDateTimeElement,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BiologicallyDerivedProductCollection.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductCollection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductCollection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BiologicallyDerivedProductCollection cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProductCollection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BiologicallyDerivedProductProcessing] /// Any processing of the product during collection that does not change the
/// fundamental nature of the product. For example adding anti-coagulants
/// during the collection of Peripheral Blood Stem Cells.
class BiologicallyDerivedProductProcessing extends BackboneElement {
  BiologicallyDerivedProductProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'BiologicallyDerivedProductProcessing';

  @Id()
  int dbId = 0;

  /// [description] /// Description of of processing.
  final FhirString? description;
  final Element? descriptionElement;

  /// [procedure] /// Procesing code.
  final CodeableConcept? procedure;

  /// [additive] /// Substance added during processing.
  final Reference? additive;

  /// [timeDateTime] /// Time of processing.
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;

  /// [timePeriod] /// Time of processing.
  final Period? timePeriod;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (procedure != null) {
      json['procedure'] = procedure!.toJson();
    }
    if (additive != null) {
      json['additive'] = additive!.toJson();
    }
    if (timeDateTime?.value != null) {
      json['timeDateTime'] = timeDateTime!.value;
    }
    if (timeDateTimeElement != null) {
      json['_timeDateTime'] = timeDateTimeElement!.toJson();
    }
    if (timePeriod != null) {
      json['timePeriod'] = timePeriod!.toJson();
    }
    return json;
  }

  factory BiologicallyDerivedProductProcessing.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductProcessing(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      procedure: json['procedure'] != null
          ? CodeableConcept.fromJson(json['procedure'] as Map<String, dynamic>)
          : null,
      additive: json['additive'] != null
          ? Reference.fromJson(json['additive'] as Map<String, dynamic>)
          : null,
      timeDateTime: json['timeDateTime'] != null
          ? FhirDateTime(json['timeDateTime'])
          : null,
      timeDateTimeElement: json['_timeDateTime'] != null
          ? Element.fromJson(json['_timeDateTime'] as Map<String, dynamic>)
          : null,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson(json['timePeriod'] as Map<String, dynamic>)
          : null,
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
    Element? descriptionElement,
    CodeableConcept? procedure,
    Reference? additive,
    FhirDateTime? timeDateTime,
    Element? timeDateTimeElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timeDateTimeElement: timeDateTimeElement ?? this.timeDateTimeElement,
      timePeriod: timePeriod ?? this.timePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BiologicallyDerivedProductProcessing.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductProcessing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductProcessing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BiologicallyDerivedProductProcessing cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProductProcessing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductProcessing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BiologicallyDerivedProductManipulation] /// Any manipulation of product post-collection that is intended to alter the
/// product. For example a buffy-coat enrichment or CD8 reduction of Peripheral
/// Blood Stem Cells to make it more suitable for infusion.
class BiologicallyDerivedProductManipulation extends BackboneElement {
  BiologicallyDerivedProductManipulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'BiologicallyDerivedProductManipulation';

  @Id()
  int dbId = 0;

  /// [description] /// Description of manipulation.
  final FhirString? description;
  final Element? descriptionElement;

  /// [timeDateTime] /// Time of manipulation.
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;

  /// [timePeriod] /// Time of manipulation.
  final Period? timePeriod;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (timeDateTime?.value != null) {
      json['timeDateTime'] = timeDateTime!.value;
    }
    if (timeDateTimeElement != null) {
      json['_timeDateTime'] = timeDateTimeElement!.toJson();
    }
    if (timePeriod != null) {
      json['timePeriod'] = timePeriod!.toJson();
    }
    return json;
  }

  factory BiologicallyDerivedProductManipulation.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductManipulation(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      timeDateTime: json['timeDateTime'] != null
          ? FhirDateTime(json['timeDateTime'])
          : null,
      timeDateTimeElement: json['_timeDateTime'] != null
          ? Element.fromJson(json['_timeDateTime'] as Map<String, dynamic>)
          : null,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson(json['timePeriod'] as Map<String, dynamic>)
          : null,
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
    Element? descriptionElement,
    FhirDateTime? timeDateTime,
    Element? timeDateTimeElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timeDateTimeElement: timeDateTimeElement ?? this.timeDateTimeElement,
      timePeriod: timePeriod ?? this.timePeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BiologicallyDerivedProductManipulation.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductManipulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductManipulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BiologicallyDerivedProductManipulation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProductManipulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductManipulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BiologicallyDerivedProductStorage] /// Product storage.
class BiologicallyDerivedProductStorage extends BackboneElement {
  BiologicallyDerivedProductStorage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.temperature,
    this.temperatureElement,
    this.scale,
    this.scaleElement,
    this.duration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'BiologicallyDerivedProductStorage';

  @Id()
  int dbId = 0;

  /// [description] /// Description of storage.
  final FhirString? description;
  final Element? descriptionElement;

  /// [temperature] /// Storage temperature.
  final FhirDecimal? temperature;
  final Element? temperatureElement;

  /// [scale] /// Temperature scale used.
  final BiologicallyDerivedProductStorageScale? scale;
  final Element? scaleElement;

  /// [duration] /// Storage timeperiod.
  final Period? duration;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (temperature?.value != null) {
      json['temperature'] = temperature!.value;
    }
    if (temperatureElement != null) {
      json['_temperature'] = temperatureElement!.toJson();
    }
    if (scale != null) {
      json['scale'] = scale!.toJson();
    }
    if (duration != null) {
      json['duration'] = duration!.toJson();
    }
    return json;
  }

  factory BiologicallyDerivedProductStorage.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductStorage(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      temperature:
          json['temperature'] != null ? FhirDecimal(json['temperature']) : null,
      temperatureElement: json['_temperature'] != null
          ? Element.fromJson(json['_temperature'] as Map<String, dynamic>)
          : null,
      scale: json['scale'] != null
          ? BiologicallyDerivedProductStorageScale.fromJson(
              json['scale'] as Map<String, dynamic>)
          : null,
      duration: json['duration'] != null
          ? Period.fromJson(json['duration'] as Map<String, dynamic>)
          : null,
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
    Element? descriptionElement,
    FhirDecimal? temperature,
    Element? temperatureElement,
    BiologicallyDerivedProductStorageScale? scale,
    Element? scaleElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      temperature: temperature ?? this.temperature,
      temperatureElement: temperatureElement ?? this.temperatureElement,
      scale: scale ?? this.scale,
      scaleElement: scaleElement ?? this.scaleElement,
      duration: duration ?? this.duration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BiologicallyDerivedProductStorage.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductStorage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductStorage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BiologicallyDerivedProductStorage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProductStorage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BiologicallyDerivedProductStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
