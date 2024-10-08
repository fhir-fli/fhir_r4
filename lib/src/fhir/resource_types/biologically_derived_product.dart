import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'biologically_derived_product.g.dart';

/// [BiologicallyDerivedProduct] /// A material substance originating from a biological entity intended to be
/// transplanted or infused
/// into another (possibly the same) biological entity.
@JsonSerializable()
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
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.BiologicallyDerivedProduct,
            fhirType: 'BiologicallyDerivedProduct');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this biologically derived product
  /// instance that are defined by business processes and/or used to refer to it
  /// when a direct URL reference to the resource itself is not appropriate (e.g.
  /// in CDA documents, or in written / printed documentation).
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [productCategory] /// Broad category of this product.
  @JsonKey(name: 'productCategory')
  final BiologicallyDerivedProductCategory? productCategory;
  @JsonKey(name: '_productCategory')
  final Element? productCategoryElement;

  /// [productCode] /// A code that identifies the kind of this biologically derived product
  /// (SNOMED Ctcode).
  @JsonKey(name: 'productCode')
  final CodeableConcept? productCode;

  /// [status] /// Whether the product is currently available.
  @JsonKey(name: 'status')
  final BiologicallyDerivedProductStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [request] /// Procedure request to obtain this biologically derived product.
  @JsonKey(name: 'request')
  final List<Reference>? request;

  /// [quantity] /// Number of discrete units within this product.
  @JsonKey(name: 'quantity')
  final FhirInteger? quantity;
  @JsonKey(name: '_quantity')
  final Element? quantityElement;

  /// [parent] /// Parent product (if any).
  @JsonKey(name: 'parent')
  final List<Reference>? parent;

  /// [collection] /// How this product was collected.
  @JsonKey(name: 'collection')
  final BiologicallyDerivedProductCollection? collection;

  /// [processing] /// Any processing of the product during collection that does not change the
  /// fundamental nature of the product. For example adding anti-coagulants
  /// during the collection of Peripheral Blood Stem Cells.
  @JsonKey(name: 'processing')
  final List<BiologicallyDerivedProductProcessing>? processing;

  /// [manipulation] /// Any manipulation of product post-collection that is intended to alter the
  /// product. For example a buffy-coat enrichment or CD8 reduction of Peripheral
  /// Blood Stem Cells to make it more suitable for infusion.
  @JsonKey(name: 'manipulation')
  final BiologicallyDerivedProductManipulation? manipulation;

  /// [storage] /// Product storage.
  @JsonKey(name: 'storage')
  final List<BiologicallyDerivedProductStorage>? storage;
  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProductToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'BiologicallyDerivedProductCollection');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [collector] /// Healthcare professional who is performing the collection.
  @JsonKey(name: 'collector')
  final Reference? collector;

  /// [source] /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  @JsonKey(name: 'source')
  final Reference? source;

  /// [collectedDateTime] /// Time of product collection.
  @JsonKey(name: 'collectedDateTime')
  final FhirDateTime? collectedDateTime;
  @JsonKey(name: '_collectedDateTime')
  final Element? collectedDateTimeElement;

  /// [collectedPeriod] /// Time of product collection.
  @JsonKey(name: 'collectedPeriod')
  final Period? collectedPeriod;
  factory BiologicallyDerivedProductCollection.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductCollectionFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProductCollectionToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'BiologicallyDerivedProductProcessing');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of of processing.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [procedure] /// Procesing code.
  @JsonKey(name: 'procedure')
  final CodeableConcept? procedure;

  /// [additive] /// Substance added during processing.
  @JsonKey(name: 'additive')
  final Reference? additive;

  /// [timeDateTime] /// Time of processing.
  @JsonKey(name: 'timeDateTime')
  final FhirDateTime? timeDateTime;
  @JsonKey(name: '_timeDateTime')
  final Element? timeDateTimeElement;

  /// [timePeriod] /// Time of processing.
  @JsonKey(name: 'timePeriod')
  final Period? timePeriod;
  factory BiologicallyDerivedProductProcessing.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductProcessingFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProductProcessingToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'BiologicallyDerivedProductManipulation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of manipulation.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [timeDateTime] /// Time of manipulation.
  @JsonKey(name: 'timeDateTime')
  final FhirDateTime? timeDateTime;
  @JsonKey(name: '_timeDateTime')
  final Element? timeDateTimeElement;

  /// [timePeriod] /// Time of manipulation.
  @JsonKey(name: 'timePeriod')
  final Period? timePeriod;
  factory BiologicallyDerivedProductManipulation.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductManipulationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProductManipulationToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'BiologicallyDerivedProductStorage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of storage.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [temperature] /// Storage temperature.
  @JsonKey(name: 'temperature')
  final FhirDecimal? temperature;
  @JsonKey(name: '_temperature')
  final Element? temperatureElement;

  /// [scale] /// Temperature scale used.
  @JsonKey(name: 'scale')
  final BiologicallyDerivedProductStorageScale? scale;
  @JsonKey(name: '_scale')
  final Element? scaleElement;

  /// [duration] /// Storage timeperiod.
  @JsonKey(name: 'duration')
  final Period? duration;
  factory BiologicallyDerivedProductStorage.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductStorageFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProductStorageToJson(this);

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
