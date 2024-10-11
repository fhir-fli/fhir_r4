import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class SubstanceDefinition extends Resource {
  SubstanceDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? classification = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? domain = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? grade = ToMany<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<Reference>? informationSource = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Reference>? manufacturer = ToMany<Reference>();
  ToMany<Reference>? supplier = ToMany<Reference>();
  ToMany<SubstanceDefinitionMoiety>? moiety =
      ToMany<SubstanceDefinitionMoiety>();
  ToMany<SubstanceDefinitionProperty>? property =
      ToMany<SubstanceDefinitionProperty>();
  ToMany<SubstanceDefinitionMolecularWeight>? molecularWeight =
      ToMany<SubstanceDefinitionMolecularWeight>();
  ToOne<SubstanceDefinitionStructure>? structure =
      ToOne<SubstanceDefinitionStructure>();
  ToMany<SubstanceDefinitionCode>? code = ToMany<SubstanceDefinitionCode>();
  ToMany<SubstanceDefinitionName>? name = ToMany<SubstanceDefinitionName>();
  ToMany<SubstanceDefinitionRelationship>? relationship =
      ToMany<SubstanceDefinitionRelationship>();
  ToOne<SubstanceDefinitionSourceMaterial>? sourceMaterial =
      ToOne<SubstanceDefinitionSourceMaterial>();
}

@Entity()
class SubstanceDefinitionMoiety {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  ToOne<CodeableConcept>? stereochemistry = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? opticalActivity = ToOne<CodeableConcept>();
  String? molecularFormula;
  ToOne<Element>? molecularFormulaElement = ToOne<Element>();
  ToOne<Quantity>? amountQuantity = ToOne<Quantity>();
  String? amountString;
  ToOne<Element>? amountStringElement = ToOne<Element>();
  ToOne<CodeableConcept>? measurementType = ToOne<CodeableConcept>();
}

@Entity()
class SubstanceDefinitionProperty {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  String? valueDate;
  ToOne<Element>? valueDateElement = ToOne<Element>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
}

@Entity()
class SubstanceDefinitionMolecularWeight {
  SubstanceDefinitionMolecularWeight({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.method,
    this.type,
    required this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity> amount = ToOne<Quantity>();
}

@Entity()
class SubstanceDefinitionStructure {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? stereochemistry = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? opticalActivity = ToOne<CodeableConcept>();
  String? molecularFormula;
  ToOne<Element>? molecularFormulaElement = ToOne<Element>();
  String? molecularFormulaByMoiety;
  ToOne<Element>? molecularFormulaByMoietyElement = ToOne<Element>();
  ToOne<SubstanceDefinitionMolecularWeight>? molecularWeight =
      ToOne<SubstanceDefinitionMolecularWeight>();
  ToMany<CodeableConcept>? technique = ToMany<CodeableConcept>();
  ToMany<Reference>? sourceDocument = ToMany<Reference>();
  ToMany<SubstanceDefinitionRepresentation>? representation =
      ToMany<SubstanceDefinitionRepresentation>();
}

@Entity()
class SubstanceDefinitionRepresentation {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? representation;
  ToOne<Element>? representationElement = ToOne<Element>();
  ToOne<CodeableConcept>? format = ToOne<CodeableConcept>();
  ToOne<Reference>? document = ToOne<Reference>();
}

@Entity()
class SubstanceDefinitionCode {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  String? statusDate;
  ToOne<Element>? statusDateElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Reference>? source = ToMany<Reference>();
}

@Entity()
class SubstanceDefinitionName {
  SubstanceDefinitionName({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  bool? preferred;
  ToOne<Element>? preferredElement = ToOne<Element>();
  ToMany<CodeableConcept>? language = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? domain = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  ToMany<SubstanceDefinitionName>? synonym = ToMany<SubstanceDefinitionName>();
  ToMany<SubstanceDefinitionName>? translation =
      ToMany<SubstanceDefinitionName>();
  ToMany<SubstanceDefinitionOfficial>? official =
      ToMany<SubstanceDefinitionOfficial>();
  ToMany<Reference>? source = ToMany<Reference>();
}

@Entity()
class SubstanceDefinitionOfficial {
  SubstanceDefinitionOfficial({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.dateElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? authority = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
}

@Entity()
class SubstanceDefinitionRelationship {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? substanceDefinitionReference = ToOne<Reference>();
  ToOne<CodeableConcept>? substanceDefinitionCodeableConcept =
      ToOne<CodeableConcept>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  bool? isDefining;
  ToOne<Element>? isDefiningElement = ToOne<Element>();
  ToOne<Quantity>? amountQuantity = ToOne<Quantity>();
  ToOne<Ratio>? amountRatio = ToOne<Ratio>();
  String? amountString;
  ToOne<Element>? amountStringElement = ToOne<Element>();
  ToOne<Ratio>? ratioHighLimitAmount = ToOne<Ratio>();
  ToOne<CodeableConcept>? comparator = ToOne<CodeableConcept>();
  ToMany<Reference>? source = ToMany<Reference>();
}

@Entity()
class SubstanceDefinitionSourceMaterial {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? genus = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? species = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? part_ = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? countryOfOrigin = ToMany<CodeableConcept>();
}
