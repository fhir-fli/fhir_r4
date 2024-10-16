import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PackagedProductDefinition]
/// A medically related item or items, in a container or package.
class PackagedProductDefinition extends DomainResource {
  /// Primary constructor for [PackagedProductDefinition]

  PackagedProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.containedItemQuantity,
    this.description,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.characteristic,
    this.copackagedIndicator,
    this.manufacturer,
    this.package,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.PackagedProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinition.fromJson(Map<String, dynamic> json) {
    return PackagedProductDefinition(
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
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      packageFor: json['packageFor'] != null
          ? (json['packageFor'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      statusDate: json['statusDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['statusDate'],
              '_value': json['_statusDate'],
            })
          : null,
      containedItemQuantity: json['containedItemQuantity'] != null
          ? (json['containedItemQuantity'] as List<dynamic>)
              .map<Quantity>(
                (v) => Quantity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      legalStatusOfSupply: json['legalStatusOfSupply'] != null
          ? (json['legalStatusOfSupply'] as List<dynamic>)
              .map<PackagedProductDefinitionLegalStatusOfSupply>(
                (v) => PackagedProductDefinitionLegalStatusOfSupply.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      marketingStatus: json['marketingStatus'] != null
          ? (json['marketingStatus'] as List<dynamic>)
              .map<MarketingStatus>(
                (v) => MarketingStatus.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      copackagedIndicator: json['copackagedIndicator'] != null
          ? FhirBoolean.fromJson({
              'value': json['copackagedIndicator'],
              '_value': json['_copackagedIndicator'],
            })
          : null,
      manufacturer: json['manufacturer'] != null
          ? (json['manufacturer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      package: json['package'] != null
          ? PackagedProductDefinitionPackage.fromJson(
              json['package'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PackagedProductDefinition] from a [String]
  /// or [YamlMap] object
  factory PackagedProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PackagedProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PackagedProductDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PackagedProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier for this package as whole. Unique instance
  /// identifiers assigned to a package by manufacturers, regulators, drug
  /// catalogue custodians or other organizations.
  final List<Identifier>? identifier;

  /// [name]
  /// A name for this package. Typically what it would be listed as in a drug
  /// formulary or catalogue, inventory etc.
  final FhirString? name;

  /// [type]
  /// A high level category e.g. medicinal product, raw material,
  /// shipping/transport container, etc.
  final CodeableConcept? type;

  /// [packageFor]
  /// The product that this is a pack for.
  final List<Reference>? packageFor;

  /// [status]
  /// The status within the lifecycle of this item. A high level status, this
  /// is not intended to duplicate details carried elsewhere such as legal
  /// status, or authorization or marketing status.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;

  /// [containedItemQuantity]
  /// A total of the complete count of contained items of a particular
  /// type/form, independent of sub-packaging or organization. This can be
  /// considered as the pack size. This attribute differs from
  /// containedItem.amount in that it can give a single aggregated count of
  /// all tablet types in a pack, even when these are different manufactured
  /// items. For example a pill pack of 21 tablets plus 7 sugar tablets, can
  /// be denoted here as '28 tablets'. This attribute is repeatable so that
  /// the different item types in one pack type can be counted (e.g. a count
  /// of vials and count of syringes). Each repeat must have different units,
  /// so that it is clear what the different sets of counted items are, and
  /// it is not intended to allow different counts of similar items (e.g. not
  /// '2 tubes and 3 tubes'). Repeats are not to be used to represent
  /// different pack sizes (e.g. 20 pack vs. 50 pack) - which would be
  /// different instances of this resource.
  final List<Quantity>? containedItemQuantity;

  /// [description]
  /// Textual description. Note that this is not the name of the package or
  /// product.
  final FhirMarkdown? description;

  /// [legalStatusOfSupply]
  /// The legal status of supply of the packaged item as classified by the
  /// regulator.
  final List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply;

  /// [marketingStatus]
  /// Allows specifying that an item is on the market for sale, or that it is
  /// not available, and the dates and locations associated.
  final List<MarketingStatus>? marketingStatus;

  /// [characteristic]
  /// Allows the key features to be recorded, such as "hospital pack", "nurse
  /// prescribable", "calendar pack".
  final List<CodeableConcept>? characteristic;

  /// [copackagedIndicator]
  /// States whether a drug product is supplied with another item such as a
  /// diluent or adjuvant.
  final FhirBoolean? copackagedIndicator;

  /// [manufacturer]
  /// Manufacturer of this package type. When there are multiple it means
  /// these are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [package]
  /// A packaging item, as a container for medically related items, possibly
  /// with other packaging items within, or a packaging component, such as
  /// bottle cap (which is not a device or a medication manufactured item).
  final PackagedProductDefinitionPackage? package;
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

    if (name != null) {
      final fieldJson9 = name!.toJson();
      json['name'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_name'] = fieldJson9['_value'];
      }
    }

    if (type != null) {
      final fieldJson10 = type!.toJson();
      json['type'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_type'] = fieldJson10['_value'];
      }
    }

    if (packageFor != null && packageFor!.isNotEmpty) {
      final fieldJson11 = packageFor!.map((e) => e.toJson()).toList();
      json['packageFor'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_packageFor'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final fieldJson12 = status!.toJson();
      json['status'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_status'] = fieldJson12['_value'];
      }
    }

    if (statusDate != null) {
      final fieldJson13 = statusDate!.toJson();
      json['statusDate'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_statusDate'] = fieldJson13['_value'];
      }
    }

    if (containedItemQuantity != null && containedItemQuantity!.isNotEmpty) {
      final fieldJson14 =
          containedItemQuantity!.map((e) => e.toJson()).toList();
      json['containedItemQuantity'] =
          fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_containedItemQuantity'] =
            fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson15 = description!.toJson();
      json['description'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_description'] = fieldJson15['_value'];
      }
    }

    if (legalStatusOfSupply != null && legalStatusOfSupply!.isNotEmpty) {
      final fieldJson16 = legalStatusOfSupply!.map((e) => e.toJson()).toList();
      json['legalStatusOfSupply'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_legalStatusOfSupply'] =
            fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (marketingStatus != null && marketingStatus!.isNotEmpty) {
      final fieldJson17 = marketingStatus!.map((e) => e.toJson()).toList();
      json['marketingStatus'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_marketingStatus'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      final fieldJson18 = characteristic!.map((e) => e.toJson()).toList();
      json['characteristic'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_characteristic'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (copackagedIndicator != null) {
      final fieldJson19 = copackagedIndicator!.toJson();
      json['copackagedIndicator'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_copackagedIndicator'] = fieldJson19['_value'];
      }
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      final fieldJson20 = manufacturer!.map((e) => e.toJson()).toList();
      json['manufacturer'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_manufacturer'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (package != null) {
      final fieldJson21 = package!.toJson();
      json['package'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_package'] = fieldJson21['_value'];
      }
    }

    return json;
  }

  @override
  PackagedProductDefinition clone() => throw UnimplementedError();
  @override
  PackagedProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? name,
    CodeableConcept? type,
    List<Reference>? packageFor,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    List<Quantity>? containedItemQuantity,
    FhirMarkdown? description,
    List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,
    List<MarketingStatus>? marketingStatus,
    List<CodeableConcept>? characteristic,
    FhirBoolean? copackagedIndicator,
    List<Reference>? manufacturer,
    PackagedProductDefinitionPackage? package,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PackagedProductDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      type: type ?? this.type,
      packageFor: packageFor ?? this.packageFor,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      containedItemQuantity:
          containedItemQuantity ?? this.containedItemQuantity,
      description: description ?? this.description,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      characteristic: characteristic ?? this.characteristic,
      copackagedIndicator: copackagedIndicator ?? this.copackagedIndicator,
      manufacturer: manufacturer ?? this.manufacturer,
      package: package ?? this.package,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PackagedProductDefinitionLegalStatusOfSupply]
/// The legal status of supply of the packaged item as classified by the
/// regulator.
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  /// Primary constructor for [PackagedProductDefinitionLegalStatusOfSupply]

  PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionLegalStatusOfSupply(
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
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? CodeableConcept.fromJson(
              json['jurisdiction'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PackagedProductDefinitionLegalStatusOfSupply] from a [String]
  /// or [YamlMap] object
  factory PackagedProductDefinitionLegalStatusOfSupply.fromYaml(dynamic yaml) =>
      yaml is String
          ? PackagedProductDefinitionLegalStatusOfSupply.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? PackagedProductDefinitionLegalStatusOfSupply.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'PackagedProductDefinitionLegalStatusOfSupply cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PackagedProductDefinitionLegalStatusOfSupply]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionLegalStatusOfSupply';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// The actual status of supply. Conveys in what situation this package
  /// type may be supplied for use.
  final CodeableConcept? code;

  /// [jurisdiction]
  /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  final CodeableConcept? jurisdiction;
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

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (jurisdiction != null) {
      final fieldJson4 = jurisdiction!.toJson();
      json['jurisdiction'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_jurisdiction'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  PackagedProductDefinitionLegalStatusOfSupply clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionLegalStatusOfSupply copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? jurisdiction,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PackagedProductDefinitionLegalStatusOfSupply(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PackagedProductDefinitionPackage]
/// A packaging item, as a container for medically related items, possibly
/// with other packaging items within, or a packaging component, such as
/// bottle cap (which is not a device or a medication manufactured item).
class PackagedProductDefinitionPackage extends BackboneElement {
  /// Primary constructor for [PackagedProductDefinitionPackage]

  PackagedProductDefinitionPackage({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
    this.material,
    this.alternateMaterial,
    this.shelfLifeStorage,
    this.manufacturer,
    this.property,
    this.containedItem,
    this.package,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPackage.fromJson(Map<String, dynamic> json) {
    return PackagedProductDefinitionPackage(
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
      quantity: json['quantity'] != null
          ? FhirInteger.fromJson({
              'value': json['quantity'],
              '_value': json['_quantity'],
            })
          : null,
      material: json['material'] != null
          ? (json['material'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      alternateMaterial: json['alternateMaterial'] != null
          ? (json['alternateMaterial'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      shelfLifeStorage: json['shelfLifeStorage'] != null
          ? (json['shelfLifeStorage'] as List<dynamic>)
              .map<PackagedProductDefinitionShelfLifeStorage>(
                (v) => PackagedProductDefinitionShelfLifeStorage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      manufacturer: json['manufacturer'] != null
          ? (json['manufacturer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<PackagedProductDefinitionProperty>(
                (v) => PackagedProductDefinitionProperty.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      containedItem: json['containedItem'] != null
          ? (json['containedItem'] as List<dynamic>)
              .map<PackagedProductDefinitionContainedItem>(
                (v) => PackagedProductDefinitionContainedItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      package: json['package'] != null
          ? (json['package'] as List<dynamic>)
              .map<PackagedProductDefinitionPackage>(
                (v) => PackagedProductDefinitionPackage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [PackagedProductDefinitionPackage] from a [String]
  /// or [YamlMap] object
  factory PackagedProductDefinitionPackage.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionPackage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PackagedProductDefinitionPackage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PackagedProductDefinitionPackage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PackagedProductDefinitionPackage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionPackage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionPackage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionPackage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// An identifier that is specific to this particular part of the
  /// packaging. Including possibly Data Carrier Identifier (a GS1 barcode).
  final List<Identifier>? identifier;

  /// [type]
  /// The physical type of the container of the items.
  final CodeableConcept? type;

  /// [quantity]
  /// The quantity of this level of packaging in the package that contains
  /// it. If specified, the outermost level is always 1.
  final FhirInteger? quantity;

  /// [material]
  /// Material type of the package item.
  final List<CodeableConcept>? material;

  /// [alternateMaterial]
  /// A possible alternate material for this part of the packaging, that is
  /// allowed to be used instead of the usual material (e.g. different types
  /// of plastic for a blister sleeve).
  final List<CodeableConcept>? alternateMaterial;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage;

  /// [manufacturer]
  /// Manufacturer of this package Item. When there are multiple it means
  /// these are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [property]
  /// General characteristics of this item.
  final List<PackagedProductDefinitionProperty>? property;

  /// [containedItem]
  /// The item(s) within the packaging.
  final List<PackagedProductDefinitionContainedItem>? containedItem;

  /// [package]
  /// Allows containers (and parts of containers) parwithin containers, still
  /// a single packaged product. See also
  /// PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).
  final List<PackagedProductDefinitionPackage>? package;
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

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson3 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson5 = quantity!.toJson();
      json['quantity'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_quantity'] = fieldJson5['_value'];
      }
    }

    if (material != null && material!.isNotEmpty) {
      final fieldJson6 = material!.map((e) => e.toJson()).toList();
      json['material'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_material'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (alternateMaterial != null && alternateMaterial!.isNotEmpty) {
      final fieldJson7 = alternateMaterial!.map((e) => e.toJson()).toList();
      json['alternateMaterial'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_alternateMaterial'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (shelfLifeStorage != null && shelfLifeStorage!.isNotEmpty) {
      final fieldJson8 = shelfLifeStorage!.map((e) => e.toJson()).toList();
      json['shelfLifeStorage'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_shelfLifeStorage'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      final fieldJson9 = manufacturer!.map((e) => e.toJson()).toList();
      json['manufacturer'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_manufacturer'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (property != null && property!.isNotEmpty) {
      final fieldJson10 = property!.map((e) => e.toJson()).toList();
      json['property'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_property'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (containedItem != null && containedItem!.isNotEmpty) {
      final fieldJson11 = containedItem!.map((e) => e.toJson()).toList();
      json['containedItem'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_containedItem'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (package != null && package!.isNotEmpty) {
      final fieldJson12 = package!.map((e) => e.toJson()).toList();
      json['package'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_package'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  PackagedProductDefinitionPackage clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionPackage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    FhirInteger? quantity,
    List<CodeableConcept>? material,
    List<CodeableConcept>? alternateMaterial,
    List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
    List<Reference>? manufacturer,
    List<PackagedProductDefinitionProperty>? property,
    List<PackagedProductDefinitionContainedItem>? containedItem,
    List<PackagedProductDefinitionPackage>? package,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PackagedProductDefinitionPackage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      material: material ?? this.material,
      alternateMaterial: alternateMaterial ?? this.alternateMaterial,
      shelfLifeStorage: shelfLifeStorage ?? this.shelfLifeStorage,
      manufacturer: manufacturer ?? this.manufacturer,
      property: property ?? this.property,
      containedItem: containedItem ?? this.containedItem,
      package: package ?? this.package,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PackagedProductDefinitionShelfLifeStorage]
/// Shelf Life and storage information.
class PackagedProductDefinitionShelfLifeStorage extends BackboneElement {
  /// Primary constructor for [PackagedProductDefinitionShelfLifeStorage]

  PackagedProductDefinitionShelfLifeStorage({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.periodDuration,
    this.periodString,
    this.specialPrecautionsForStorage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionShelfLifeStorage.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionShelfLifeStorage(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      periodDuration: json['periodDuration'] != null
          ? FhirDuration.fromJson(
              json['periodDuration'] as Map<String, dynamic>,
            )
          : null,
      periodString: json['periodString'] != null
          ? FhirString.fromJson({
              'value': json['periodString'],
              '_value': json['_periodString'],
            })
          : null,
      specialPrecautionsForStorage: json['specialPrecautionsForStorage'] != null
          ? (json['specialPrecautionsForStorage'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [PackagedProductDefinitionShelfLifeStorage] from a [String]
  /// or [YamlMap] object
  factory PackagedProductDefinitionShelfLifeStorage.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionShelfLifeStorage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PackagedProductDefinitionShelfLifeStorage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PackagedProductDefinitionShelfLifeStorage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PackagedProductDefinitionShelfLifeStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionShelfLifeStorage.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionShelfLifeStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionShelfLifeStorage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// This describes the shelf life, taking into account various scenarios
  /// such as shelf life of the packaged Medicinal Product itself, shelf life
  /// after transformation where necessary and shelf life after the first
  /// opening of a bottle, etc. The shelf life type shall be specified using
  /// an appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  final CodeableConcept? type;

  /// [periodDuration]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  final FhirDuration? periodDuration;

  /// [periodString]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  final FhirString? periodString;

  /// [specialPrecautionsForStorage]
  /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary. The controlled term and the
  /// controlled term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
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

    if (type != null) {
      final fieldJson3 = type!.toJson();
      json['type'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_type'] = fieldJson3['_value'];
      }
    }

    if (periodDuration != null) {
      final fieldJson4 = periodDuration!.toJson();
      json['periodDuration'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_periodDuration'] = fieldJson4['_value'];
      }
    }

    if (periodString != null) {
      final fieldJson5 = periodString!.toJson();
      json['periodString'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_periodString'] = fieldJson5['_value'];
      }
    }

    if (specialPrecautionsForStorage != null &&
        specialPrecautionsForStorage!.isNotEmpty) {
      final fieldJson6 =
          specialPrecautionsForStorage!.map((e) => e.toJson()).toList();
      json['specialPrecautionsForStorage'] =
          fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_specialPrecautionsForStorage'] =
            fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  PackagedProductDefinitionShelfLifeStorage clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionShelfLifeStorage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDuration? periodDuration,
    FhirString? periodString,
    List<CodeableConcept>? specialPrecautionsForStorage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PackagedProductDefinitionShelfLifeStorage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      periodDuration: periodDuration ?? this.periodDuration,
      periodString: periodString ?? this.periodString,
      specialPrecautionsForStorage:
          specialPrecautionsForStorage ?? this.specialPrecautionsForStorage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PackagedProductDefinitionProperty]
/// General characteristics of this item.
class PackagedProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for [PackagedProductDefinitionProperty]

  PackagedProductDefinitionProperty({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueBoolean,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionProperty.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionProperty(
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
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PackagedProductDefinitionProperty] from a [String]
  /// or [YamlMap] object
  factory PackagedProductDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PackagedProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PackagedProductDefinitionProperty cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PackagedProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionProperty';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept]
  /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate]
  /// A value for the characteristic.
  final FhirDate? valueDate;

  /// [valueBoolean]
  /// A value for the characteristic.
  final FhirBoolean? valueBoolean;

  /// [valueAttachment]
  /// A value for the characteristic.
  final Attachment? valueAttachment;
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

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (valueCodeableConcept != null) {
      final fieldJson4 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson5 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueQuantity'] = fieldJson5['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson6 = valueDate!.toJson();
      json['valueDate'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueDate'] = fieldJson6['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson7 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueBoolean'] = fieldJson7['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson8 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueAttachment'] = fieldJson8['_value'];
      }
    }

    return json;
  }

  @override
  PackagedProductDefinitionProperty clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    FhirBoolean? valueBoolean,
    Attachment? valueAttachment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PackagedProductDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueDate: valueDate ?? this.valueDate,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [PackagedProductDefinitionContainedItem]
/// The item(s) within the packaging.
class PackagedProductDefinitionContainedItem extends BackboneElement {
  /// Primary constructor for [PackagedProductDefinitionContainedItem]

  PackagedProductDefinitionContainedItem({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionContainedItem.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionContainedItem(
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
      item: CodeableReference.fromJson(
        json['item'] as Map<String, dynamic>,
      ),
      amount: json['amount'] != null
          ? Quantity.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PackagedProductDefinitionContainedItem] from a [String]
  /// or [YamlMap] object
  factory PackagedProductDefinitionContainedItem.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionContainedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PackagedProductDefinitionContainedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PackagedProductDefinitionContainedItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PackagedProductDefinitionContainedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionContainedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionContainedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionContainedItem';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [item]
  /// The actual item(s) of medication, as manufactured, or a device
  /// (typically, but not necessarily, a co-packaged one), or other medically
  /// related item (such as food, biologicals, raw materials, medical fluids,
  /// gases etc.), as contained in the package. This also allows another
  /// whole packaged product to be included, which is solely for the case
  /// where a package of other entire packages is wanted - such as a
  /// wholesale or distribution pack (for layers within one package, use
  /// PackagedProductDefinition.package.package).
  final CodeableReference item;

  /// [amount]
  /// The number of this type of item within this packaging.
  final Quantity? amount;
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

    final fieldJson3 = item.toJson();
    json['item'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_item'] = fieldJson3['_value'];
    }

    if (amount != null) {
      final fieldJson4 = amount!.toJson();
      json['amount'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_amount'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  PackagedProductDefinitionContainedItem clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionContainedItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    Quantity? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PackagedProductDefinitionContainedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
