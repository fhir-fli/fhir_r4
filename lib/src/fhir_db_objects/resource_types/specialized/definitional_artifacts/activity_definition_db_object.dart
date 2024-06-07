import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ActivityDefinitionDbObject {
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
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> subtitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> subtitleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> subjectCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subjectReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> subjectCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> subjectCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> usage = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> usageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<CodeableConceptDbObject> topic =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer =
      ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser =
      ToMany<ContactDetailDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact =
      ToMany<RelatedArtifactDbObject>();
  final ToMany<FhirCanonicalDbObject> library_ =
      ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> profile = ToOne<FhirCanonicalDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> intent = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> intentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> doNotPerform = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> doNotPerformElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<TimingDbObject> timingTiming = ToOne<TimingDbObject>();
  final ToOne<FhirDateTimeDbObject> timingDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> timingAge = ToOne<AgeDbObject>();
  final ToOne<PeriodDbObject> timingPeriod = ToOne<PeriodDbObject>();
  final ToOne<RangeDbObject> timingRange = ToOne<RangeDbObject>();
  final ToOne<FhirDurationDbObject> timingDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<ActivityDefinitionParticipantDbObject> participant =
      ToMany<ActivityDefinitionParticipantDbObject>();
  final ToOne<ReferenceDbObject> productReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> productCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToMany<DosageDbObject> dosage = ToMany<DosageDbObject>();
  final ToMany<CodeableConceptDbObject> bodySite =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> specimenRequirement =
      ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> observationRequirement =
      ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> observationResultRequirement =
      ToMany<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> transform = ToOne<FhirCanonicalDbObject>();
  final ToMany<ActivityDefinitionDynamicValueDbObject> dynamicValue =
      ToMany<ActivityDefinitionDynamicValueDbObject>();
  ActivityDefinitionDbObject({required this.id});
}

@Entity()
class ActivityDefinitionParticipantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  ActivityDefinitionParticipantDbObject({required this.id});
}

@Entity()
class ActivityDefinitionDynamicValueDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> expression =
      ToOne<FhirExpressionDbObject>();
  ActivityDefinitionDynamicValueDbObject({required this.id});
}
