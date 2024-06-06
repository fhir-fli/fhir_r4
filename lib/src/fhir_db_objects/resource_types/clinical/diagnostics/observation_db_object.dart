import 'package:objectbox/objectbox.dart';
@Entity()
class ObservationDbObject {
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
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> focus = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> effectiveDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToOne<TimingDbObject> effectiveTiming = ToOne<TimingDbObject>();
  final ToOne<FhirInstantDbObject> effectiveInstant = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveInstantElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> issued = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> issuedElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> performer = ToMany<ReferenceDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  final ToOne<RatioDbObject> valueRatio = ToOne<RatioDbObject>();
  final ToOne<SampledDataDbObject> valueSampledData = ToOne<SampledDataDbObject>();
  final ToOne<FhirTimeDbObject> valueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> valuePeriod = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> dataAbsentReason = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> interpretation = ToMany<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<CodeableConceptDbObject> bodySite = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> method = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> specimen = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> device = ToOne<ReferenceDbObject>();
  final ToMany<ObservationReferenceRangeDbObject> referenceRange = ToMany<ObservationReferenceRangeDbObject>();
  final ToMany<ReferenceDbObject> hasMember = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> derivedFrom = ToMany<ReferenceDbObject>();
  final ToMany<ObservationComponentDbObject> component = ToMany<ObservationComponentDbObject>();
  ObservationDbObject({required this.id});
}
@Entity()
class ObservationReferenceRangeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> low = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> high = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> appliesTo = ToMany<CodeableConceptDbObject>();
  final ToOne<RangeDbObject> age = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  ObservationReferenceRangeDbObject({required this.id});
}
@Entity()
class ObservationComponentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  final ToOne<RatioDbObject> valueRatio = ToOne<RatioDbObject>();
  final ToOne<SampledDataDbObject> valueSampledData = ToOne<SampledDataDbObject>();
  final ToOne<FhirTimeDbObject> valueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> valuePeriod = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> dataAbsentReason = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> interpretation = ToMany<CodeableConceptDbObject>();
  final ToMany<ObservationReferenceRangeDbObject> referenceRange = ToMany<ObservationReferenceRangeDbObject>();
  ObservationComponentDbObject({required this.id});
}
