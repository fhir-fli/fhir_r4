import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ServiceRequestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical =
      ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> replaces = ToMany<ReferenceDbObject>();
  final ToOne<IdentifierDbObject> requisition = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> intent = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> intentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> doNotPerform = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> doNotPerformElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> orderDetail =
      ToMany<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantityQuantity = ToOne<QuantityDbObject>();
  final ToOne<RatioDbObject> quantityRatio = ToOne<RatioDbObject>();
  final ToOne<RangeDbObject> quantityRange = ToOne<RangeDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> occurrencePeriod = ToOne<PeriodDbObject>();
  final ToOne<TimingDbObject> occurrenceTiming = ToOne<TimingDbObject>();
  final ToOne<FhirBooleanDbObject> asNeededBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> asNeededBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> asNeededCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> authoredOn = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> authoredOnElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> requester = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> performerType =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> performer = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> locationCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> locationReference =
      ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> insurance = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingInfo = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> specimen = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> bodySite =
      ToMany<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<StringDbObject> patientInstruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> patientInstructionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> relevantHistory = ToMany<ReferenceDbObject>();
  ServiceRequestDbObject({required this.id});
}