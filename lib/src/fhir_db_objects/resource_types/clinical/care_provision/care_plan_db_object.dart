import 'package:objectbox/objectbox.dart';
@Entity()
class CarePlanDbObject {
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
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical = ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> replaces = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> intent = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> intentElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> contributor = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> careTeam = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> addresses = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingInfo = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> goal = ToMany<ReferenceDbObject>();
  final ToMany<CarePlanActivityDbObject> activity = ToMany<CarePlanActivityDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  CarePlanDbObject({required this.id});
}
@Entity()
class CarePlanActivityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> outcomeCodeableConcept = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> outcomeReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> progress = ToMany<AnnotationDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  final ToOne<CarePlanDetailDbObject> detail = ToOne<CarePlanDetailDbObject>();
  CarePlanActivityDbObject({required this.id});
}
@Entity()
class CarePlanDetailDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical = ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> goal = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReason = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> doNotPerform = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> doNotPerformElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<TimingDbObject> scheduledTiming = ToOne<TimingDbObject>();
  final ToOne<PeriodDbObject> scheduledPeriod = ToOne<PeriodDbObject>();
  final ToOne<StringDbObject> scheduledString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> scheduledStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> performer = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> productCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> productReference = ToOne<ReferenceDbObject>();
  final ToOne<QuantityDbObject> dailyAmount = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  CarePlanDetailDbObject({required this.id});
}
