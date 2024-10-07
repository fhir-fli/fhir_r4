import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'packaged_product_definition.g.dart';

/// [PackagedProductDefinition] /// A medically related item or items, in a container or package.
@JsonSerializable()
class PackagedProductDefinition extends DomainResource {
  PackagedProductDefinition({
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
    this.name,
    this.nameElement,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.containedItemQuantity,
    this.description,
    this.descriptionElement,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.characteristic,
    this.copackagedIndicator,
    this.copackagedIndicatorElement,
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
            fhirType: 'PackagedProductDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier for this package as whole. Unique instance identifiers
  /// assigned to a package by manufacturers, regulators, drug catalogue
  /// custodians or other organizations.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [name] /// A name for this package. Typically what it would be listed as in a drug
  /// formulary or catalogue, inventory etc.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [type] /// A high level category e.g. medicinal product, raw material,
  /// shipping/transport container, etc.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [packageFor] /// The product that this is a pack for.
  @JsonKey(name: 'packageFor')
  final List<Reference>? packageFor;

  /// [status] /// The status within the lifecycle of this item. A high level status, this is
  /// not intended to duplicate details carried elsewhere such as legal status,
  /// or authorization or marketing status.
  @JsonKey(name: 'status')
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the given status became applicable.
  @JsonKey(name: 'statusDate')
  final FhirDateTime? statusDate;
  @JsonKey(name: '_statusDate')
  final Element? statusDateElement;

  /// [containedItemQuantity] /// A total of the complete count of contained items of a particular type/form,
  /// independent of sub-packaging or organization. This can be considered as the
  /// pack size. This attribute differs from containedItem.amount in that it can
  /// give a single aggregated count of all tablet types in a pack, even when
  /// these are different manufactured items. For example a pill pack of 21
  /// tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This
  /// attribute is repeatable so that the different item types in one pack type
  /// can be counted (e.g. a count of vials and count of syringes). Each repeat
  /// must have different units, so that it is clear what the different sets of
  /// counted items are, and it is not intended to allow different counts of
  /// similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used
  /// to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would
  /// be different instances of this resource.
  @JsonKey(name: 'containedItemQuantity')
  final List<Quantity>? containedItemQuantity;

  /// [description] /// Textual description. Note that this is not the name of the package or
  /// product.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [legalStatusOfSupply] /// The legal status of supply of the packaged item as classified by the
  /// regulator.
  @JsonKey(name: 'legalStatusOfSupply')
  final List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply;

  /// [marketingStatus] /// Allows specifying that an item is on the market for sale, or that it is not
  /// available, and the dates and locations associated.
  @JsonKey(name: 'marketingStatus')
  final List<MarketingStatus>? marketingStatus;

  /// [characteristic] /// Allows the key features to be recorded, such as "hospital pack", "nurse
  /// prescribable", "calendar pack".
  @JsonKey(name: 'characteristic')
  final List<CodeableConcept>? characteristic;

  /// [copackagedIndicator] /// States whether a drug product is supplied with another item such as a
  /// diluent or adjuvant.
  @JsonKey(name: 'copackagedIndicator')
  final FhirBoolean? copackagedIndicator;
  @JsonKey(name: '_copackagedIndicator')
  final Element? copackagedIndicatorElement;

  /// [manufacturer] /// Manufacturer of this package type. When there are multiple it means these
  /// are all possible manufacturers.
  @JsonKey(name: 'manufacturer')
  final List<Reference>? manufacturer;

  /// [package] /// A packaging item, as a container for medically related items, possibly with
  /// other packaging items within, or a packaging component, such as bottle cap
  /// (which is not a device or a medication manufactured item).
  @JsonKey(name: 'package')
  final PackagedProductDefinitionPackage? package;
  factory PackagedProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$PackagedProductDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PackagedProductDefinitionToJson(this);

  @override
  PackagedProductDefinition clone() => throw UnimplementedError();
  @override
  PackagedProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? type,
    List<Reference>? packageFor,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    List<Quantity>? containedItemQuantity,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,
    List<MarketingStatus>? marketingStatus,
    List<CodeableConcept>? characteristic,
    FhirBoolean? copackagedIndicator,
    Element? copackagedIndicatorElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      packageFor: packageFor ?? this.packageFor,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      containedItemQuantity:
          containedItemQuantity ?? this.containedItemQuantity,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      characteristic: characteristic ?? this.characteristic,
      copackagedIndicator: copackagedIndicator ?? this.copackagedIndicator,
      copackagedIndicatorElement:
          copackagedIndicatorElement ?? this.copackagedIndicatorElement,
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

  factory PackagedProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PackagedProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PackagedProductDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PackagedProductDefinitionLegalStatusOfSupply] /// The legal status of supply of the packaged item as classified by the
/// regulator.
@JsonSerializable()
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'PackagedProductDefinitionLegalStatusOfSupply');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The actual status of supply. Conveys in what situation this package type
  /// may be supplied for use.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [jurisdiction] /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  @JsonKey(name: 'jurisdiction')
  final CodeableConcept? jurisdiction;
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionLegalStatusOfSupplyFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$PackagedProductDefinitionLegalStatusOfSupplyToJson(this);

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

  factory PackagedProductDefinitionLegalStatusOfSupply.fromYaml(dynamic yaml) =>
      yaml is String
          ? PackagedProductDefinitionLegalStatusOfSupply.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          : yaml is YamlMap
              ? PackagedProductDefinitionLegalStatusOfSupply.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              : throw ArgumentError(
                  'PackagedProductDefinitionLegalStatusOfSupply cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

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
}

/// [PackagedProductDefinitionPackage] /// A packaging item, as a container for medically related items, possibly with
/// other packaging items within, or a packaging component, such as bottle cap
/// (which is not a device or a medication manufactured item).
@JsonSerializable()
class PackagedProductDefinitionPackage extends BackboneElement {
  PackagedProductDefinitionPackage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
    this.quantityElement,
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
  }) : super(fhirType: 'PackagedProductDefinitionPackage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An identifier that is specific to this particular part of the packaging.
  /// Including possibly Data Carrier Identifier (a GS1 barcode).
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// The physical type of the container of the items.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [quantity] /// The quantity of this level of packaging in the package that contains it. If
  /// specified, the outermost level is always 1.
  @JsonKey(name: 'quantity')
  final FhirInteger? quantity;
  @JsonKey(name: '_quantity')
  final Element? quantityElement;

  /// [material] /// Material type of the package item.
  @JsonKey(name: 'material')
  final List<CodeableConcept>? material;

  /// [alternateMaterial] /// A possible alternate material for this part of the packaging, that is
  /// allowed to be used instead of the usual material (e.g. different types of
  /// plastic for a blister sleeve).
  @JsonKey(name: 'alternateMaterial')
  final List<CodeableConcept>? alternateMaterial;

  /// [shelfLifeStorage] /// Shelf Life and storage information.
  @JsonKey(name: 'shelfLifeStorage')
  final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage;

  /// [manufacturer] /// Manufacturer of this package Item. When there are multiple it means these
  /// are all possible manufacturers.
  @JsonKey(name: 'manufacturer')
  final List<Reference>? manufacturer;

  /// [property] /// General characteristics of this item.
  @JsonKey(name: 'property')
  final List<PackagedProductDefinitionProperty>? property;

  /// [containedItem] /// The item(s) within the packaging.
  @JsonKey(name: 'containedItem')
  final List<PackagedProductDefinitionContainedItem>? containedItem;

  /// [package] /// Allows containers (and parts of containers) parwithin containers, still a
  /// single packaged product. See also
  /// PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).
  @JsonKey(name: 'package')
  final List<PackagedProductDefinitionPackage>? package;
  factory PackagedProductDefinitionPackage.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionPackageFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$PackagedProductDefinitionPackageToJson(this);

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
    Element? quantityElement,
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
      quantityElement: quantityElement ?? this.quantityElement,
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

  factory PackagedProductDefinitionPackage.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionPackage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PackagedProductDefinitionPackage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PackagedProductDefinitionPackage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinitionPackage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionPackage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PackagedProductDefinitionShelfLifeStorage] /// Shelf Life and storage information.
@JsonSerializable()
class PackagedProductDefinitionShelfLifeStorage extends BackboneElement {
  PackagedProductDefinitionShelfLifeStorage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.periodDuration,
    this.periodString,
    this.periodStringElement,
    this.specialPrecautionsForStorage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'PackagedProductDefinitionShelfLifeStorage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// This describes the shelf life, taking into account various scenarios such
  /// as shelf life of the packaged Medicinal Product itself, shelf life after
  /// transformation where necessary and shelf life after the first opening of a
  /// bottle, etc. The shelf life type shall be specified using an appropriate
  /// controlled vocabulary The controlled term and the controlled term
  /// identifier shall be specified.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [periodDuration] /// The shelf life time period can be specified using a numerical value for the
  /// period of time and its unit of time measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  @JsonKey(name: 'periodDuration')
  final FhirDuration? periodDuration;

  /// [periodString] /// The shelf life time period can be specified using a numerical value for the
  /// period of time and its unit of time measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  @JsonKey(name: 'periodString')
  final FhirString? periodString;
  @JsonKey(name: '_periodString')
  final Element? periodStringElement;

  /// [specialPrecautionsForStorage] /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary. The controlled term and the controlled
  /// term identifier shall be specified.
  @JsonKey(name: 'specialPrecautionsForStorage')
  final List<CodeableConcept>? specialPrecautionsForStorage;
  factory PackagedProductDefinitionShelfLifeStorage.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionShelfLifeStorageFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$PackagedProductDefinitionShelfLifeStorageToJson(this);

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
    Element? periodStringElement,
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
      periodStringElement: periodStringElement ?? this.periodStringElement,
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

  factory PackagedProductDefinitionShelfLifeStorage.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionShelfLifeStorage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PackagedProductDefinitionShelfLifeStorage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PackagedProductDefinitionShelfLifeStorage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

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
}

/// [PackagedProductDefinitionProperty] /// General characteristics of this item.
@JsonSerializable()
class PackagedProductDefinitionProperty extends BackboneElement {
  PackagedProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'PackagedProductDefinitionProperty');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;
  factory PackagedProductDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$PackagedProductDefinitionPropertyToJson(this);

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
    Element? valueDateElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
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
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PackagedProductDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PackagedProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PackagedProductDefinitionProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PackagedProductDefinitionContainedItem] /// The item(s) within the packaging.
@JsonSerializable()
class PackagedProductDefinitionContainedItem extends BackboneElement {
  PackagedProductDefinitionContainedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'PackagedProductDefinitionContainedItem');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [item] /// The actual item(s) of medication, as manufactured, or a device (typically,
  /// but not necessarily, a co-packaged one), or other medically related item
  /// (such as food, biologicals, raw materials, medical fluids, gases etc.), as
  /// contained in the package. This also allows another whole packaged product
  /// to be included, which is solely for the case where a package of other
  /// entire packages is wanted - such as a wholesale or distribution pack (for
  /// layers within one package, use PackagedProductDefinition.package.package).
  @JsonKey(name: 'item')
  final CodeableReference item;

  /// [amount] /// The number of this type of item within this packaging.
  @JsonKey(name: 'amount')
  final Quantity? amount;
  factory PackagedProductDefinitionContainedItem.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionContainedItemFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$PackagedProductDefinitionContainedItemToJson(this);

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

  factory PackagedProductDefinitionContainedItem.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionContainedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PackagedProductDefinitionContainedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PackagedProductDefinitionContainedItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PackagedProductDefinitionContainedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PackagedProductDefinitionContainedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
