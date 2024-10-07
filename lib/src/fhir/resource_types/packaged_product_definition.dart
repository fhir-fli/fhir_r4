import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.PackagedProductDefinition);

  @Id()
  @JsonKey(ignore: true)
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
  PackagedProductDefinition clone() => throw UnimplementedError();
  PackagedProductDefinition copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PackagedProductDefinitionLegalStatusOfSupply] /// The legal status of supply of the packaged item as classified by the
/// regulator.
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The actual status of supply. Conveys in what situation this package type
  /// may be supplied for use.
  final CodeableConcept? code;

  /// [jurisdiction] /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  final CodeableConcept? jurisdiction;
  @override
  PackagedProductDefinitionLegalStatusOfSupply clone() =>
      throw UnimplementedError();
  PackagedProductDefinitionLegalStatusOfSupply copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? jurisdiction,
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

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  PackagedProductDefinitionPackage clone() => throw UnimplementedError();
  PackagedProductDefinitionPackage copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  PackagedProductDefinitionShelfLifeStorage clone() =>
      throw UnimplementedError();
  PackagedProductDefinitionShelfLifeStorage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDuration? periodDuration,
    FhirString? periodString,
    Element? periodStringElement,
    List<CodeableConcept>? specialPrecautionsForStorage,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  PackagedProductDefinitionProperty clone() => throw UnimplementedError();
  PackagedProductDefinitionProperty copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PackagedProductDefinitionContainedItem] /// The item(s) within the packaging.
class PackagedProductDefinitionContainedItem extends BackboneElement {
  PackagedProductDefinitionContainedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
  });

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
  final CodeableReference item;

  /// [amount] /// The number of this type of item within this packaging.
  final Quantity? amount;
  @override
  PackagedProductDefinitionContainedItem clone() => throw UnimplementedError();
  PackagedProductDefinitionContainedItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    Quantity? amount,
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
