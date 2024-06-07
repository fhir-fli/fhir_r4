import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class SpecimenDbObject {
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
  final ToOne<IdentifierDbObject> accessionIdentifier =
      ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> receivedTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> receivedTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> parent = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> request = ToMany<ReferenceDbObject>();
  final ToOne<SpecimenCollectionDbObject> collection =
      ToOne<SpecimenCollectionDbObject>();
  final ToMany<SpecimenProcessingDbObject> processing =
      ToMany<SpecimenProcessingDbObject>();
  final ToMany<SpecimenContainerDbObject> container =
      ToMany<SpecimenContainerDbObject>();
  final ToMany<CodeableConceptDbObject> condition =
      ToMany<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  SpecimenDbObject({required this.id});
}

@Entity()
class SpecimenCollectionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> collector = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> collectedDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> collectedDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> collectedPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> duration = ToOne<FhirDurationDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> method =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> bodySite =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> fastingStatusCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDurationDbObject> fastingStatusDuration =
      ToOne<FhirDurationDbObject>();
  SpecimenCollectionDbObject({required this.id});
}

@Entity()
class SpecimenProcessingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> procedure =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> additive = ToMany<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> timeDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timeDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> timePeriod = ToOne<PeriodDbObject>();
  SpecimenProcessingDbObject({required this.id});
}

@Entity()
class SpecimenContainerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> capacity = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> specimenQuantity = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> additiveCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> additiveReference = ToOne<ReferenceDbObject>();
  SpecimenContainerDbObject({required this.id});
}
