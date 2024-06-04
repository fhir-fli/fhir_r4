// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'biologically_derived_product.freezed.dart';
part 'biologically_derived_product.g.dart';

/// [BiologicallyDerivedProduct] A material substance originating from a
@freezed
class BiologicallyDerivedProduct
    with _$BiologicallyDerivedProduct
    implements DomainResource {
  /// [BiologicallyDerivedProduct] A material substance originating from a
  const BiologicallyDerivedProduct._();

  /// [BiologicallyDerivedProduct] A material substance originating from a
  ///  biological entity intended to be transplanted or infused
  /// into another (possibly the same) biological entity.
  ///
  /// [resourceType] This is a BiologicallyDerivedProduct resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] This records identifiers associated with this biologically
  /// derived product instance that are defined by business processes and/or
  /// used to refer to it when a direct URL reference to the resource itself is
  /// not appropriate (e.g. in CDA documents, or in written / printed
  ///  documentation).
  ///
  /// [productCategory] Broad category of this product.
  ///
  /// [productCategoryElement] Extensions for productCategory
  ///
  /// [productCode] A code that identifies the kind of this biologically
  ///  derived product (SNOMED Ctcode).
  ///
  /// [status] Whether the product is currently available.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [request] Procedure request to obtain this biologically derived product.
  ///
  /// [quantity] Number of discrete units within this product.
  ///
  /// [quantityElement] Extensions for quantity
  ///
  /// [parent] Parent product (if any).
  ///
  /// [collection] How this product was collected.
  ///
  /// [processing] Any processing of the product during collection that does
  /// not change the fundamental nature of the product. For example adding
  ///  anti-coagulants during the collection of Peripheral Blood Stem Cells.
  ///
  /// [manipulation] Any manipulation of product post-collection that is
  /// intended to alter the product.  For example a buffy-coat enrichment or CD8
  /// reduction of Peripheral Blood Stem Cells to make it more suitable for
  ///  infusion.
  ///
  /// [storage] Product storage.
  const factory BiologicallyDerivedProduct({
    @Default(R4ResourceType.BiologicallyDerivedProduct)
    @JsonKey(unknownEnumValue: R4ResourceType.BiologicallyDerivedProduct)

    /// [resourceType] This is a BiologicallyDerivedProduct resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] This records identifiers associated with this biologically
    /// derived product instance that are defined by business processes and/or
    /// used to refer to it when a direct URL reference to the resource itself is
    /// not appropriate (e.g. in CDA documents, or in written / printed
    ///  documentation).
    List<Identifier>? identifier,

    /// [productCategory] Broad category of this product.
    BiologicallyDerivedProductCategory? productCategory,

    /// [productCategoryElement] Extensions for productCategory
    @JsonKey(name: '_productCategory') PrimitiveElement? productCategoryElement,

    /// [productCode] A code that identifies the kind of this biologically
    ///  derived product (SNOMED Ctcode).
    CodeableConcept? productCode,

    /// [status] Whether the product is currently available.
    BiologicallyDerivedProductStatus? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [request] Procedure request to obtain this biologically derived product.
    List<Reference>? request,

    /// [quantity] Number of discrete units within this product.
    FhirInteger? quantity,

    /// [quantityElement] Extensions for quantity
    @JsonKey(name: '_quantity') PrimitiveElement? quantityElement,

    /// [parent] Parent product (if any).
    List<Reference>? parent,

    /// [collection] How this product was collected.
    BiologicallyDerivedProductCollection? collection,

    /// [processing] Any processing of the product during collection that does
    /// not change the fundamental nature of the product. For example adding
    ///  anti-coagulants during the collection of Peripheral Blood Stem Cells.
    List<BiologicallyDerivedProductProcessing>? processing,

    /// [manipulation] Any manipulation of product post-collection that is
    /// intended to alter the product.  For example a buffy-coat enrichment or CD8
    /// reduction of Peripheral Blood Stem Cells to make it more suitable for
    ///  infusion.
    BiologicallyDerivedProductManipulation? manipulation,

    /// [storage] Product storage.
    List<BiologicallyDerivedProductStorage>? storage,
  }) = _BiologicallyDerivedProduct;

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BiologicallyDerivedProduct.fromYaml(dynamic yaml) => yaml is String
      ? BiologicallyDerivedProduct.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProduct.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProduct cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductFromJson(json);

  /// Acts like a constructor, returns a [BiologicallyDerivedProduct], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory BiologicallyDerivedProduct.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BiologicallyDerivedProductFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => 'BiologicallyDerivedProduct/$id';

  @override
  String get resourceTypeString => 'BiologicallyDerivedProduct';

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

@freezed
class BiologicallyDerivedProductCollection
    with _$BiologicallyDerivedProductCollection
    implements BackboneElement {
  const BiologicallyDerivedProductCollection._();

  /// [BiologicallyDerivedProductCollection] A material substance originating
  ///  from a biological entity intended to be transplanted or infused
  /// into another (possibly the same) biological entity.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [collector] Healthcare professional who is performing the collection.
  ///
  /// [source] The patient or entity, such as a hospital or vendor in the case
  ///  of a processed/manipulated/manufactured product, providing the product.
  ///
  /// [collectedDateTime] Time of product collection.
  ///
  /// [collectedDateTimeElement] Extensions for collectedDateTime
  ///
  /// [collectedPeriod] Time of product collection.
  const factory BiologicallyDerivedProductCollection({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [collector] Healthcare professional who is performing the collection.
    Reference? collector,

    /// [source] The patient or entity, such as a hospital or vendor in the case
    ///  of a processed/manipulated/manufactured product, providing the product.
    Reference? source,

    /// [collectedDateTime] Time of product collection.
    FhirDateTime? collectedDateTime,

    /// [collectedDateTimeElement] Extensions for collectedDateTime
    @JsonKey(name: '_collectedDateTime')
    PrimitiveElement? collectedDateTimeElement,

    /// [collectedPeriod] Time of product collection.
    Period? collectedPeriod,
  }) = _BiologicallyDerivedProductCollection;

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BiologicallyDerivedProductCollection.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductCollection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductCollection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProductCollection cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory BiologicallyDerivedProductCollection.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductCollectionFromJson(json);
}

@freezed
class BiologicallyDerivedProductProcessing
    with _$BiologicallyDerivedProductProcessing
    implements BackboneElement {
  const BiologicallyDerivedProductProcessing._();

  /// [BiologicallyDerivedProductProcessing] A material substance originating
  ///  from a biological entity intended to be transplanted or infused
  /// into another (possibly the same) biological entity.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [description] Description of of processing.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [procedure] Procesing code.
  ///
  /// [additive] Substance added during processing.
  ///
  /// [timeDateTime] Time of processing.
  ///
  /// [timeDateTimeElement] Extensions for timeDateTime
  ///
  /// [timePeriod] Time of processing.
  const factory BiologicallyDerivedProductProcessing({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [description] Description of of processing.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [procedure] Procesing code.
    CodeableConcept? procedure,

    /// [additive] Substance added during processing.
    Reference? additive,

    /// [timeDateTime] Time of processing.
    FhirDateTime? timeDateTime,

    /// [timeDateTimeElement] Extensions for timeDateTime
    @JsonKey(name: '_timeDateTime') PrimitiveElement? timeDateTimeElement,

    /// [timePeriod] Time of processing.
    Period? timePeriod,
  }) = _BiologicallyDerivedProductProcessing;

  @override
  String get fhirType => 'BiologicallyDerivedProductProcessing';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BiologicallyDerivedProductProcessing.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductProcessing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductProcessing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProductProcessing cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory BiologicallyDerivedProductProcessing.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductProcessingFromJson(json);
}

@freezed
class BiologicallyDerivedProductManipulation
    with _$BiologicallyDerivedProductManipulation
    implements BackboneElement {
  const BiologicallyDerivedProductManipulation._();

  /// [BiologicallyDerivedProductManipulation] A material substance
  /// originating from a biological entity intended to be transplanted or
  ///  infused
  /// into another (possibly the same) biological entity.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [description] Description of manipulation.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [timeDateTime] Time of manipulation.
  ///
  /// [timeDateTimeElement] Extensions for timeDateTime
  ///
  /// [timePeriod] Time of manipulation.
  const factory BiologicallyDerivedProductManipulation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [description] Description of manipulation.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [timeDateTime] Time of manipulation.
    FhirDateTime? timeDateTime,

    /// [timeDateTimeElement] Extensions for timeDateTime
    @JsonKey(name: '_timeDateTime') PrimitiveElement? timeDateTimeElement,

    /// [timePeriod] Time of manipulation.
    Period? timePeriod,
  }) = _BiologicallyDerivedProductManipulation;

  @override
  String get fhirType => 'BiologicallyDerivedProductManipulation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BiologicallyDerivedProductManipulation.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductManipulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductManipulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProductManipulation cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory BiologicallyDerivedProductManipulation.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductManipulationFromJson(json);
}

@freezed
class BiologicallyDerivedProductStorage
    with _$BiologicallyDerivedProductStorage
    implements BackboneElement {
  const BiologicallyDerivedProductStorage._();

  /// [BiologicallyDerivedProductStorage] A material substance originating
  ///  from a biological entity intended to be transplanted or infused
  /// into another (possibly the same) biological entity.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [description] Description of storage.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [temperature] Storage temperature.
  ///
  /// [temperatureElement] Extensions for temperature
  ///
  /// [scale] Temperature scale used.
  ///
  /// [scaleElement] Extensions for scale
  ///
  /// [duration] Storage timeperiod.
  const factory BiologicallyDerivedProductStorage({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [description] Description of storage.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [temperature] Storage temperature.
    FhirDecimal? temperature,

    /// [temperatureElement] Extensions for temperature
    @JsonKey(name: '_temperature') PrimitiveElement? temperatureElement,

    /// [scale] Temperature scale used.
    BiologicallyDerivedProductStorageScale? scale,

    /// [scaleElement] Extensions for scale
    @JsonKey(name: '_scale') PrimitiveElement? scaleElement,

    /// [duration] Storage timeperiod.
    Period? duration,
  }) = _BiologicallyDerivedProductStorage;

  @override
  String get fhirType => 'BiologicallyDerivedProductStorage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory BiologicallyDerivedProductStorage.fromYaml(dynamic yaml) => yaml
          is String
      ? BiologicallyDerivedProductStorage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductStorage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProductStorage cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory BiologicallyDerivedProductStorage.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductStorageFromJson(json);
}
