import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CatalogEntry]
/// Catalog entries are wrappers that contextualize items included in a
/// catalog.
class CatalogEntry extends DomainResource {
  /// Primary constructor for [CatalogEntry]

  CatalogEntry({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    required this.orderable,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.validityPeriod,
    this.validTo,
    this.lastUpdated,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.CatalogEntry,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntry.fromJson(Map<String, dynamic> json) {
    return CatalogEntry(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      orderable: FhirBoolean.fromJson({
        'value': json['orderable'],
        '_value': json['_orderable'],
      }),
      referencedItem: Reference.fromJson(
        json['referencedItem'] as Map<String, dynamic>,
      ),
      additionalIdentifier: json['additionalIdentifier'] != null
          ? (json['additionalIdentifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: json['status'] != null
          ? PublicationStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(
              json['validityPeriod'] as Map<String, dynamic>,
            )
          : null,
      validTo: json['validTo'] != null
          ? FhirDateTime.fromJson({
              'value': json['validTo'],
              '_value': json['_validTo'],
            })
          : null,
      lastUpdated: json['lastUpdated'] != null
          ? FhirDateTime.fromJson({
              'value': json['lastUpdated'],
              '_value': json['_lastUpdated'],
            })
          : null,
      additionalCharacteristic: json['additionalCharacteristic'] != null
          ? (json['additionalCharacteristic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      additionalClassification: json['additionalClassification'] != null
          ? (json['additionalClassification'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedEntry: json['relatedEntry'] != null
          ? (json['relatedEntry'] as List<dynamic>)
              .map<CatalogEntryRelatedEntry>(
                (v) => CatalogEntryRelatedEntry.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CatalogEntry] from a [String]
  /// or [YamlMap] object
  factory CatalogEntry.fromYaml(dynamic yaml) => yaml is String
      ? CatalogEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CatalogEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CatalogEntry cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CatalogEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CatalogEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CatalogEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CatalogEntry';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Used in supporting different identifiers for the same product, e.g.
  /// manufacturer code and retailer code.
  final List<Identifier>? identifier;

  /// [type]
  /// The type of item - medication, device, service, protocol or other.
  final CodeableConcept? type;

  /// [orderable]
  /// Whether the entry represents an orderable item.
  final FhirBoolean orderable;

  /// [referencedItem]
  /// The item in a catalog or definition.
  final Reference referencedItem;

  /// [additionalIdentifier]
  /// Used in supporting related concepts, e.g. NDC to RxNorm.
  final List<Identifier>? additionalIdentifier;

  /// [classification]
  /// Classes of devices, or ATC for medication.
  final List<CodeableConcept>? classification;

  /// [status]
  /// Used to support catalog exchange even for unsupported products, e.g.
  /// getting list of medications even if not prescribable.
  final PublicationStatus? status;

  /// [validityPeriod]
  /// The time period in which this catalog entry is expected to be active.
  final Period? validityPeriod;

  /// [validTo]
  /// The date until which this catalog entry is expected to be active.
  final FhirDateTime? validTo;

  /// [lastUpdated]
  /// Typically date of issue is different from the beginning of the
  /// validity. This can be used to see when an item was last updated.
  final FhirDateTime? lastUpdated;

  /// [additionalCharacteristic]
  /// Used for examplefor Out of Formulary, or any specifics.
  final List<CodeableConcept>? additionalCharacteristic;

  /// [additionalClassification]
  /// User for example for ATC classification, or.
  final List<CodeableConcept>? additionalClassification;

  /// [relatedEntry]
  /// Used for example, to point to a substance, or to a device used to
  /// administer a medication.
  final List<CatalogEntryRelatedEntry>? relatedEntry;
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
      json['language'] = language!.toJson();
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    final fieldJson9 = orderable.toJson();
    json['orderable'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_orderable'] = fieldJson9['_value'];
    }

    json['referencedItem'] = referencedItem.toJson();

    if (additionalIdentifier != null && additionalIdentifier!.isNotEmpty) {
      json['additionalIdentifier'] =
          additionalIdentifier!.map((e) => e.toJson()).toList();
    }

    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (validityPeriod != null) {
      json['validityPeriod'] = validityPeriod!.toJson();
    }

    if (validTo != null) {
      final fieldJson15 = validTo!.toJson();
      json['validTo'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_validTo'] = fieldJson15['_value'];
      }
    }

    if (lastUpdated != null) {
      final fieldJson16 = lastUpdated!.toJson();
      json['lastUpdated'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_lastUpdated'] = fieldJson16['_value'];
      }
    }

    if (additionalCharacteristic != null &&
        additionalCharacteristic!.isNotEmpty) {
      json['additionalCharacteristic'] =
          additionalCharacteristic!.map((e) => e.toJson()).toList();
    }

    if (additionalClassification != null &&
        additionalClassification!.isNotEmpty) {
      json['additionalClassification'] =
          additionalClassification!.map((e) => e.toJson()).toList();
    }

    if (relatedEntry != null && relatedEntry!.isNotEmpty) {
      json['relatedEntry'] = relatedEntry!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CatalogEntry clone() => throw UnimplementedError();
  @override
  CatalogEntry copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    FhirBoolean? orderable,
    Reference? referencedItem,
    List<Identifier>? additionalIdentifier,
    List<CodeableConcept>? classification,
    PublicationStatus? status,
    Period? validityPeriod,
    FhirDateTime? validTo,
    FhirDateTime? lastUpdated,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CatalogEntryRelatedEntry]
/// Used for example, to point to a substance, or to a device used to
/// administer a medication.
class CatalogEntryRelatedEntry extends BackboneElement {
  /// Primary constructor for [CatalogEntryRelatedEntry]

  CatalogEntryRelatedEntry({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.relationtype,
    required this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CatalogEntryRelatedEntry.fromJson(Map<String, dynamic> json) {
    return CatalogEntryRelatedEntry(
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
      relationtype: CatalogEntryRelationType.fromJson({
        'value': json['relationtype'],
        '_value': json['_relationtype'],
      }),
      item: Reference.fromJson(
        json['item'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [CatalogEntryRelatedEntry] from a [String]
  /// or [YamlMap] object
  factory CatalogEntryRelatedEntry.fromYaml(dynamic yaml) => yaml is String
      ? CatalogEntryRelatedEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CatalogEntryRelatedEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CatalogEntryRelatedEntry cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CatalogEntryRelatedEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CatalogEntryRelatedEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CatalogEntryRelatedEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CatalogEntryRelatedEntry';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [relationtype]
  /// The type of relation to the related item: child, parent,
  /// packageContent, containerPackage, usedIn, uses, requires, etc.
  final CatalogEntryRelationType relationtype;

  /// [item]
  /// The reference to the related item.
  final Reference item;
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

    json['relationtype'] = relationtype.toJson();

    json['item'] = item.toJson();

    return json;
  }

  @override
  CatalogEntryRelatedEntry clone() => throw UnimplementedError();
  @override
  CatalogEntryRelatedEntry copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CatalogEntryRelationType? relationtype,
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
      item: item ?? this.item,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
