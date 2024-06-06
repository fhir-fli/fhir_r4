import 'package:objectbox/objectbox.dart';
@Entity()
class MedicationStatementDbObject {
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
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> statusReason = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> medicationCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> medicationReference = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> context = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> effectiveDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> dateAsserted = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateAssertedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> informationSource = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> derivedFrom = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<DosageDbObject> dosage = ToMany<DosageDbObject>();
  MedicationStatementDbObject({required this.id});
}
