// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicinalProductDefinition {
  ObjectBoxMedicinalProductDefinition({
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
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? domain,
    this.version,
    ObjectBoxElement? versionElement,
    ObjectBoxCodeableConcept? status,
    this.statusDate,
    ObjectBoxElement? statusDateElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? combinedPharmaceuticalDoseForm,
    List<ObjectBoxCodeableConcept>? route,
    this.indication,
    ObjectBoxElement? indicationElement,
    ObjectBoxCodeableConcept? legalStatusOfSupply,
    ObjectBoxCodeableConcept? additionalMonitoringIndicator,
    List<ObjectBoxCodeableConcept>? specialMeasures,
    ObjectBoxCodeableConcept? pediatricUseIndicator,
    List<ObjectBoxCodeableConcept>? classification,
    List<ObjectBoxMarketingStatus>? marketingStatus,
    List<ObjectBoxCodeableConcept>? packagedMedicinalProduct,
    List<ObjectBoxCodeableConcept>? ingredient,
    List<ObjectBoxCodeableReference>? impurity,
    List<ObjectBoxReference>? attachedDocument,
    List<ObjectBoxReference>? masterFile,
    List<ObjectBoxMedicinalProductDefinitionContact>? contact,
    List<ObjectBoxReference>? clinicalTrial,
    List<ObjectBoxCoding>? code,
    List<ObjectBoxMedicinalProductDefinitionName>? name,
    List<ObjectBoxMedicinalProductDefinitionCrossReference>? crossReference,
    List<ObjectBoxMedicinalProductDefinitionOperation>? operation,
    List<ObjectBoxMedicinalProductDefinitionCharacteristic>? characteristic,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.type.target = type;
    this.domain.target = domain;
    this.versionElement.target = versionElement;
    this.status.target = status;
    this.statusDateElement.target = statusDateElement;
    this.descriptionElement.target = descriptionElement;
    this.combinedPharmaceuticalDoseForm.target = combinedPharmaceuticalDoseForm;
    this.route.addAll(route ?? []);
    this.indicationElement.target = indicationElement;
    this.legalStatusOfSupply.target = legalStatusOfSupply;
    this.additionalMonitoringIndicator.target = additionalMonitoringIndicator;
    this.specialMeasures.addAll(specialMeasures ?? []);
    this.pediatricUseIndicator.target = pediatricUseIndicator;
    this.classification.addAll(classification ?? []);
    this.marketingStatus.addAll(marketingStatus ?? []);
    this.packagedMedicinalProduct.addAll(packagedMedicinalProduct ?? []);
    this.ingredient.addAll(ingredient ?? []);
    this.impurity.addAll(impurity ?? []);
    this.attachedDocument.addAll(attachedDocument ?? []);
    this.masterFile.addAll(masterFile ?? []);
    this.contact.addAll(contact ?? []);
    this.clinicalTrial.addAll(clinicalTrial ?? []);
    this.code.addAll(code ?? []);
    this.name.addAll(name ?? []);
    this.crossReference.addAll(crossReference ?? []);
    this.operation.addAll(operation ?? []);
    this.characteristic.addAll(characteristic ?? []);
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
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> domain = ToOne<ObjectBoxCodeableConcept>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement> statusDateElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> combinedPharmaceuticalDoseForm =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> route = ToMany<ObjectBoxCodeableConcept>();
  String? indication;
  ToOne<ObjectBoxElement> indicationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> legalStatusOfSupply =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> additionalMonitoringIndicator =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialMeasures =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> pediatricUseIndicator =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> classification =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMarketingStatus> marketingStatus =
      ToMany<ObjectBoxMarketingStatus>();
  ToMany<ObjectBoxCodeableConcept> packagedMedicinalProduct =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> ingredient =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableReference> impurity =
      ToMany<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxReference> attachedDocument = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> masterFile = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMedicinalProductDefinitionContact> contact =
      ToMany<ObjectBoxMedicinalProductDefinitionContact>();
  ToMany<ObjectBoxReference> clinicalTrial = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCoding> code = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxMedicinalProductDefinitionName> name =
      ToMany<ObjectBoxMedicinalProductDefinitionName>();
  ToMany<ObjectBoxMedicinalProductDefinitionCrossReference> crossReference =
      ToMany<ObjectBoxMedicinalProductDefinitionCrossReference>();
  ToMany<ObjectBoxMedicinalProductDefinitionOperation> operation =
      ToMany<ObjectBoxMedicinalProductDefinitionOperation>();
  ToMany<ObjectBoxMedicinalProductDefinitionCharacteristic> characteristic =
      ToMany<ObjectBoxMedicinalProductDefinitionCharacteristic>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionContact {
  ObjectBoxMedicinalProductDefinitionContact({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? contact,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.contact.target = contact;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> contact = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionName {
  ObjectBoxMedicinalProductDefinitionName({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.productName,
    ObjectBoxElement? productNameElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxMedicinalProductDefinitionNamePart>? namePart,
    List<ObjectBoxMedicinalProductDefinitionCountryLanguage>? countryLanguage,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.productNameElement.target = productNameElement;
    this.type.target = type;
    this.namePart.addAll(namePart ?? []);
    this.countryLanguage.addAll(countryLanguage ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String productName;
  ToOne<ObjectBoxElement> productNameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMedicinalProductDefinitionNamePart> namePart =
      ToMany<ObjectBoxMedicinalProductDefinitionNamePart>();
  ToMany<ObjectBoxMedicinalProductDefinitionCountryLanguage> countryLanguage =
      ToMany<ObjectBoxMedicinalProductDefinitionCountryLanguage>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionNamePart {
  ObjectBoxMedicinalProductDefinitionNamePart({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.part_,
    ObjectBoxElement? partElement,
    ObjectBoxCodeableConcept? type,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.partElement.target = partElement;
    this.type.target = type;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String part_;
  ToOne<ObjectBoxElement> partElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionCountryLanguage {
  ObjectBoxMedicinalProductDefinitionCountryLanguage({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? country,
    ObjectBoxCodeableConcept? jurisdiction,
    ObjectBoxCodeableConcept? language,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.country.target = country;
    this.jurisdiction.target = jurisdiction;
    this.language.target = language;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> country = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> jurisdiction =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionCrossReference {
  ObjectBoxMedicinalProductDefinitionCrossReference({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? product,
    ObjectBoxCodeableConcept? type,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.product.target = product;
    this.type.target = type;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> product =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionOperation {
  ObjectBoxMedicinalProductDefinitionOperation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? type,
    ObjectBoxPeriod? effectiveDate,
    List<ObjectBoxReference>? organization,
    ObjectBoxCodeableConcept? confidentialityIndicator,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.effectiveDate.target = effectiveDate;
    this.organization.addAll(organization ?? []);
    this.confidentialityIndicator.target = confidentialityIndicator;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> type = ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxPeriod> effectiveDate = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference> organization = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> confidentialityIndicator =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionCharacteristic {
  ObjectBoxMedicinalProductDefinitionCharacteristic({
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
