// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'catalog_entry.freezed.dart';
part 'catalog_entry.g.dart';

/// [CatalogEntry] Catalog entries are wrappers that contextualize items
@freezed
class CatalogEntry extends DomainResource with _$CatalogEntry {
  /// [CatalogEntry] Catalog entries are wrappers that contextualize items
  CatalogEntry._();

  /// [CatalogEntry] Catalog entries are wrappers that contextualize items
  ///  included in a catalog.
  ///
  /// [resourceType] This is a CatalogEntry resource
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
  /// [identifier] Used in supporting different identifiers for the same
  ///  product, e.g. manufacturer code and retailer code.
  ///
  /// [type] The type of item - medication, device, service, protocol or other.
  ///
  /// [orderable] Whether the entry represents an orderable item.
  ///
  /// [orderableElement] Extensions for orderable
  ///
  /// [referencedItem] The item in a catalog or definition.
  ///
  /// [additionalIdentifier] Used in supporting related concepts, e.g. NDC to
  ///  RxNorm.
  ///
  /// [classification] Classes of devices, or ATC for medication.
  ///
  /// [status] Used to support catalog exchange even for unsupported products,
  ///  e.g. getting list of medications even if not prescribable.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [validityPeriod] The time period in which this catalog entry is expected
  ///  to be active.
  ///
  /// [validTo] The date until which this catalog entry is expected to be
  ///  active.
  ///
  /// [validToElement] Extensions for validTo
  ///
  /// [lastUpdated] Typically date of issue is different from the beginning of
  ///  the validity. This can be used to see when an item was last updated.
  ///
  /// [lastUpdatedElement] Extensions for lastUpdated
  ///
  /// [additionalCharacteristic] Used for examplefor Out of Formulary, or any
  ///  specifics.
  ///
  /// [additionalClassification] User for example for ATC classification, or.
  ///
  /// [relatedEntry] Used for example, to point to a substance, or to a device
  ///  used to administer a medication.
  factory CatalogEntry({
    @Default(R4ResourceType.CatalogEntry)
    @JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)

    /// [resourceType] This is a CatalogEntry resource
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

    /// [identifier] Used in supporting different identifiers for the same
    ///  product, e.g. manufacturer code and retailer code.
    List<Identifier>? identifier,

    /// [type] The type of item - medication, device, service, protocol or other.
    CodeableConcept? type,

    /// [orderable] Whether the entry represents an orderable item.
    FhirBoolean? orderable,

    /// [orderableElement] Extensions for orderable
    @JsonKey(name: '_orderable') PrimitiveElement? orderableElement,

    /// [referencedItem] The item in a catalog or definition.
    required Reference referencedItem,

    /// [additionalIdentifier] Used in supporting related concepts, e.g. NDC to
    ///  RxNorm.
    List<Identifier>? additionalIdentifier,

    /// [classification] Classes of devices, or ATC for medication.
    List<CodeableConcept>? classification,

    /// [status] Used to support catalog exchange even for unsupported products,
    ///  e.g. getting list of medications even if not prescribable.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [validityPeriod] The time period in which this catalog entry is expected
    ///  to be active.
    Period? validityPeriod,

    /// [validTo] The date until which this catalog entry is expected to be
    ///  active.
    FhirDateTime? validTo,

    /// [validToElement] Extensions for validTo
    @JsonKey(name: '_validTo') PrimitiveElement? validToElement,

    /// [lastUpdated] Typically date of issue is different from the beginning of
    ///  the validity. This can be used to see when an item was last updated.
    FhirDateTime? lastUpdated,

    /// [lastUpdatedElement] Extensions for lastUpdated
    @JsonKey(name: '_lastUpdated') PrimitiveElement? lastUpdatedElement,

    /// [additionalCharacteristic] Used for examplefor Out of Formulary, or any
    ///  specifics.
    List<CodeableConcept>? additionalCharacteristic,

    /// [additionalClassification] User for example for ATC classification, or.
    List<CodeableConcept>? additionalClassification,

    /// [relatedEntry] Used for example, to point to a substance, or to a device
    ///  used to administer a medication.
    List<CatalogEntryRelatedEntry>? relatedEntry,
  }) = _CatalogEntry;

  @override
  String get fhirType => 'CatalogEntry';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CatalogEntry.fromYaml(dynamic yaml) => yaml is String
      ? CatalogEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CatalogEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CatalogEntry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CatalogEntry.fromJson(Map<String, dynamic> json) =>
      _$CatalogEntryFromJson(json);

  /// Acts like a constructor, returns a [CatalogEntry], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CatalogEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CatalogEntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [CatalogEntryRelatedEntry] Catalog entries are wrappers that
@freezed

/// [CatalogEntryRelatedEntry] Catalog entries are wrappers that
@freezed
class CatalogEntryRelatedEntry extends BackboneElement
    with _$CatalogEntryRelatedEntry {
  /// [CatalogEntryRelatedEntry] Catalog entries are wrappers that
  CatalogEntryRelatedEntry._();

  /// [CatalogEntryRelatedEntry] Catalog entries are wrappers that
  ///  contextualize items included in a catalog.
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
  /// [relationtype] The type of relation to the related item: child, parent,
  ///  packageContent, containerPackage, usedIn, uses, requires, etc.
  ///
  /// [relationtypeElement] Extensions for relationtype
  ///
  /// [item] The reference to the related item.
  factory CatalogEntryRelatedEntry({
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

    /// [relationtype] The type of relation to the related item: child, parent,
    ///  packageContent, containerPackage, usedIn, uses, requires, etc.
    FhirCode? relationtype,

    /// [relationtypeElement] Extensions for relationtype
    @JsonKey(name: '_relationtype') PrimitiveElement? relationtypeElement,

    /// [item] The reference to the related item.
    required Reference item,
  }) = _CatalogEntryRelatedEntry;

  @override
  String get fhirType => 'CatalogEntryRelatedEntry';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CatalogEntryRelatedEntry.fromYaml(dynamic yaml) => yaml is String
      ? CatalogEntryRelatedEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CatalogEntryRelatedEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CatalogEntryRelatedEntry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CatalogEntryRelatedEntry.fromJson(Map<String, dynamic> json) =>
      _$CatalogEntryRelatedEntryFromJson(json);

  /// Acts like a constructor, returns a [CatalogEntryRelatedEntry], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CatalogEntryRelatedEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CatalogEntryRelatedEntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
