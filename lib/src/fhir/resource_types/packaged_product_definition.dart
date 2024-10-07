import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class PackagedProductDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? type;
  final List<Reference>? packageFor;
  final CodeableConcept? status;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final List<Quantity>? containedItemQuantity;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply;
  final List<MarketingStatus>? marketingStatus;
  final List<CodeableConcept>? characteristic;
  final FhirBoolean? copackagedIndicator;
  final Element? copackagedIndicatorElement;
  final List<Reference>? manufacturer;
  final PackagedProductDefinitionPackage? package;

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

@override
PackagedProductDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  final CodeableConcept? code;
  final CodeableConcept? jurisdiction;

  PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
  });

@override
PackagedProductDefinitionLegalStatusOfSupply clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PackagedProductDefinitionPackage extends BackboneElement {
  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final FhirInteger? quantity;
  final Element? quantityElement;
  final List<CodeableConcept>? material;
  final List<CodeableConcept>? alternateMaterial;
  final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage;
  final List<Reference>? manufacturer;
  final List<PackagedProductDefinitionProperty>? property;
  final List<PackagedProductDefinitionContainedItem>? containedItem;
  final List<PackagedProductDefinitionPackage>? package;

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

@override
PackagedProductDefinitionPackage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PackagedProductDefinitionShelfLifeStorage extends BackboneElement {
  final CodeableConcept? type;
  final FhirDuration? periodDuration;
  final FhirString? periodString;
  final Element? periodStringElement;
  final List<CodeableConcept>? specialPrecautionsForStorage;

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

@override
PackagedProductDefinitionShelfLifeStorage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PackagedProductDefinitionProperty extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;

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

@override
PackagedProductDefinitionProperty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PackagedProductDefinitionContainedItem extends BackboneElement {
  final CodeableReference item;
  final Quantity? amount;

  PackagedProductDefinitionContainedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
  });

@override
PackagedProductDefinitionContainedItem clone() => throw UnimplementedError();
}

