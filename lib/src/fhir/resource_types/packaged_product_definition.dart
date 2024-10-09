import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [PackagedProductDefinition] /// A medically related item or items, in a container or package.
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
  }) : super(resourceType: R4ResourceType.PackagedProductDefinition);

  @override
  String get fhirType => 'PackagedProductDefinition';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier for this package as whole. Unique instance identifiers
  /// assigned to a package by manufacturers, regulators, drug catalogue
  /// custodians or other organizations.
  final List<Identifier>? identifier;

  /// [name] /// A name for this package. Typically what it would be listed as in a drug
  /// formulary or catalogue, inventory etc.
  final FhirString? name;
  final Element? nameElement;

  /// [type] /// A high level category e.g. medicinal product, raw material,
  /// shipping/transport container, etc.
  final CodeableConcept? type;

  /// [packageFor] /// The product that this is a pack for.
  final List<Reference>? packageFor;

  /// [status] /// The status within the lifecycle of this item. A high level status, this is
  /// not intended to duplicate details carried elsewhere such as legal status,
  /// or authorization or marketing status.
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;
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
  final List<Quantity>? containedItemQuantity;

  /// [description] /// Textual description. Note that this is not the name of the package or
  /// product.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [legalStatusOfSupply] /// The legal status of supply of the packaged item as classified by the
  /// regulator.
  final List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply;

  /// [marketingStatus] /// Allows specifying that an item is on the market for sale, or that it is not
  /// available, and the dates and locations associated.
  final List<MarketingStatus>? marketingStatus;

  /// [characteristic] /// Allows the key features to be recorded, such as "hospital pack", "nurse
  /// prescribable", "calendar pack".
  final List<CodeableConcept>? characteristic;

  /// [copackagedIndicator] /// States whether a drug product is supplied with another item such as a
  /// diluent or adjuvant.
  final FhirBoolean? copackagedIndicator;
  final Element? copackagedIndicatorElement;

  /// [manufacturer] /// Manufacturer of this package type. When there are multiple it means these
  /// are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [package] /// A packaging item, as a container for medically related items, possibly with
  /// other packaging items within, or a packaging component, such as bottle cap
  /// (which is not a device or a medication manufactured item).
  final PackagedProductDefinitionPackage? package;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (packageFor != null && packageFor!.isNotEmpty) {
      json['packageFor'] =
          packageFor!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (statusDate?.value != null) {
      json['statusDate'] = statusDate!.toJson();
    }
    if (statusDateElement != null) {
      json['_statusDate'] = statusDateElement!.toJson();
    }
    if (containedItemQuantity != null && containedItemQuantity!.isNotEmpty) {
      json['containedItemQuantity'] = containedItemQuantity!
          .map<dynamic>((Quantity v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (legalStatusOfSupply != null && legalStatusOfSupply!.isNotEmpty) {
      json['legalStatusOfSupply'] = legalStatusOfSupply!
          .map<dynamic>(
              (PackagedProductDefinitionLegalStatusOfSupply v) => v.toJson())
          .toList();
    }
    if (marketingStatus != null && marketingStatus!.isNotEmpty) {
      json['marketingStatus'] = marketingStatus!
          .map<dynamic>((MarketingStatus v) => v.toJson())
          .toList();
    }
    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (copackagedIndicator?.value != null) {
      json['copackagedIndicator'] = copackagedIndicator!.toJson();
    }
    if (copackagedIndicatorElement != null) {
      json['_copackagedIndicator'] = copackagedIndicatorElement!.toJson();
    }
    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] =
          manufacturer!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (package != null) {
      json['package'] = package!.toJson();
    }
    return json;
  }

  factory PackagedProductDefinition.fromJson(Map<String, dynamic> json) {
    return PackagedProductDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      packageFor: json['packageFor'] != null
          ? (json['packageFor'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      statusDate: json['statusDate'] != null
          ? FhirDateTime.fromJson(json['statusDate'])
          : null,
      statusDateElement: json['_statusDate'] != null
          ? Element.fromJson(json['_statusDate'] as Map<String, dynamic>)
          : null,
      containedItemQuantity: json['containedItemQuantity'] != null
          ? (json['containedItemQuantity'] as List<dynamic>)
              .map<Quantity>(
                  (dynamic v) => Quantity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      legalStatusOfSupply: json['legalStatusOfSupply'] != null
          ? (json['legalStatusOfSupply'] as List<dynamic>)
              .map<PackagedProductDefinitionLegalStatusOfSupply>((dynamic v) =>
                  PackagedProductDefinitionLegalStatusOfSupply.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      marketingStatus: json['marketingStatus'] != null
          ? (json['marketingStatus'] as List<dynamic>)
              .map<MarketingStatus>((dynamic v) =>
                  MarketingStatus.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      copackagedIndicator: json['copackagedIndicator'] != null
          ? FhirBoolean.fromJson(json['copackagedIndicator'])
          : null,
      copackagedIndicatorElement: json['_copackagedIndicator'] != null
          ? Element.fromJson(
              json['_copackagedIndicator'] as Map<String, dynamic>)
          : null,
      manufacturer: json['manufacturer'] != null
          ? (json['manufacturer'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      package: json['package'] != null
          ? PackagedProductDefinitionPackage.fromJson(
              json['package'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PackagedProductDefinition clone() => throw UnimplementedError();
  @override
  PackagedProductDefinition copyWith({
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
  });

  @override
  String get fhirType => 'PackagedProductDefinitionLegalStatusOfSupply';

  @Id()
  int dbId = 0;

  /// [code] /// The actual status of supply. Conveys in what situation this package type
  /// may be supplied for use.
  final CodeableConcept? code;

  /// [jurisdiction] /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  final CodeableConcept? jurisdiction;
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
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (jurisdiction != null) {
      json['jurisdiction'] = jurisdiction!.toJson();
    }
    return json;
  }

  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionLegalStatusOfSupply(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? CodeableConcept.fromJson(
              json['jurisdiction'] as Map<String, dynamic>)
          : null,
    );
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
  });

  @override
  String get fhirType => 'PackagedProductDefinitionPackage';

  @Id()
  int dbId = 0;

  /// [identifier] /// An identifier that is specific to this particular part of the packaging.
  /// Including possibly Data Carrier Identifier (a GS1 barcode).
  final List<Identifier>? identifier;

  /// [type] /// The physical type of the container of the items.
  final CodeableConcept? type;

  /// [quantity] /// The quantity of this level of packaging in the package that contains it. If
  /// specified, the outermost level is always 1.
  final FhirInteger? quantity;
  final Element? quantityElement;

  /// [material] /// Material type of the package item.
  final List<CodeableConcept>? material;

  /// [alternateMaterial] /// A possible alternate material for this part of the packaging, that is
  /// allowed to be used instead of the usual material (e.g. different types of
  /// plastic for a blister sleeve).
  final List<CodeableConcept>? alternateMaterial;

  /// [shelfLifeStorage] /// Shelf Life and storage information.
  final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage;

  /// [manufacturer] /// Manufacturer of this package Item. When there are multiple it means these
  /// are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [property] /// General characteristics of this item.
  final List<PackagedProductDefinitionProperty>? property;

  /// [containedItem] /// The item(s) within the packaging.
  final List<PackagedProductDefinitionContainedItem>? containedItem;

  /// [package] /// Allows containers (and parts of containers) parwithin containers, still a
  /// single packaged product. See also
  /// PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).
  final List<PackagedProductDefinitionPackage>? package;
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (quantity?.value != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (quantityElement != null) {
      json['_quantity'] = quantityElement!.toJson();
    }
    if (material != null && material!.isNotEmpty) {
      json['material'] =
          material!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (alternateMaterial != null && alternateMaterial!.isNotEmpty) {
      json['alternateMaterial'] = alternateMaterial!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (shelfLifeStorage != null && shelfLifeStorage!.isNotEmpty) {
      json['shelfLifeStorage'] = shelfLifeStorage!
          .map<dynamic>(
              (PackagedProductDefinitionShelfLifeStorage v) => v.toJson())
          .toList();
    }
    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] =
          manufacturer!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (property != null && property!.isNotEmpty) {
      json['property'] = property!
          .map<dynamic>((PackagedProductDefinitionProperty v) => v.toJson())
          .toList();
    }
    if (containedItem != null && containedItem!.isNotEmpty) {
      json['containedItem'] = containedItem!
          .map<dynamic>(
              (PackagedProductDefinitionContainedItem v) => v.toJson())
          .toList();
    }
    if (package != null && package!.isNotEmpty) {
      json['package'] = package!
          .map<dynamic>((PackagedProductDefinitionPackage v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory PackagedProductDefinitionPackage.fromJson(Map<String, dynamic> json) {
    return PackagedProductDefinitionPackage(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? FhirInteger.fromJson(json['quantity'])
          : null,
      quantityElement: json['_quantity'] != null
          ? Element.fromJson(json['_quantity'] as Map<String, dynamic>)
          : null,
      material: json['material'] != null
          ? (json['material'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      alternateMaterial: json['alternateMaterial'] != null
          ? (json['alternateMaterial'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      shelfLifeStorage: json['shelfLifeStorage'] != null
          ? (json['shelfLifeStorage'] as List<dynamic>)
              .map<PackagedProductDefinitionShelfLifeStorage>((dynamic v) =>
                  PackagedProductDefinitionShelfLifeStorage.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      manufacturer: json['manufacturer'] != null
          ? (json['manufacturer'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<PackagedProductDefinitionProperty>((dynamic v) =>
                  PackagedProductDefinitionProperty.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      containedItem: json['containedItem'] != null
          ? (json['containedItem'] as List<dynamic>)
              .map<PackagedProductDefinitionContainedItem>((dynamic v) =>
                  PackagedProductDefinitionContainedItem.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      package: json['package'] != null
          ? (json['package'] as List<dynamic>)
              .map<PackagedProductDefinitionPackage>((dynamic v) =>
                  PackagedProductDefinitionPackage.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
  });

  @override
  String get fhirType => 'PackagedProductDefinitionShelfLifeStorage';

  @Id()
  int dbId = 0;

  /// [type] /// This describes the shelf life, taking into account various scenarios such
  /// as shelf life of the packaged Medicinal Product itself, shelf life after
  /// transformation where necessary and shelf life after the first opening of a
  /// bottle, etc. The shelf life type shall be specified using an appropriate
  /// controlled vocabulary The controlled term and the controlled term
  /// identifier shall be specified.
  final CodeableConcept? type;

  /// [periodDuration] /// The shelf life time period can be specified using a numerical value for the
  /// period of time and its unit of time measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  final FhirDuration? periodDuration;

  /// [periodString] /// The shelf life time period can be specified using a numerical value for the
  /// period of time and its unit of time measurement The unit of measurement
  /// shall be specified in accordance with ISO 11240 and the resulting
  /// terminology The symbol and the symbol identifier shall be used.
  final FhirString? periodString;
  final Element? periodStringElement;

  /// [specialPrecautionsForStorage] /// Special precautions for storage, if any, can be specified using an
  /// appropriate controlled vocabulary. The controlled term and the controlled
  /// term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (periodDuration != null) {
      json['periodDuration'] = periodDuration!.toJson();
    }
    if (periodString?.value != null) {
      json['periodString'] = periodString!.toJson();
    }
    if (periodStringElement != null) {
      json['_periodString'] = periodStringElement!.toJson();
    }
    if (specialPrecautionsForStorage != null &&
        specialPrecautionsForStorage!.isNotEmpty) {
      json['specialPrecautionsForStorage'] = specialPrecautionsForStorage!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory PackagedProductDefinitionShelfLifeStorage.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionShelfLifeStorage(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      periodDuration: json['periodDuration'] != null
          ? FhirDuration.fromJson(
              json['periodDuration'] as Map<String, dynamic>)
          : null,
      periodString: json['periodString'] != null
          ? FhirString.fromJson(json['periodString'])
          : null,
      periodStringElement: json['_periodString'] != null
          ? Element.fromJson(json['_periodString'] as Map<String, dynamic>)
          : null,
      specialPrecautionsForStorage: json['specialPrecautionsForStorage'] != null
          ? (json['specialPrecautionsForStorage'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
  });

  @override
  String get fhirType => 'PackagedProductDefinitionProperty';

  @Id()
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  final Attachment? valueAttachment;
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
    json['type'] = type.toJson();
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    return json;
  }

  factory PackagedProductDefinitionProperty.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionProperty(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
    );
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
  });

  @override
  String get fhirType => 'PackagedProductDefinitionContainedItem';

  @Id()
  int dbId = 0;

  /// [item] /// The actual item(s) of medication, as manufactured, or a device (typically,
  /// but not necessarily, a co-packaged one), or other medically related item
  /// (such as food, biologicals, raw materials, medical fluids, gases etc.), as
  /// contained in the package. This also allows another whole packaged product
  /// to be included, which is solely for the case where a package of other
  /// entire packages is wanted - such as a wholesale or distribution pack (for
  /// layers within one package, use PackagedProductDefinition.package.package).
  final CodeableReference item;

  /// [amount] /// The number of this type of item within this packaging.
  final Quantity? amount;
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
    json['item'] = item.toJson();
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    return json;
  }

  factory PackagedProductDefinitionContainedItem.fromJson(
      Map<String, dynamic> json) {
    return PackagedProductDefinitionContainedItem(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      item: CodeableReference.fromJson(json['item'] as Map<String, dynamic>),
      amount: json['amount'] != null
          ? Quantity.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
    );
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
