import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Substance {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final List<SubstanceInstance> instance;
  final List<SubstanceIngredient> ingredient;
}

@Data()
@JsonCodable()
class SubstanceInstance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime expiry;
  final PrimitiveElement Expiry;
  final Quantity quantity;
}

@Data()
@JsonCodable()
class SubstanceIngredient {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Ratio quantity;
  final CodeableConcept substanceCodeableConcept;
  final Reference substanceReference;
}

@Data()
@JsonCodable()
class SubstanceDefinition {
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
  final String version;
  final PrimitiveElement Version;
  final CodeableConcept status;
  final List<CodeableConcept> classification;
  final CodeableConcept domain;
  final List<CodeableConcept> grade;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Reference> informationSource;
  final List<Annotation> note;
  final List<Reference> manufacturer;
  final List<Reference> supplier;
  final List<SubstanceDefinitionMoiety> moiety;
  final List<SubstanceDefinitionProperty> property;
  final List<SubstanceDefinitionMolecularWeight> molecularWeight;
  final SubstanceDefinitionStructure structure;
  final List<SubstanceDefinitionCode> code;
  final List<SubstanceDefinitionName> name;
  final List<SubstanceDefinitionRelationship> relationship;
  final SubstanceDefinitionSourceMaterial sourceMaterial;
}

@Data()
@JsonCodable()
class SubstanceDefinitionMoiety {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept role;
  final Identifier identifier;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept stereochemistry;
  final CodeableConcept opticalActivity;
  final String molecularFormula;
  final PrimitiveElement MolecularFormula;
  final Quantity amountQuantity;
  final String amountString;
  final PrimitiveElement AmountString;
  final CodeableConcept measurementType;
}

@Data()
@JsonCodable()
class SubstanceDefinitionProperty {
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
class SubstanceDefinitionMolecularWeight {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept method;
  final CodeableConcept type;
  final Quantity amount;
}

@Data()
@JsonCodable()
class SubstanceDefinitionStructure {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept stereochemistry;
  final CodeableConcept opticalActivity;
  final String molecularFormula;
  final PrimitiveElement MolecularFormula;
  final String molecularFormulaByMoiety;
  final PrimitiveElement MolecularFormulaByMoiety;
  final SubstanceDefinitionMolecularWeight molecularWeight;
  final List<CodeableConcept> technique;
  final List<Reference> sourceDocument;
  final List<SubstanceDefinitionRepresentation> representation;
}

@Data()
@JsonCodable()
class SubstanceDefinitionRepresentation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String representation;
  final PrimitiveElement Representation;
  final CodeableConcept format;
  final Reference document;
}

@Data()
@JsonCodable()
class SubstanceDefinitionCode {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final List<Annotation> note;
  final List<Reference> source;
}

@Data()
@JsonCodable()
class SubstanceDefinitionName {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
  final CodeableConcept status;
  final FhirBoolean preferred;
  final PrimitiveElement Preferred;
  final List<CodeableConcept> language;
  final List<CodeableConcept> domain;
  final List<CodeableConcept> jurisdiction;
  final List<SubstanceDefinitionName> synonym;
  final List<SubstanceDefinitionName> translation;
  final List<SubstanceDefinitionOfficial> official;
  final List<Reference> source;
}

@Data()
@JsonCodable()
class SubstanceDefinitionOfficial {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept authority;
  final CodeableConcept status;
  final FhirDateTime date;
  final PrimitiveElement Date;
}

@Data()
@JsonCodable()
class SubstanceDefinitionRelationship {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference substanceDefinitionReference;
  final CodeableConcept substanceDefinitionCodeableConcept;
  final CodeableConcept type;
  final FhirBoolean isDefining;
  final PrimitiveElement IsDefining;
  final Quantity amountQuantity;
  final Ratio amountRatio;
  final String amountString;
  final PrimitiveElement AmountString;
  final Ratio ratioHighLimitAmount;
  final CodeableConcept comparator;
  final List<Reference> source;
}

@Data()
@JsonCodable()
class SubstanceDefinitionSourceMaterial {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept genus;
  final CodeableConcept species;
  final CodeableConcept part;
  final List<CodeableConcept> countryOfOrigin;
}


