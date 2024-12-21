import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PackagedProductDefinition]
/// A medically related item or items, in a container or package.
class PackagedProductDefinition extends DomainResource {
  /// Primary constructor for
  /// [PackagedProductDefinition]

  const PackagedProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          resourceType: R4ResourceType.PackagedProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinition(
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
      name: (json['name'] != null || json['_name'] != null)
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
      statusDate: (json['statusDate'] != null || json['_statusDate'] != null)
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
      description: (json['description'] != null || json['_description'] != null)
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
      copackagedIndicator: (json['copackagedIndicator'] != null ||
              json['_copackagedIndicator'] != null)
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

  /// Deserialize [PackagedProductDefinition]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinition.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
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

    if (name != null) {
      addField('name', name);
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (packageFor != null && packageFor!.isNotEmpty) {
      json['packageFor'] = packageFor!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (statusDate != null) {
      addField('statusDate', statusDate);
    }

    if (containedItemQuantity != null && containedItemQuantity!.isNotEmpty) {
      json['containedItemQuantity'] =
          containedItemQuantity!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (legalStatusOfSupply != null && legalStatusOfSupply!.isNotEmpty) {
      json['legalStatusOfSupply'] =
          legalStatusOfSupply!.map((e) => e.toJson()).toList();
    }

    if (marketingStatus != null && marketingStatus!.isNotEmpty) {
      json['marketingStatus'] =
          marketingStatus!.map((e) => e.toJson()).toList();
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!.map((e) => e.toJson()).toList();
    }

    if (copackagedIndicator != null) {
      addField('copackagedIndicator', copackagedIndicator);
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] = manufacturer!.map((e) => e.toJson()).toList();
    }

    if (package != null) {
      json['package'] = package!.toJson();
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
    );
  }
}

/// [PackagedProductDefinitionLegalStatusOfSupply]
/// The legal status of supply of the packaged item as classified by the
/// regulator.
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupply]

  const PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionLegalStatusOfSupply(
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

  /// Deserialize [PackagedProductDefinitionLegalStatusOfSupply]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionLegalStatusOfSupply.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionLegalStatusOfSupply '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupply]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (jurisdiction != null) {
      json['jurisdiction'] = jurisdiction!.toJson();
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
  }) {
    return PackagedProductDefinitionLegalStatusOfSupply(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      jurisdiction: jurisdiction ?? this.jurisdiction,
    );
  }
}

/// [PackagedProductDefinitionPackage]
/// A packaging item, as a container for medically related items, possibly
/// with other packaging items within, or a packaging component, such as
/// bottle cap (which is not a device or a medication manufactured item).
class PackagedProductDefinitionPackage extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionPackage]

  const PackagedProductDefinitionPackage({
    super.id,
    super.extension_,
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPackage.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionPackage(
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
      quantity: (json['quantity'] != null || json['_quantity'] != null)
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

  /// Deserialize [PackagedProductDefinitionPackage]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionPackage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionPackage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionPackage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionPackage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionPackage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionPackage.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
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

    if (quantity != null) {
      addField('quantity', quantity);
    }

    if (material != null && material!.isNotEmpty) {
      json['material'] = material!.map((e) => e.toJson()).toList();
    }

    if (alternateMaterial != null && alternateMaterial!.isNotEmpty) {
      json['alternateMaterial'] =
          alternateMaterial!.map((e) => e.toJson()).toList();
    }

    if (shelfLifeStorage != null && shelfLifeStorage!.isNotEmpty) {
      json['shelfLifeStorage'] =
          shelfLifeStorage!.map((e) => e.toJson()).toList();
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] = manufacturer!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    if (containedItem != null && containedItem!.isNotEmpty) {
      json['containedItem'] = containedItem!.map((e) => e.toJson()).toList();
    }

    if (package != null && package!.isNotEmpty) {
      json['package'] = package!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [PackagedProductDefinitionShelfLifeStorage]
/// Shelf Life and storage information.
class PackagedProductDefinitionShelfLifeStorage extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionShelfLifeStorage]

  const PackagedProductDefinitionShelfLifeStorage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.periodX,
    this.specialPrecautionsForStorage,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionShelfLifeStorage.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionShelfLifeStorage(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      periodX: json['periodDuration'] != null
          ? FhirDuration.fromJson(
              json['periodDuration'] as Map<String, dynamic>,
            )
          : json['periodString'] != null || json['_periodString'] != null
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

  /// Deserialize [PackagedProductDefinitionShelfLifeStorage]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionShelfLifeStorage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionShelfLifeStorage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionShelfLifeStorage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionShelfLifeStorage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionShelfLifeStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionShelfLifeStorage.fromJsonString(
    String source,
  ) {
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

  /// [type]
  /// This describes the shelf life, taking into account various scenarios
  /// such as shelf life of the packaged Medicinal Product itself, shelf life
  /// after transformation where necessary and shelf life after the first
  /// opening of a bottle, etc. The shelf life type shall be specified using
  /// an appropriate controlled vocabulary The controlled term and the
  /// controlled term identifier shall be specified.
  final CodeableConcept? type;

  /// [periodX]
  /// The shelf life time period can be specified using a numerical value for
  /// the period of time and its unit of time measurement The unit of
  /// measurement shall be specified in accordance with ISO 11240 and the
  /// resulting terminology The symbol and the symbol identifier shall be
  /// used.
  final PeriodXPackagedProductDefinitionShelfLifeStorage? periodX;

  /// [specialPrecautionsForStorage]
  /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary. The controlled term and the
  /// controlled term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (periodX != null) {
      json['period${periodX!.fhirType.capitalize()}'] = periodX!.toJson();
    }

    if (specialPrecautionsForStorage != null &&
        specialPrecautionsForStorage!.isNotEmpty) {
      json['specialPrecautionsForStorage'] =
          specialPrecautionsForStorage!.map((e) => e.toJson()).toList();
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
    PeriodXPackagedProductDefinitionShelfLifeStorage? periodX,
    List<CodeableConcept>? specialPrecautionsForStorage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return PackagedProductDefinitionShelfLifeStorage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      periodX: periodX ?? this.periodX,
      specialPrecautionsForStorage:
          specialPrecautionsForStorage ?? this.specialPrecautionsForStorage,
    );
  }
}

/// [PackagedProductDefinitionProperty]
/// General characteristics of this item.
class PackagedProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionProperty]

  const PackagedProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionProperty(
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
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueX: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : json['valueQuantity'] != null
              ? Quantity.fromJson(
                  json['valueQuantity'] as Map<String, dynamic>,
                )
              : json['valueDate'] != null || json['_valueDate'] != null
                  ? FhirDate.fromJson({
                      'value': json['valueDate'],
                      '_value': json['_valueDate'],
                    })
                  : json['valueBoolean'] != null ||
                          json['_valueBoolean'] != null
                      ? FhirBoolean.fromJson({
                          'value': json['valueBoolean'],
                          '_value': json['_valueBoolean'],
                        })
                      : json['valueAttachment'] != null
                          ? Attachment.fromJson(
                              json['valueAttachment'] as Map<String, dynamic>,
                            )
                          : null,
    );
  }

  /// Deserialize [PackagedProductDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionProperty.fromJsonString(
    String source,
  ) {
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

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXPackagedProductDefinitionProperty? valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (valueX != null) {
      json['value${valueX!.fhirType.capitalize()}'] = valueX!.toJson();
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
    ValueXPackagedProductDefinitionProperty? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return PackagedProductDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
    );
  }
}

/// [PackagedProductDefinitionContainedItem]
/// The item(s) within the packaging.
class PackagedProductDefinitionContainedItem extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionContainedItem]

  const PackagedProductDefinitionContainedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionContainedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionContainedItem(
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

  /// Deserialize [PackagedProductDefinitionContainedItem]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionContainedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionContainedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionContainedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionContainedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionContainedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionContainedItem.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['item'] = item.toJson();

    if (amount != null) {
      json['amount'] = amount!.toJson();
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
  }) {
    return PackagedProductDefinitionContainedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
    );
  }
}
