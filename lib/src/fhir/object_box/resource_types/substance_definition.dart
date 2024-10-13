// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubstanceDefinition {
  ObjectBoxSubstanceDefinition({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    ObjectBoxCodeableConcept? status,
    List<ObjectBoxCodeableConcept>? classification,
    ObjectBoxCodeableConcept? domain,
    List<ObjectBoxCodeableConcept>? grade,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxReference>? informationSource,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxReference>? manufacturer,
    List<ObjectBoxReference>? supplier,
    List<ObjectBoxSubstanceDefinitionMoiety>? moiety,
    List<ObjectBoxSubstanceDefinitionProperty>? property,
    List<ObjectBoxSubstanceDefinitionMolecularWeight>? molecularWeight,
    ObjectBoxSubstanceDefinitionStructure? structure,
    List<ObjectBoxSubstanceDefinitionCode>? code,
    List<ObjectBoxSubstanceDefinitionName>? name,
    List<ObjectBoxSubstanceDefinitionRelationship>? relationship,
    ObjectBoxSubstanceDefinitionSourceMaterial? sourceMaterial,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.status.target = status;
    this.classification.addAll(classification ?? []);
    this.domain.target = domain;
    this.grade.addAll(grade ?? []);
    this.descriptionElement.target = descriptionElement;
    this.informationSource.addAll(informationSource ?? []);
    this.note.addAll(note ?? []);
    this.manufacturer.addAll(manufacturer ?? []);
    this.supplier.addAll(supplier ?? []);
    this.moiety.addAll(moiety ?? []);
    this.property.addAll(property ?? []);
    this.molecularWeight.addAll(molecularWeight ?? []);
    this.structure.target = structure;
    this.code.addAll(code ?? []);
    this.name.addAll(name ?? []);
    this.relationship.addAll(relationship ?? []);
    this.sourceMaterial.target = sourceMaterial;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> classification =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> domain = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> grade = ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> informationSource = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference> manufacturer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supplier = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxSubstanceDefinitionMoiety> moiety =
      ToMany<ObjectBoxSubstanceDefinitionMoiety>();
  ToMany<ObjectBoxSubstanceDefinitionProperty> property =
      ToMany<ObjectBoxSubstanceDefinitionProperty>();
  ToMany<ObjectBoxSubstanceDefinitionMolecularWeight> molecularWeight =
      ToMany<ObjectBoxSubstanceDefinitionMolecularWeight>();
  ToOne<ObjectBoxSubstanceDefinitionStructure> structure =
      ToOne<ObjectBoxSubstanceDefinitionStructure>();
  ToMany<ObjectBoxSubstanceDefinitionCode> code =
      ToMany<ObjectBoxSubstanceDefinitionCode>();
  ToMany<ObjectBoxSubstanceDefinitionName> name =
      ToMany<ObjectBoxSubstanceDefinitionName>();
  ToMany<ObjectBoxSubstanceDefinitionRelationship> relationship =
      ToMany<ObjectBoxSubstanceDefinitionRelationship>();
  ToOne<ObjectBoxSubstanceDefinitionSourceMaterial> sourceMaterial =
      ToOne<ObjectBoxSubstanceDefinitionSourceMaterial>();
}

@Entity()
class ObjectBoxSubstanceDefinitionMoiety {
  ObjectBoxSubstanceDefinitionMoiety({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? role,
    ObjectBoxIdentifier? identifier,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? stereochemistry,
    ObjectBoxCodeableConcept? opticalActivity,
    this.molecularFormula,
    ObjectBoxElement? molecularFormulaElement,
    ObjectBoxQuantity? amountQuantity,
    this.amountString,
    ObjectBoxElement? amountStringElement,
    ObjectBoxCodeableConcept? measurementType,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.role.target = role;
    this.identifier.target = identifier;
    this.nameElement.target = nameElement;
    this.stereochemistry.target = stereochemistry;
    this.opticalActivity.target = opticalActivity;
    this.molecularFormulaElement.target = molecularFormulaElement;
    this.amountQuantity.target = amountQuantity;
    this.amountStringElement.target = amountStringElement;
    this.measurementType.target = measurementType;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> stereochemistry =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> opticalActivity =
      ToOne<ObjectBoxCodeableConcept>();
  String? molecularFormula;
  ToOne<ObjectBoxElement> molecularFormulaElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> amountQuantity = ToOne<ObjectBoxQuantity>();
  String? amountString;
  ToOne<ObjectBoxElement> amountStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> measurementType =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxSubstanceDefinitionProperty {
  ObjectBoxSubstanceDefinitionProperty({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    ObjectBoxAttachment? valueAttachment,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueDateElement.target = valueDateElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueAttachment.target = valueAttachment;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxSubstanceDefinitionMolecularWeight {
  ObjectBoxSubstanceDefinitionMolecularWeight({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? method,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? amount,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.method.target = method;
    this.type.target = type;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> amount = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxSubstanceDefinitionStructure {
  ObjectBoxSubstanceDefinitionStructure({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? stereochemistry,
    ObjectBoxCodeableConcept? opticalActivity,
    this.molecularFormula,
    ObjectBoxElement? molecularFormulaElement,
    this.molecularFormulaByMoiety,
    ObjectBoxElement? molecularFormulaByMoietyElement,
    ObjectBoxSubstanceDefinitionMolecularWeight? molecularWeight,
    List<ObjectBoxCodeableConcept>? technique,
    List<ObjectBoxReference>? sourceDocument,
    List<ObjectBoxSubstanceDefinitionRepresentation>? representation,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.stereochemistry.target = stereochemistry;
    this.opticalActivity.target = opticalActivity;
    this.molecularFormulaElement.target = molecularFormulaElement;
    this.molecularFormulaByMoietyElement.target =
        molecularFormulaByMoietyElement;
    this.molecularWeight.target = molecularWeight;
    this.technique.addAll(technique ?? []);
    this.sourceDocument.addAll(sourceDocument ?? []);
    this.representation.addAll(representation ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> stereochemistry =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> opticalActivity =
      ToOne<ObjectBoxCodeableConcept>();
  String? molecularFormula;
  ToOne<ObjectBoxElement> molecularFormulaElement = ToOne<ObjectBoxElement>();
  String? molecularFormulaByMoiety;
  ToOne<ObjectBoxElement> molecularFormulaByMoietyElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSubstanceDefinitionMolecularWeight> molecularWeight =
      ToOne<ObjectBoxSubstanceDefinitionMolecularWeight>();
  ToMany<ObjectBoxCodeableConcept> technique =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> sourceDocument = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxSubstanceDefinitionRepresentation> representation =
      ToMany<ObjectBoxSubstanceDefinitionRepresentation>();
}

@Entity()
class ObjectBoxSubstanceDefinitionRepresentation {
  ObjectBoxSubstanceDefinitionRepresentation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.representation,
    ObjectBoxElement? representationElement,
    ObjectBoxCodeableConcept? format,
    ObjectBoxReference? document,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.representationElement.target = representationElement;
    this.format.target = format;
    this.document.target = document;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? representation;
  ToOne<ObjectBoxElement> representationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> format = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> document = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionCode {
  ObjectBoxSubstanceDefinitionCode({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? status,
    this.statusDate,
    ObjectBoxElement? statusDateElement,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxReference>? source,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.status.target = status;
    this.statusDateElement.target = statusDateElement;
    this.note.addAll(note ?? []);
    this.source.addAll(source ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement> statusDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference> source = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionName {
  ObjectBoxSubstanceDefinitionName({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? status,
    this.preferred,
    ObjectBoxElement? preferredElement,
    List<ObjectBoxCodeableConcept>? language,
    List<ObjectBoxCodeableConcept>? domain,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    List<ObjectBoxSubstanceDefinitionName>? synonym,
    List<ObjectBoxSubstanceDefinitionName>? translation,
    List<ObjectBoxSubstanceDefinitionOfficial>? official,
    List<ObjectBoxReference>? source,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.type.target = type;
    this.status.target = status;
    this.preferredElement.target = preferredElement;
    this.language.addAll(language ?? []);
    this.domain.addAll(domain ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.synonym.addAll(synonym ?? []);
    this.translation.addAll(translation ?? []);
    this.official.addAll(official ?? []);
    this.source.addAll(source ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  bool? preferred;
  ToOne<ObjectBoxElement> preferredElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> language =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> domain = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxSubstanceDefinitionName> synonym =
      ToMany<ObjectBoxSubstanceDefinitionName>();
  ToMany<ObjectBoxSubstanceDefinitionName> translation =
      ToMany<ObjectBoxSubstanceDefinitionName>();
  ToMany<ObjectBoxSubstanceDefinitionOfficial> official =
      ToMany<ObjectBoxSubstanceDefinitionOfficial>();
  ToMany<ObjectBoxReference> source = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionOfficial {
  ObjectBoxSubstanceDefinitionOfficial({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? authority,
    ObjectBoxCodeableConcept? status,
    this.date,
    ObjectBoxElement? dateElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.authority.target = authority;
    this.status.target = status;
    this.dateElement.target = dateElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> authority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubstanceDefinitionRelationship {
  ObjectBoxSubstanceDefinitionRelationship({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? substanceDefinitionReference,
    ObjectBoxCodeableConcept? substanceDefinitionCodeableConcept,
    ObjectBoxCodeableConcept? type,
    this.isDefining,
    ObjectBoxElement? isDefiningElement,
    ObjectBoxQuantity? amountQuantity,
    ObjectBoxRatio? amountRatio,
    this.amountString,
    ObjectBoxElement? amountStringElement,
    ObjectBoxRatio? ratioHighLimitAmount,
    ObjectBoxCodeableConcept? comparator,
    List<ObjectBoxReference>? source,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.substanceDefinitionReference.target = substanceDefinitionReference;
    this.substanceDefinitionCodeableConcept.target =
        substanceDefinitionCodeableConcept;
    this.type.target = type;
    this.isDefiningElement.target = isDefiningElement;
    this.amountQuantity.target = amountQuantity;
    this.amountRatio.target = amountRatio;
    this.amountStringElement.target = amountStringElement;
    this.ratioHighLimitAmount.target = ratioHighLimitAmount;
    this.comparator.target = comparator;
    this.source.addAll(source ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> substanceDefinitionReference =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> substanceDefinitionCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  bool? isDefining;
  ToOne<ObjectBoxElement> isDefiningElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> amountQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio> amountRatio = ToOne<ObjectBoxRatio>();
  String? amountString;
  ToOne<ObjectBoxElement> amountStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio> ratioHighLimitAmount = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxCodeableConcept> comparator =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> source = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxSubstanceDefinitionSourceMaterial {
  ObjectBoxSubstanceDefinitionSourceMaterial({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? genus,
    ObjectBoxCodeableConcept? species,
    ObjectBoxCodeableConcept? part_,
    List<ObjectBoxCodeableConcept>? countryOfOrigin,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.genus.target = genus;
    this.species.target = species;
    this.part_.target = part_;
    this.countryOfOrigin.addAll(countryOfOrigin ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> genus = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> species = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> part_ = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> countryOfOrigin =
      ToMany<ObjectBoxCodeableConcept>();
}
