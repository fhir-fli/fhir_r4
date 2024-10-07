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
  final List<BackboneElement>? moiety;
  final List<BackboneElement>? property;
  final List<BackboneElement>? molecularWeight;
  final BackboneElement? structure;
  final List<BackboneElement>? representation;
  final List<BackboneElement>? code;
  final List<BackboneElement>? name;
  final List<BackboneElement>? official;
  final List<BackboneElement>? relationship;
  final BackboneElement? sourceMaterial;

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
    this.representation,
    this.code,
    this.name,
    this.official,
    this.relationship,
    this.sourceMaterial,
  }) : super(resourceType: R4ResourceType.SubstanceDefinition);

@override
SubstanceDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionMoiety extends BackboneElement {
  final CodeableConcept? role;
  final Identifier? identifier;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? stereochemistry;
  final CodeableConcept? opticalActivity;
  final FhirString? molecularFormula;
  final Element? molecularFormulaElement;
  final Quantity? amountQuantity;
  final FhirString? amountFhirString;
  final Element? amountFhirStringElement;
  final CodeableConcept? measurementType;

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
    this.amountFhirString,
this.amountFhirStringElement,
    this.measurementType,
  });

@override
SubstanceDefinitionMoiety clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionProperty extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final Attachment? valueAttachment;

  SubstanceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueFhirDate,
this.valueFhirDateElement,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueAttachment,
  });

@override
SubstanceDefinitionProperty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionMolecularWeight extends BackboneElement {
  final CodeableConcept? method;
  final CodeableConcept? type;
  final Quantity amount;

  SubstanceDefinitionMolecularWeight({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.type,
    required this.amount,
  });

@override
SubstanceDefinitionMolecularWeight clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionStructure extends BackboneElement {
  final CodeableConcept? stereochemistry;
  final CodeableConcept? opticalActivity;
  final FhirString? molecularFormula;
  final Element? molecularFormulaElement;
  final FhirString? molecularFormulaByMoiety;
  final Element? molecularFormulaByMoietyElement;
  final dynamic? molecularWeight;
  final List<CodeableConcept>? technique;
  final List<Reference>? sourceDocument;

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
  });

@override
SubstanceDefinitionStructure clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionRepresentation extends BackboneElement {
  final CodeableConcept? type;
  final FhirString? representation;
  final Element? representationElement;
  final CodeableConcept? format;
  final Reference? document;

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

@override
SubstanceDefinitionRepresentation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionCode extends BackboneElement {
  final CodeableConcept? code;
  final CodeableConcept? status;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final List<Annotation>? note;
  final List<Reference>? source;

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

@override
SubstanceDefinitionCode clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionName extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final CodeableConcept? type;
  final CodeableConcept? status;
  final FhirBoolean? preferred;
  final Element? preferredElement;
  final List<CodeableConcept>? language;
  final List<CodeableConcept>? domain;
  final List<CodeableConcept>? jurisdiction;
  final List<dynamic>? synonym;
  final List<dynamic>? translation;
  final List<Reference>? source;

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
    this.source,
  });

@override
SubstanceDefinitionName clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionOfficial extends BackboneElement {
  final CodeableConcept? authority;
  final CodeableConcept? status;
  final FhirDateTime? date;
  final Element? dateElement;

  SubstanceDefinitionOfficial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.status,
    this.date,
this.dateElement,
  });

@override
SubstanceDefinitionOfficial clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionRelationship extends BackboneElement {
  final Reference? substanceDefinitionReference;
  final CodeableConcept? substanceDefinitionCodeableConcept;
  final CodeableConcept type;
  final FhirBoolean? isDefining;
  final Element? isDefiningElement;
  final Quantity? amountQuantity;
  final Ratio? amountRatio;
  final FhirString? amountFhirString;
  final Element? amountFhirStringElement;
  final Ratio? ratioHighLimitAmount;
  final CodeableConcept? comparator;
  final List<Reference>? source;

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
    this.amountFhirString,
this.amountFhirStringElement,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
  });

@override
SubstanceDefinitionRelationship clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubstanceDefinitionSourceMaterial extends BackboneElement {
  final CodeableConcept? type;
  final CodeableConcept? genus;
  final CodeableConcept? species;
  final CodeableConcept? part_;
  final List<CodeableConcept>? countryOfOrigin;

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

@override
SubstanceDefinitionSourceMaterial clone() => throw UnimplementedError();
}

