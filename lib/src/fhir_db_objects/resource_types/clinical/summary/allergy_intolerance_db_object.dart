import 'package:objectbox/objectbox.dart';
@Entity()
class AllergyIntoleranceDbObject {
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
  final ToOne<CodeableConceptDbObject> clinicalStatus = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> verificationStatus = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> category = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> categoryElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> criticality = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> criticalityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> onsetDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> onsetDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> onsetAge = ToOne<AgeDbObject>();
  final ToOne<PeriodDbObject> onsetPeriod = ToOne<PeriodDbObject>();
  final ToOne<RangeDbObject> onsetRange = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> onsetString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> onsetStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> recordedDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> recorder = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> asserter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> lastOccurrence = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> lastOccurrenceElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<AllergyIntoleranceReactionDbObject> reaction = ToMany<AllergyIntoleranceReactionDbObject>();
  AllergyIntoleranceDbObject({required this.id});
}
@Entity()
class AllergyIntoleranceReactionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> substance = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> manifestation = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> onset = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> onsetElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> severity = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> severityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> exposureRoute = ToOne<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  AllergyIntoleranceReactionDbObject({required this.id});
}
