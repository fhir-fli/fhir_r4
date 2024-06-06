import 'package:objectbox/objectbox.dart';
@Entity()
class ChargeItemDbObject {
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
  final ToMany<FhirUriDbObject> definitionUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> definitionUriElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> definitionCanonical = ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> context = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> occurrencePeriod = ToOne<PeriodDbObject>();
  final ToOne<TimingDbObject> occurrenceTiming = ToOne<TimingDbObject>();
  final ToMany<ChargeItemPerformerDbObject> performer = ToMany<ChargeItemPerformerDbObject>();
  final ToOne<ReferenceDbObject> performingOrganization = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> requestingOrganization = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> costCenter = ToOne<ReferenceDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToMany<CodeableConceptDbObject> bodysite = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirDecimalDbObject> factorOverride = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorOverrideElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> priceOverride = ToOne<MoneyDbObject>();
  final ToOne<StringDbObject> overrideReason = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> overrideReasonElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> enterer = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> enteredDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> enteredDateElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> reason = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> service = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> productReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> productCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> account = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<ReferenceDbObject> supportingInformation = ToMany<ReferenceDbObject>();
  ChargeItemDbObject({required this.id});
}
@Entity()
class ChargeItemPerformerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> function = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  ChargeItemPerformerDbObject({required this.id});
}
