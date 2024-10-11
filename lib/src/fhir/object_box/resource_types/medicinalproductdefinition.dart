import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class MedicinalProductDefinition extends Resource {
  MedicinalProductDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.domain,
    this.version,
    this.status,
    this.statusDate,
    this.description,
    this.combinedPharmaceuticalDoseForm,
    this.route,
    this.indication,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? domain = ToOne<CodeableConcept>();
  String? version;
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  String? statusDate;
  String? description;
  ToOne<CodeableConcept>? combinedPharmaceuticalDoseForm =
      ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? route = ToMany<CodeableConcept>();
  String? indication;
  ToOne<CodeableConcept>? legalStatusOfSupply = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? additionalMonitoringIndicator =
      ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? specialMeasures = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? pediatricUseIndicator = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? classification = ToMany<CodeableConcept>();
  ToMany<MarketingStatus>? marketingStatus = ToMany<MarketingStatus>();
  ToMany<CodeableConcept>? packagedMedicinalProduct = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? ingredient = ToMany<CodeableConcept>();
  ToMany<CodeableReference>? impurity = ToMany<CodeableReference>();
  ToMany<Reference>? attachedDocument = ToMany<Reference>();
  ToMany<Reference>? masterFile = ToMany<Reference>();
  ToMany<MedicinalProductDefinitionContact>? contact =
      ToMany<MedicinalProductDefinitionContact>();
  ToMany<Reference>? clinicalTrial = ToMany<Reference>();
  ToMany<Coding>? code = ToMany<Coding>();
  ToMany<MedicinalProductDefinitionName> name =
      ToMany<MedicinalProductDefinitionName>();
  ToMany<MedicinalProductDefinitionCrossReference>? crossReference =
      ToMany<MedicinalProductDefinitionCrossReference>();
  ToMany<MedicinalProductDefinitionOperation>? operation =
      ToMany<MedicinalProductDefinitionOperation>();
  ToMany<MedicinalProductDefinitionCharacteristic>? characteristic =
      ToMany<MedicinalProductDefinitionCharacteristic>();
}

@Entity()
class MedicinalProductDefinitionContact {
  MedicinalProductDefinitionContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    required this.contact,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference> contact = ToOne<Reference>();
}

@Entity()
class MedicinalProductDefinitionName {
  MedicinalProductDefinitionName({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.productName,
    this.type,
    this.namePart,
    this.countryLanguage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String productName;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<MedicinalProductDefinitionNamePart>? namePart =
      ToMany<MedicinalProductDefinitionNamePart>();
  ToMany<MedicinalProductDefinitionCountryLanguage>? countryLanguage =
      ToMany<MedicinalProductDefinitionCountryLanguage>();
}

@Entity()
class MedicinalProductDefinitionNamePart {
  MedicinalProductDefinitionNamePart({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.part_,
    required this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String part_;
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
}

@Entity()
class MedicinalProductDefinitionCountryLanguage {
  MedicinalProductDefinitionCountryLanguage({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> country = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? jurisdiction = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> language = ToOne<CodeableConcept>();
}

@Entity()
class MedicinalProductDefinitionCrossReference {
  MedicinalProductDefinitionCrossReference({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.product,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference> product = ToOne<CodeableReference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
}

@Entity()
class MedicinalProductDefinitionOperation {
  MedicinalProductDefinitionOperation({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference>? type = ToOne<CodeableReference>();
  ToOne<Period>? effectiveDate = ToOne<Period>();
  ToMany<Reference>? organization = ToMany<Reference>();
  ToOne<CodeableConcept>? confidentialityIndicator = ToOne<CodeableConcept>();
}

@Entity()
class MedicinalProductDefinitionCharacteristic {
  MedicinalProductDefinitionCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueBoolean,
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
  bool? valueBoolean;
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
}
