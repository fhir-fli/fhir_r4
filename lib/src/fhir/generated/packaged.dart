import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class PackagedProductDefinition {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept type;
  final List<Reference> packageFor;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement statusDateElement;
  final List<Quantity> containedItemQuantity;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<PackagedProductDefinitionLegalStatusOfSupply> legalStatusOfSupply;
  final List<MarketingStatus> marketingStatus;
  final List<CodeableConcept> characteristic;
  final FhirBoolean copackagedIndicator;
  final PrimitiveElement copackagedIndicatorElement;
  final List<Reference> manufacturer;
  final PackagedProductDefinitionPackage package;
  const PackagedProductDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.name,
    required this.nameElement,
    required this.type,
    required this.packageFor,
    required this.status,
    required this.statusDate,
    required this.statusDateElement,
    required this.containedItemQuantity,
    required this.description,
    required this.descriptionElement,
    required this.legalStatusOfSupply,
    required this.marketingStatus,
    required this.characteristic,
    required this.copackagedIndicator,
    required this.copackagedIndicatorElement,
    required this.manufacturer,
    required this.package,
  });
}

@Data()
@JsonCodable()
class PackagedProductDefinitionLegalStatusOfSupply {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept jurisdiction;
  const PackagedProductDefinitionLegalStatusOfSupply({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.jurisdiction,
  });
}

@Data()
@JsonCodable()
class PackagedProductDefinitionPackage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final FhirInteger quantity;
  final PrimitiveElement quantityElement;
  final List<CodeableConcept> material;
  final List<CodeableConcept> alternateMaterial;
  final List<PackagedProductDefinitionShelfLifeStorage> shelfLifeStorage;
  final List<Reference> manufacturer;
  final List<PackagedProductDefinitionProperty> property;
  final List<PackagedProductDefinitionContainedItem> containedItem;
  final List<PackagedProductDefinitionPackage> package;
  const PackagedProductDefinitionPackage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.type,
    required this.quantity,
    required this.quantityElement,
    required this.material,
    required this.alternateMaterial,
    required this.shelfLifeStorage,
    required this.manufacturer,
    required this.property,
    required this.containedItem,
    required this.package,
  });
}

@Data()
@JsonCodable()
class PackagedProductDefinitionShelfLifeStorage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirDuration periodDuration;
  final String periodString;
  final PrimitiveElement periodStringElement;
  final List<CodeableConcept> specialPrecautionsForStorage;
  const PackagedProductDefinitionShelfLifeStorage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.periodDuration,
    required this.periodString,
    required this.periodStringElement,
    required this.specialPrecautionsForStorage,
  });
}

@Data()
@JsonCodable()
class PackagedProductDefinitionProperty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final Attachment valueAttachment;
  const PackagedProductDefinitionProperty({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueAttachment,
  });
}

@Data()
@JsonCodable()
class PackagedProductDefinitionContainedItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final Quantity amount;
  const PackagedProductDefinitionContainedItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.item,
    required this.amount,
  });
}


