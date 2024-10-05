import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SubstanceDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final CodeableConcept? status;
  final List<CodeableConcept>? classification;
  final CodeableConcept? domain;
  final List<CodeableConcept>? grade;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<Reference>? informationSource;
  final List<Annotation>? note;
  final List<Reference>? manufacturer;
  final List<Reference>? supplier;
  final List<SubstanceDefinitionMoiety>? moiety;
  final List<SubstanceDefinitionProperty>? property;
  final List<SubstanceDefinitionMolecularWeight>? molecularWeight;
  final SubstanceDefinitionStructure? structure;
  final List<SubstanceDefinitionCode>? code;
  final List<SubstanceDefinitionName>? name;
  final List<SubstanceDefinitionRelationship>? relationship;
  final SubstanceDefinitionSourceMaterial? sourceMaterial;

  SubstanceDefinition({
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
    this.version,
    this.versionElement,
    this.status,
    this.classification,
    this.domain,
    this.grade,
    this.description,
    this.descriptionElement,
    this.informationSource,
    this.note,
    this.manufacturer,
    this.supplier,
    this.moiety,
    this.property,
    this.molecularWeight,
    this.structure,
    this.code,
    this.name,
    this.relationship,
    this.sourceMaterial,
  }): super(resourceType: R4ResourceType.SubstanceDefinition);

@override
SubstanceDefinition clone() => this;

}


@Data()
@JsonCodable()
class SubstanceDefinitionMoiety {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? role;
  final Identifier? identifier;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? stereochemistry;
  final CodeableConcept? opticalActivity;
  final FhirString? molecularFormula;
  final Element? molecularFormulaElement;
  final Quantity? amountQuantity;
  final FhirString? amountString;
  final Element? amountStringElement;
  final CodeableConcept? measurementType;

  SubstanceDefinitionMoiety({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.nameElement,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaElement,
    this.amountQuantity,
    this.amountString,
    this.amountStringElement,
    this.measurementType,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionProperty {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;

  SubstanceDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionMolecularWeight {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? method;
  final CodeableConcept? type;
  final Quantity amount;

  SubstanceDefinitionMolecularWeight({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.method,
    this.type,
    required this.amount,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionStructure {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? stereochemistry;
  final CodeableConcept? opticalActivity;
  final FhirString? molecularFormula;
  final Element? molecularFormulaElement;
  final FhirString? molecularFormulaByMoiety;
  final Element? molecularFormulaByMoietyElement;
  final SubstanceDefinitionMolecularWeight? molecularWeight;
  final List<CodeableConcept>? technique;
  final List<Reference>? sourceDocument;
  final List<SubstanceDefinitionRepresentation>? representation;

  SubstanceDefinitionStructure({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaElement,
    this.molecularFormulaByMoiety,
    this.molecularFormulaByMoietyElement,
    this.molecularWeight,
    this.technique,
    this.sourceDocument,
    this.representation,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionRepresentation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final FhirString? representation;
  final Element? representationElement;
  final CodeableConcept? format;
  final Reference? document;

  SubstanceDefinitionRepresentation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.representation,
    this.representationElement,
    this.format,
    this.document,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionCode {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? code;
  final CodeableConcept? status;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final List<Annotation>? note;
  final List<Reference>? source;

  SubstanceDefinitionCode({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.note,
    this.source,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionName {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? type;
  final CodeableConcept? status;
  final FhirBoolean? preferred;
  final Element? preferredElement;
  final List<CodeableConcept>? language;
  final List<CodeableConcept>? domain;
  final List<CodeableConcept>? jurisdiction;
  final List<SubstanceDefinitionName>? synonym;
  final List<SubstanceDefinitionName>? translation;
  final List<SubstanceDefinitionOfficial>? official;
  final List<Reference>? source;

  SubstanceDefinitionName({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.type,
    this.status,
    this.preferred,
    this.preferredElement,
    this.language,
    this.domain,
    this.jurisdiction,
    this.synonym,
    this.translation,
    this.official,
    this.source,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionOfficial {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? authority;
  final CodeableConcept? status;
  final FhirDateTime? date;
  final Element? dateElement;

  SubstanceDefinitionOfficial({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.dateElement,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionRelationship {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? substanceDefinitionReference;
  final CodeableConcept? substanceDefinitionCodeableConcept;
  final CodeableConcept type;
  final FhirBoolean? isDefining;
  final Element? isDefiningElement;
  final Quantity? amountQuantity;
  final Ratio? amountRatio;
  final FhirString? amountString;
  final Element? amountStringElement;
  final Ratio? ratioHighLimitAmount;
  final CodeableConcept? comparator;
  final List<Reference>? source;

  SubstanceDefinitionRelationship({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.substanceDefinitionReference,
    this.substanceDefinitionCodeableConcept,
    required this.type,
    this.isDefining,
    this.isDefiningElement,
    this.amountQuantity,
    this.amountRatio,
    this.amountString,
    this.amountStringElement,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
  });

}


@Data()
@JsonCodable()
class SubstanceDefinitionSourceMaterial {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final CodeableConcept? genus;
  final CodeableConcept? species;
  final CodeableConcept? part_;
  final List<CodeableConcept>? countryOfOrigin;

  SubstanceDefinitionSourceMaterial({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.genus,
    this.species,
    this.part_,
    this.countryOfOrigin,
  });

}



