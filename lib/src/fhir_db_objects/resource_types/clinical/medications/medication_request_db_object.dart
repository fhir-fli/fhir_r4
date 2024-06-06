import 'package:objectbox/objectbox.dart';
@Entity()
class MedicationRequestDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReason = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> intent = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> intentElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> doNotPerform = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> doNotPerformElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> reportedBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> reportedBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> reportedReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> medicationCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> medicationReference = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingInformation = ToMany<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> authoredOn = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> authoredOnElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> requester = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> performer = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> performerType = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> recorder = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical = ToMany<FhirCanonicalDbObject>();
  final ToMany<ElementDbObject> instantiatesCanonicalElement = ToMany<ElementDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToOne<IdentifierDbObject> groupIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> courseOfTherapyType = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> insurance = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<DosageDbObject> dosageInstruction = ToMany<DosageDbObject>();
  final ToOne<MedicationRequestDispenseRequestDbObject> dispenseRequest = ToOne<MedicationRequestDispenseRequestDbObject>();
  final ToOne<MedicationRequestSubstitutionDbObject> substitution = ToOne<MedicationRequestSubstitutionDbObject>();
  final ToOne<ReferenceDbObject> priorPrescription = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> detectedIssue = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> eventHistory = ToMany<ReferenceDbObject>();
  MedicationRequestDbObject({required this.id});
}
@Entity()
class MedicationRequestDispenseRequestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<MedicationRequestInitialFillDbObject> initialFill = ToOne<MedicationRequestInitialFillDbObject>();
  final ToOne<FhirDurationDbObject> dispenseInterval = ToOne<FhirDurationDbObject>();
  final ToOne<PeriodDbObject> validityPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfRepeatsAllowed = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfRepeatsAllowedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDurationDbObject> expectedSupplyDuration = ToOne<FhirDurationDbObject>();
  final ToOne<ReferenceDbObject> performer = ToOne<ReferenceDbObject>();
  MedicationRequestDispenseRequestDbObject({required this.id});
}
@Entity()
class MedicationRequestInitialFillDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDurationDbObject> duration = ToOne<FhirDurationDbObject>();
  MedicationRequestInitialFillDbObject({required this.id});
}
@Entity()
class MedicationRequestSubstitutionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> allowedBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> allowedBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> allowedCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> reason = ToOne<CodeableConceptDbObject>();
  MedicationRequestSubstitutionDbObject({required this.id});
}
