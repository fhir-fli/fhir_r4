import 'package:objectbox/objectbox.dart';
@Entity()
class AdministrableProductDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> formOf = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> administrableDoseForm = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> unitOfPresentation = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> producedFrom = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> ingredient = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> device = ToOne<ReferenceDbObject>();
  final ToMany<AdministrableProductDefinitionPropertyDbObject> property = ToMany<AdministrableProductDefinitionPropertyDbObject>();
required List<AdministrableProductDefinitionRouteOfAdministration>
routeOfAdministration,
  AdministrableProductDefinitionDbObject({required this.id});
}
@Entity()
class AdministrableProductDefinitionPropertyDbObject {
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
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  AdministrableProductDefinitionPropertyDbObject({required this.id});
}
@Entity()
class AdministrableProductDefinitionRouteOfAdministrationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> firstDose = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> maxSingleDose = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> maxDosePerDay = ToOne<QuantityDbObject>();
  final ToOne<RatioDbObject> maxDosePerTreatmentPeriod = ToOne<RatioDbObject>();
  final ToOne<FhirDurationDbObject> maxTreatmentPeriod = ToOne<FhirDurationDbObject>();
  final ToMany<AdministrableProductDefinitionTargetSpeciesDbObject> targetSpecies = ToMany<AdministrableProductDefinitionTargetSpeciesDbObject>();
  AdministrableProductDefinitionRouteOfAdministrationDbObject({required this.id});
}
@Entity()
class AdministrableProductDefinitionTargetSpeciesDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<AdministrableProductDefinitionWithdrawalPeriodDbObject> withdrawalPeriod = ToMany<AdministrableProductDefinitionWithdrawalPeriodDbObject>();
  AdministrableProductDefinitionTargetSpeciesDbObject({required this.id});
}
@Entity()
class AdministrableProductDefinitionWithdrawalPeriodDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> tissue = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> value = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> supportingInformation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> supportingInformationElement = ToOne<PrimitiveElementDbObject>();
  AdministrableProductDefinitionWithdrawalPeriodDbObject({required this.id});
}
