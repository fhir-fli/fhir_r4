import 'package:objectbox/objectbox.dart';
@Entity()
class MedicationAdministrationDbObject {
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
  final ToMany<FhirUriDbObject> instantiates = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> statusReason = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> medicationCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> medicationReference = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> context = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingInformation = ToMany<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> effectiveDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<MedicationAdministrationPerformerDbObject> performer = ToMany<MedicationAdministrationPerformerDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> request = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> device = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<MedicationAdministrationDosageDbObject> dosage = ToOne<MedicationAdministrationDosageDbObject>();
  final ToMany<ReferenceDbObject> eventHistory = ToMany<ReferenceDbObject>();
  MedicationAdministrationDbObject({required this.id});
}
@Entity()
class MedicationAdministrationPerformerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> function = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  MedicationAdministrationPerformerDbObject({required this.id});
}
@Entity()
class MedicationAdministrationDosageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> site = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> route = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> method = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> dose = ToOne<QuantityDbObject>();
  final ToOne<RatioDbObject> rateRatio = ToOne<RatioDbObject>();
  final ToOne<QuantityDbObject> rateQuantity = ToOne<QuantityDbObject>();
  MedicationAdministrationDosageDbObject({required this.id});
}
