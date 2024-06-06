import 'package:objectbox/objectbox.dart';
@Entity()
class ImmunizationDbObject {
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
  final ToOne<CodeableConceptDbObject> vaccineCode = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> occurrenceString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> recorded = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> primarySource = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> primarySourceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> reportOrigin = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> manufacturer = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> lotNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> lotNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> expirationDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> expirationDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> site = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> route = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> doseQuantity = ToOne<QuantityDbObject>();
  final ToMany<ImmunizationPerformerDbObject> performer = ToMany<ImmunizationPerformerDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> isSubpotent = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isSubpotentElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> subpotentReason = ToMany<CodeableConceptDbObject>();
  final ToMany<ImmunizationEducationDbObject> education = ToMany<ImmunizationEducationDbObject>();
  final ToMany<CodeableConceptDbObject> programEligibility = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> fundingSource = ToOne<CodeableConceptDbObject>();
  final ToMany<ImmunizationReactionDbObject> reaction = ToMany<ImmunizationReactionDbObject>();
  final ToMany<ImmunizationProtocolAppliedDbObject> protocolApplied = ToMany<ImmunizationProtocolAppliedDbObject>();
  ImmunizationDbObject({required this.id});
}
@Entity()
class ImmunizationPerformerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> function = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  ImmunizationPerformerDbObject({required this.id});
}
@Entity()
class ImmunizationEducationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> documentType = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentTypeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> reference = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> referenceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> publicationDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> publicationDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> presentationDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> presentationDateElement = ToOne<PrimitiveElementDbObject>();
  ImmunizationEducationDbObject({required this.id});
}
@Entity()
class ImmunizationReactionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> detail = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> reported = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> reportedElement = ToOne<PrimitiveElementDbObject>();
  ImmunizationReactionDbObject({required this.id});
}
@Entity()
class ImmunizationProtocolAppliedDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> series = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> authority = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> targetDisease = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirPositiveIntDbObject> doseNumberPositiveInt = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> doseNumberPositiveIntElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> doseNumberString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> doseNumberStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> seriesDosesPositiveInt = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesDosesPositiveIntElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> seriesDosesString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesDosesStringElement = ToOne<PrimitiveElementDbObject>();
  ImmunizationProtocolAppliedDbObject({required this.id});
}
