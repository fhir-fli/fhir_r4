import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'catalog_entry.g.dart';

/// [CatalogEntry] /// Catalog entries are wrappers that contextualize items included in a
/// catalog.
@JsonSerializable()
class CatalogEntry extends DomainResource {
  CatalogEntry({
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
    this.type,
    required this.orderable,
    this.orderableElement,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.statusElement,
    this.validityPeriod,
    this.validTo,
    this.validToElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.CatalogEntry);
  @override
  String get fhirType => 'CatalogEntry';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Used in supporting different identifiers for the same product, e.g.
  /// manufacturer code and retailer code.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// The type of item - medication, device, service, protocol or other.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [orderable] /// Whether the entry represents an orderable item.
  @JsonKey(name: 'orderable')
  final FhirBoolean orderable;
  @JsonKey(name: '_orderable')
  final Element? orderableElement;

  /// [referencedItem] /// The item in a catalog or definition.
  @JsonKey(name: 'referencedItem')
  final Reference referencedItem;

  /// [additionalIdentifier] /// Used in supporting related concepts, e.g. NDC to RxNorm.
  @JsonKey(name: 'additionalIdentifier')
  final List<Identifier>? additionalIdentifier;

  /// [classification] /// Classes of devices, or ATC for medication.
  @JsonKey(name: 'classification')
  final List<CodeableConcept>? classification;

  /// [status] /// Used to support catalog exchange even for unsupported products, e.g.
  /// getting list of medications even if not prescribable.
  @JsonKey(name: 'status')
  final PublicationStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [validityPeriod] /// The time period in which this catalog entry is expected to be active.
  @JsonKey(name: 'validityPeriod')
  final Period? validityPeriod;

  /// [validTo] /// The date until which this catalog entry is expected to be active.
  @JsonKey(name: 'validTo')
  final FhirDateTime? validTo;
  @JsonKey(name: '_validTo')
  final Element? validToElement;

  /// [lastUpdated] /// Typically date of issue is different from the beginning of the validity.
  /// This can be used to see when an item was last updated.
  @JsonKey(name: 'lastUpdated')
  final FhirDateTime? lastUpdated;
  @JsonKey(name: '_lastUpdated')
  final Element? lastUpdatedElement;

  /// [additionalCharacteristic] /// Used for examplefor Out of Formulary, or any specifics.
  @JsonKey(name: 'additionalCharacteristic')
  final List<CodeableConcept>? additionalCharacteristic;

  /// [additionalClassification] /// User for example for ATC classification, or.
  @JsonKey(name: 'additionalClassification')
  final List<CodeableConcept>? additionalClassification;

  /// [relatedEntry] /// Used for example, to point to a substance, or to a device used to
  /// administer a medication.
  @JsonKey(name: 'relatedEntry')
  final List<CatalogEntryRelatedEntry>? relatedEntry;
  factory CatalogEntry.fromJson(Map<String, dynamic> json) =>
      _$CatalogEntryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CatalogEntryToJson(this);

  @override
  CatalogEntry clone() => throw UnimplementedError();
  @override
  CatalogEntry copyWith({
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
    CodeableConcept? type,
    FhirBoolean? orderable,
    Element? orderableElement,
    Reference? referencedItem,
    List<Identifier>? additionalIdentifier,
    List<CodeableConcept>? classification,
    PublicationStatus? status,
    Element? statusElement,
    Period? validityPeriod,
    FhirDateTime? validTo,
    Element? validToElement,
    FhirDateTime? lastUpdated,
    Element? lastUpdatedElement,
    List<CodeableConcept>? additionalCharacteristic,
    List<CodeableConcept>? additionalClassification,
    List<CatalogEntryRelatedEntry>? relatedEntry,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CatalogEntry(
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
      type: type ?? this.type,
      orderable: orderable ?? this.orderable,
      orderableElement: orderableElement ?? this.orderableElement,
      referencedItem: referencedItem ?? this.referencedItem,
      additionalIdentifier: additionalIdentifier ?? this.additionalIdentifier,
      classification: classification ?? this.classification,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      validTo: validTo ?? this.validTo,
      validToElement: validToElement ?? this.validToElement,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      lastUpdatedElement: lastUpdatedElement ?? this.lastUpdatedElement,
      additionalCharacteristic:
          additionalCharacteristic ?? this.additionalCharacteristic,
      additionalClassification:
          additionalClassification ?? this.additionalClassification,
      relatedEntry: relatedEntry ?? this.relatedEntry,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CatalogEntry.fromYaml(dynamic yaml) => yaml is String
      ? CatalogEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CatalogEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CatalogEntry cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CatalogEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CatalogEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CatalogEntryRelatedEntry] /// Used for example, to point to a substance, or to a device used to
/// administer a medication.
@JsonSerializable()
class CatalogEntryRelatedEntry extends BackboneElement {
  CatalogEntryRelatedEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationtype,
    this.relationtypeElement,
    required this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CatalogEntryRelatedEntry';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationtype] /// The type of relation to the related item: child, parent, packageContent,
  /// containerPackage, usedIn, uses, requires, etc.
  @JsonKey(name: 'relationtype')
  final CatalogEntryRelationType relationtype;
  @JsonKey(name: '_relationtype')
  final Element? relationtypeElement;

  /// [item] /// The reference to the related item.
  @JsonKey(name: 'item')
  final Reference item;
  factory CatalogEntryRelatedEntry.fromJson(Map<String, dynamic> json) =>
      _$CatalogEntryRelatedEntryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CatalogEntryRelatedEntryToJson(this);

  @override
  CatalogEntryRelatedEntry clone() => throw UnimplementedError();
  @override
  CatalogEntryRelatedEntry copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CatalogEntryRelationType? relationtype,
    Element? relationtypeElement,
    Reference? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CatalogEntryRelatedEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationtype: relationtype ?? this.relationtype,
      relationtypeElement: relationtypeElement ?? this.relationtypeElement,
      item: item ?? this.item,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CatalogEntryRelatedEntry.fromYaml(dynamic yaml) => yaml is String
      ? CatalogEntryRelatedEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CatalogEntryRelatedEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CatalogEntryRelatedEntry cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CatalogEntryRelatedEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CatalogEntryRelatedEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
