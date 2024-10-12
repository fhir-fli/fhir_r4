// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicinalProductDefinition {
  ObjectBoxMedicinalProductDefinition({
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
    this.type,
    this.domain,
    this.version,
    this.versionElement,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.description,
    this.descriptionElement,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,
    this.indicationElement,
    this.legalStatusOfSupply,
    this.additionalMonitoringIndicator,
    this.specialMeasures,
    this.pediatricUseIndicator,
    this.classification,
    this.marketingStatus,
    this.packagedMedicinalProduct,
    this.ingredient,
    this.impurity,
    this.attachedDocument,
    this.masterFile,
    this.contact,
    this.clinicalTrial,
    this.code,
    required this.name,
    this.crossReference,
    this.operation,
    this.characteristic,
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
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? domain = ToOne<ObjectBoxCodeableConcept>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement>? statusDateElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? combinedPharmaceuticalDoseForm =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? route = ToMany<ObjectBoxCodeableConcept>();
  String? indication;
  ToOne<ObjectBoxElement>? indicationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? legalStatusOfSupply =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? additionalMonitoringIndicator =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? specialMeasures =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? pediatricUseIndicator =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? classification =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMarketingStatus>? marketingStatus =
      ToMany<ObjectBoxMarketingStatus>();
  ToMany<ObjectBoxCodeableConcept>? packagedMedicinalProduct =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? ingredient =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableReference>? impurity =
      ToMany<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxReference>? attachedDocument = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? masterFile = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMedicinalProductDefinitionContact>? contact =
      ToMany<ObjectBoxMedicinalProductDefinitionContact>();
  ToMany<ObjectBoxReference>? clinicalTrial = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCoding>? code = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxMedicinalProductDefinitionName> name =
      ToMany<ObjectBoxMedicinalProductDefinitionName>();
  ToMany<ObjectBoxMedicinalProductDefinitionCrossReference>? crossReference =
      ToMany<ObjectBoxMedicinalProductDefinitionCrossReference>();
  ToMany<ObjectBoxMedicinalProductDefinitionOperation>? operation =
      ToMany<ObjectBoxMedicinalProductDefinitionOperation>();
  ToMany<ObjectBoxMedicinalProductDefinitionCharacteristic>? characteristic =
      ToMany<ObjectBoxMedicinalProductDefinitionCharacteristic>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionContact {
  ObjectBoxMedicinalProductDefinitionContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    required this.contact,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> contact = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionName {
  ObjectBoxMedicinalProductDefinitionName({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.productName,
    this.productNameElement,
    this.type,
    this.namePart,
    this.countryLanguage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String productName;
  ToOne<ObjectBoxElement>? productNameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxMedicinalProductDefinitionNamePart>? namePart =
      ToMany<ObjectBoxMedicinalProductDefinitionNamePart>();
  ToMany<ObjectBoxMedicinalProductDefinitionCountryLanguage>? countryLanguage =
      ToMany<ObjectBoxMedicinalProductDefinitionCountryLanguage>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionNamePart {
  ObjectBoxMedicinalProductDefinitionNamePart({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.part_,
    this.partElement,
    required this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String part_;
  ToOne<ObjectBoxElement>? partElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionCountryLanguage {
  ObjectBoxMedicinalProductDefinitionCountryLanguage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.country,
    this.jurisdiction,
    required this.language,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> country = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? jurisdiction =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionCrossReference {
  ObjectBoxMedicinalProductDefinitionCrossReference({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.product,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> product =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionOperation {
  ObjectBoxMedicinalProductDefinitionOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference>? type = ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxPeriod>? effectiveDate = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference>? organization = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? confidentialityIndicator =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxMedicinalProductDefinitionCharacteristic {
  ObjectBoxMedicinalProductDefinitionCharacteristic({
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
