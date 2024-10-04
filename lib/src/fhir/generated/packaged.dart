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
}

@Data()
@JsonCodable()
class PackagedProductDefinitionLegalStatusOfSupply {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept jurisdiction;
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
}

@Data()
@JsonCodable()
class PackagedProductDefinitionContainedItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final Quantity amount;
}


