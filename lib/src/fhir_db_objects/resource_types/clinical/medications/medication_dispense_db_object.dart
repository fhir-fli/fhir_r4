import 'package:objectbox/objectbox.dart';
@Entity()
class MedicationDispenseDbObject {
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
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReasonCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> statusReasonReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> category = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> medicationCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> medicationReference = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> context = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingInformation = ToMany<ReferenceDbObject>();
  final ToMany<MedicationDispensePerformerDbObject> performer = ToMany<MedicationDispensePerformerDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> authorizingPrescription = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> daysSupply = ToOne<QuantityDbObject>();
  final ToOne<FhirDateTimeDbObject> whenPrepared = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> whenPreparedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> whenHandedOver = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> whenHandedOverElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> destination = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> receiver = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<DosageDbObject> dosageInstruction = ToMany<DosageDbObject>();
  final ToOne<MedicationDispenseSubstitutionDbObject> substitution = ToOne<MedicationDispenseSubstitutionDbObject>();
  final ToMany<ReferenceDbObject> detectedIssue = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> eventHistory = ToMany<ReferenceDbObject>();
  MedicationDispenseDbObject({required this.id});
}
@Entity()
class MedicationDispensePerformerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> function = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  MedicationDispensePerformerDbObject({required this.id});
}
@Entity()
class MedicationDispenseSubstitutionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> wasSubstituted = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> wasSubstitutedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> reason = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> responsibleParty = ToMany<ReferenceDbObject>();
  MedicationDispenseSubstitutionDbObject({required this.id});
}
