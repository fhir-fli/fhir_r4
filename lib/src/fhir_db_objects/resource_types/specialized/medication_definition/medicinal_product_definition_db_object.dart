import 'package:objectbox/objectbox.dart';
@Entity()
class MedicinalProductDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> domain = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> statusDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> combinedPharmaceuticalDoseForm = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> route = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> indication = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> indicationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> legalStatusOfSupply = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> additionalMonitoringIndicator = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialMeasures = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> pediatricUseIndicator = ToOne<CodeableConceptDbObject>();
@Entity()
class classification,DbObject {
  @Id(assignable: true)
  int id;
  final ToMany<MarketingStatusDbObject> marketingStatus = ToMany<MarketingStatusDbObject>();
  final ToMany<CodeableConceptDbObject> packagedMedicinalProduct = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> ingredient = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableReferenceDbObject> impurity = ToMany<CodeableReferenceDbObject>();
  final ToMany<ReferenceDbObject> attachedDocument = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> masterFile = ToMany<ReferenceDbObject>();
  final ToMany<MedicinalProductDefinitionContactDbObject> contact = ToMany<MedicinalProductDefinitionContactDbObject>();
  final ToMany<ReferenceDbObject> clinicalTrial = ToMany<ReferenceDbObject>();
  final ToMany<CodingDbObject> code = ToMany<CodingDbObject>();
  final ToMany<MedicinalProductDefinitionNameDbObject> name = ToMany<MedicinalProductDefinitionNameDbObject>();
  final ToMany<MedicinalProductDefinitionCrossReferenceDbObject> crossReference = ToMany<MedicinalProductDefinitionCrossReferenceDbObject>();
  final ToMany<MedicinalProductDefinitionOperationDbObject> operation = ToMany<MedicinalProductDefinitionOperationDbObject>();
  final ToMany<MedicinalProductDefinitionCharacteristicDbObject> characteristic = ToMany<MedicinalProductDefinitionCharacteristicDbObject>();
  classification,DbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionContactDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> contact = ToOne<ReferenceDbObject>();
  MedicinalProductDefinitionContactDbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionNameDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> productName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> productNameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<MedicinalProductDefinitionNamePartDbObject> namePart = ToMany<MedicinalProductDefinitionNamePartDbObject>();
  final ToMany<MedicinalProductDefinitionCountryLanguageDbObject> countryLanguage = ToMany<MedicinalProductDefinitionCountryLanguageDbObject>();
  MedicinalProductDefinitionNameDbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionNamePartDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> part_ = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> partElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  MedicinalProductDefinitionNamePartDbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionCountryLanguageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> country = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> jurisdiction = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> language = ToOne<CodeableConceptDbObject>();
  MedicinalProductDefinitionCountryLanguageDbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionCrossReferenceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> product = ToOne<CodeableReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  MedicinalProductDefinitionCrossReferenceDbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionOperationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> type = ToOne<CodeableReferenceDbObject>();
  final ToOne<PeriodDbObject> effectiveDate = ToOne<PeriodDbObject>();
  final ToMany<ReferenceDbObject> organization = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> confidentialityIndicator = ToOne<CodeableConceptDbObject>();
  MedicinalProductDefinitionOperationDbObject({required this.id});
}
@Entity()
class MedicinalProductDefinitionCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDateDbObject> valueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  MedicinalProductDefinitionCharacteristicDbObject({required this.id});
}
