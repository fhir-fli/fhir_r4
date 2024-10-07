import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinition extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.SubstanceDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  SubstanceDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionMoiety extends BackboneElement {
  SubstanceDefinitionMoiety({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  SubstanceDefinitionMoiety clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionProperty extends BackboneElement {
  SubstanceDefinitionProperty({
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
  SubstanceDefinitionProperty clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionMolecularWeight extends BackboneElement {
  SubstanceDefinitionMolecularWeight({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.type,
    required this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? method;
  final CodeableConcept? type;
  final Quantity amount;
  @override
  SubstanceDefinitionMolecularWeight clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionStructure extends BackboneElement {
  SubstanceDefinitionStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  SubstanceDefinitionStructure clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionRepresentation extends BackboneElement {
  SubstanceDefinitionRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.representationElement,
    this.format,
    this.document,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final FhirString? representation;
  final Element? representationElement;
  final CodeableConcept? format;
  final Reference? document;
  @override
  SubstanceDefinitionRepresentation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionCode extends BackboneElement {
  SubstanceDefinitionCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.note,
    this.source,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? code;
  final CodeableConcept? status;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final List<Annotation>? note;
  final List<Reference>? source;
  @override
  SubstanceDefinitionCode clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionName extends BackboneElement {
  SubstanceDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
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
  @override
  SubstanceDefinitionName clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionOfficial extends BackboneElement {
  SubstanceDefinitionOfficial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.dateElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? authority;
  final CodeableConcept? status;
  final FhirDateTime? date;
  final Element? dateElement;
  @override
  SubstanceDefinitionOfficial clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionRelationship extends BackboneElement {
  SubstanceDefinitionRelationship({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  SubstanceDefinitionRelationship clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubstanceDefinitionSourceMaterial extends BackboneElement {
  SubstanceDefinitionSourceMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.genus,
    this.species,
    this.part_,
    this.countryOfOrigin,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final CodeableConcept? genus;
  final CodeableConcept? species;
  final CodeableConcept? part_;
  final List<CodeableConcept>? countryOfOrigin;
  @override
  SubstanceDefinitionSourceMaterial clone() => throw UnimplementedError();
}
