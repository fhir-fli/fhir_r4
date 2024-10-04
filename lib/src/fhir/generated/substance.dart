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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<SubstanceInstance> instance;
  final List<SubstanceIngredient> ingredient;
  const Substance({
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
    required this.status,
    required this.statusElement,
    required this.category,
    required this.code,
    required this.description,
    required this.descriptionElement,
    required this.instance,
    required this.ingredient,
  });
}

@Data()
@JsonCodable()
class SubstanceInstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime expiry;
  final PrimitiveElement expiryElement;
  final Quantity quantity;
  const SubstanceInstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.expiry,
    required this.expiryElement,
    required this.quantity,
  });
}

@Data()
@JsonCodable()
class SubstanceIngredient {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Ratio quantity;
  final CodeableConcept substanceCodeableConcept;
  final Reference substanceReference;
  const SubstanceIngredient({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.quantity,
    required this.substanceCodeableConcept,
    required this.substanceReference,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinition {
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
  final String version;
  final PrimitiveElement versionElement;
  final CodeableConcept status;
  final List<CodeableConcept> classification;
  final CodeableConcept domain;
  final List<CodeableConcept> grade;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
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
  const SubstanceDefinition({
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
    required this.version,
    required this.versionElement,
    required this.status,
    required this.classification,
    required this.domain,
    required this.grade,
    required this.description,
    required this.descriptionElement,
    required this.informationSource,
    required this.note,
    required this.manufacturer,
    required this.supplier,
    required this.moiety,
    required this.property,
    required this.molecularWeight,
    required this.structure,
    required this.code,
    required this.name,
    required this.relationship,
    required this.sourceMaterial,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionMoiety {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept role;
  final Identifier identifier;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept stereochemistry;
  final CodeableConcept opticalActivity;
  final String molecularFormula;
  final PrimitiveElement molecularFormulaElement;
  final Quantity amountQuantity;
  final String amountString;
  final PrimitiveElement amountStringElement;
  final CodeableConcept measurementType;
  const SubstanceDefinitionMoiety({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.role,
    required this.identifier,
    required this.name,
    required this.nameElement,
    required this.stereochemistry,
    required this.opticalActivity,
    required this.molecularFormula,
    required this.molecularFormulaElement,
    required this.amountQuantity,
    required this.amountString,
    required this.amountStringElement,
    required this.measurementType,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionProperty {
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
  const SubstanceDefinitionProperty({
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
class SubstanceDefinitionMolecularWeight {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept method;
  final CodeableConcept type;
  final Quantity amount;
  const SubstanceDefinitionMolecularWeight({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.method,
    required this.type,
    required this.amount,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionStructure {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept stereochemistry;
  final CodeableConcept opticalActivity;
  final String molecularFormula;
  final PrimitiveElement molecularFormulaElement;
  final String molecularFormulaByMoiety;
  final PrimitiveElement molecularFormulaByMoietyElement;
  final SubstanceDefinitionMolecularWeight molecularWeight;
  final List<CodeableConcept> technique;
  final List<Reference> sourceDocument;
  final List<SubstanceDefinitionRepresentation> representation;
  const SubstanceDefinitionStructure({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.stereochemistry,
    required this.opticalActivity,
    required this.molecularFormula,
    required this.molecularFormulaElement,
    required this.molecularFormulaByMoiety,
    required this.molecularFormulaByMoietyElement,
    required this.molecularWeight,
    required this.technique,
    required this.sourceDocument,
    required this.representation,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionRepresentation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String representation;
  final PrimitiveElement representationElement;
  final CodeableConcept format;
  final Reference document;
  const SubstanceDefinitionRepresentation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.representation,
    required this.representationElement,
    required this.format,
    required this.document,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionCode {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement statusDateElement;
  final List<Annotation> note;
  final List<Reference> source;
  const SubstanceDefinitionCode({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.status,
    required this.statusDate,
    required this.statusDateElement,
    required this.note,
    required this.source,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionName {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept type;
  final CodeableConcept status;
  final FhirBoolean preferred;
  final PrimitiveElement preferredElement;
  final List<CodeableConcept> language;
  final List<CodeableConcept> domain;
  final List<CodeableConcept> jurisdiction;
  final List<SubstanceDefinitionName> synonym;
  final List<SubstanceDefinitionName> translation;
  final List<SubstanceDefinitionOfficial> official;
  final List<Reference> source;
  const SubstanceDefinitionName({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.type,
    required this.status,
    required this.preferred,
    required this.preferredElement,
    required this.language,
    required this.domain,
    required this.jurisdiction,
    required this.synonym,
    required this.translation,
    required this.official,
    required this.source,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionOfficial {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept authority;
  final CodeableConcept status;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  const SubstanceDefinitionOfficial({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.authority,
    required this.status,
    required this.date,
    required this.dateElement,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionRelationship {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference substanceDefinitionReference;
  final CodeableConcept substanceDefinitionCodeableConcept;
  final CodeableConcept type;
  final FhirBoolean isDefining;
  final PrimitiveElement isDefiningElement;
  final Quantity amountQuantity;
  final Ratio amountRatio;
  final String amountString;
  final PrimitiveElement amountStringElement;
  final Ratio ratioHighLimitAmount;
  final CodeableConcept comparator;
  final List<Reference> source;
  const SubstanceDefinitionRelationship({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.substanceDefinitionReference,
    required this.substanceDefinitionCodeableConcept,
    required this.type,
    required this.isDefining,
    required this.isDefiningElement,
    required this.amountQuantity,
    required this.amountRatio,
    required this.amountString,
    required this.amountStringElement,
    required this.ratioHighLimitAmount,
    required this.comparator,
    required this.source,
  });
}

@Data()
@JsonCodable()
class SubstanceDefinitionSourceMaterial {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept genus;
  final CodeableConcept species;
  final CodeableConcept part_;
  final List<CodeableConcept> countryOfOrigin;
  const SubstanceDefinitionSourceMaterial({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.genus,
    required this.species,
    required this.part_,
    required this.countryOfOrigin,
  });
}


