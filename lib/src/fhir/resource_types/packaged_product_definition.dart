import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  @override
  PackagedProductDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final CodeableConcept? jurisdiction;
  @override
  PackagedProductDefinitionLegalStatusOfSupply clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  @override
  PackagedProductDefinitionPackage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final FhirDuration? periodDuration;
  final FhirString? periodString;
  final Element? periodStringElement;
  final List<CodeableConcept>? specialPrecautionsForStorage;
  @override
  PackagedProductDefinitionShelfLifeStorage clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;
  @override
  PackagedProductDefinitionProperty clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableReference item;
  final Quantity? amount;
  @override
  PackagedProductDefinitionContainedItem clone() => throw UnimplementedError();
}
