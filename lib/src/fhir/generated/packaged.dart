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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
  final List<Reference> packageFor;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final List<Quantity> containedItemQuantity;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<PackagedProductDefinitionLegalStatusOfSupply> legalStatusOfSupply;
  final List<MarketingStatus> marketingStatus;
  final List<CodeableConcept> characteristic;
  final FhirBoolean copackagedIndicator;
  final PrimitiveElement CopackagedIndicator;
  final List<Reference> manufacturer;
  final PackagedProductDefinitionPackage package;
}

@Data()
@JsonCodable()
class PackagedProductDefinitionLegalStatusOfSupply {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept jurisdiction;
}

@Data()
@JsonCodable()
class PackagedProductDefinitionPackage {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final FhirInteger quantity;
  final PrimitiveElement Quantity;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirDuration periodDuration;
  final String periodString;
  final PrimitiveElement PeriodString;
  final List<CodeableConcept> specialPrecautionsForStorage;
}

@Data()
@JsonCodable()
class PackagedProductDefinitionProperty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final Attachment valueAttachment;
}

@Data()
@JsonCodable()
class PackagedProductDefinitionContainedItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final Quantity amount;
}


