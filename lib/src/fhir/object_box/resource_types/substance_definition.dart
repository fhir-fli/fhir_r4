// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubstanceDefinition {
  ObjectBoxSubstanceDefinition({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? classification =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? domain = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? grade = ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? informationSource = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference>? manufacturer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? supplier = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxSubstanceDefinitionMoiety>? moiety =
      ToMany<ObjectBoxSubstanceDefinitionMoiety>();
  ToMany<ObjectBoxSubstanceDefinitionProperty>? property =
      ToMany<ObjectBoxSubstanceDefinitionProperty>();
  ToMany<ObjectBoxSubstanceDefinitionMolecularWeight>? molecularWeight =
      ToMany<ObjectBoxSubstanceDefinitionMolecularWeight>();
  ToOne<ObjectBoxSubstanceDefinitionStructure>? structure =
      ToOne<ObjectBoxSubstanceDefinitionStructure>();
  ToMany<ObjectBoxSubstanceDefinitionCode>? code =
      ToMany<ObjectBoxSubstanceDefinitionCode>();
  ToMany<ObjectBoxSubstanceDefinitionName>? name =
      ToMany<ObjectBoxSubstanceDefinitionName>();
  ToMany<ObjectBoxSubstanceDefinitionRelationship>? relationship =
      ToMany<ObjectBoxSubstanceDefinitionRelationship>();
  ToOne<ObjectBoxSubstanceDefinitionSourceMaterial>? sourceMaterial =
      ToOne<ObjectBoxSubstanceDefinitionSourceMaterial>();
}

@Entity()
class ObjectBoxSubstanceDefinitionMoiety {
  ObjectBoxSubstanceDefinitionMoiety({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? stereochemistry =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? opticalActivity =
      ToOne<ObjectBoxCodeableConcept>();
  String? molecularFormula;
  ToOne<ObjectBoxElement>? molecularFormulaElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? amountQuantity = ToOne<ObjectBoxQuantity>();
  String? amountString;
  ToOne<ObjectBoxElement>? amountStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? measurementType =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxSubstanceDefinitionProperty {
  ObjectBoxSubstanceDefinitionProperty({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxSubstanceDefinitionMolecularWeight {
  ObjectBoxSubstanceDefinitionMolecularWeight({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> amount = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxSubstanceDefinitionStructure {
  ObjectBoxSubstanceDefinitionStructure({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? stereochemistry =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? opticalActivity =
      ToOne<ObjectBoxCodeableConcept>();
  String? molecularFormula;
  ToOne<ObjectBoxElement>? molecularFormulaElement = ToOne<ObjectBoxElement>();
  String? molecularFormulaByMoiety;
  ToOne<ObjectBoxElement>? molecularFormulaByMoietyElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSubstanceDefinitionMolecularWeight>? molecularWeight =
      ToOne<ObjectBoxSubstanceDefinitionMolecularWeight>();
  ToMany<ObjectBoxCodeableConcept>? technique =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? sourceDocument = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxSubstanceDefinitionRepresentation>? representation =
      ToMany<ObjectBoxSubstanceDefinitionRepresentation>();
}

@Entity()
class ObjectBoxSubstanceDefinitionRepresentation {
  ObjectBoxSubstanceDefinitionRepresentation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? representation;
  ToOne<ObjectBoxElement>? representationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? format = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? document = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionCode {
  ObjectBoxSubstanceDefinitionCode({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement>? statusDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference>? source = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionName {
  ObjectBoxSubstanceDefinitionName({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  bool? preferred;
  ToOne<ObjectBoxElement>? preferredElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? language =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? domain = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxSubstanceDefinitionName>? synonym =
      ToMany<ObjectBoxSubstanceDefinitionName>();
  ToMany<ObjectBoxSubstanceDefinitionName>? translation =
      ToMany<ObjectBoxSubstanceDefinitionName>();
  ToMany<ObjectBoxSubstanceDefinitionOfficial>? official =
      ToMany<ObjectBoxSubstanceDefinitionOfficial>();
  ToMany<ObjectBoxReference>? source = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionOfficial {
  ObjectBoxSubstanceDefinitionOfficial({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? authority =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubstanceDefinitionRelationship {
  ObjectBoxSubstanceDefinitionRelationship({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? substanceDefinitionReference =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? substanceDefinitionCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  bool? isDefining;
  ToOne<ObjectBoxElement>? isDefiningElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? amountQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio>? amountRatio = ToOne<ObjectBoxRatio>();
  String? amountString;
  ToOne<ObjectBoxElement>? amountStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio>? ratioHighLimitAmount = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxCodeableConcept>? comparator =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? source = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionSourceMaterial {
  ObjectBoxSubstanceDefinitionSourceMaterial({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? genus = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? species = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? part_ = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? countryOfOrigin =
      ToMany<ObjectBoxCodeableConcept>();
}
