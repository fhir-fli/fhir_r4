import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ResearchElementDefinitionDbObject {
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
  final ToOne<StringDbObject> shortTitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> shortTitleElement =
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
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> commentElement =
      ToMany<PrimitiveElementDbObject>();
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
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> variableType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> variableTypeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ResearchElementDefinitionCharacteristicDbObject> characteristic =
      ToMany<ResearchElementDefinitionCharacteristicDbObject>();
  ResearchElementDefinitionDbObject({required this.id});
}

@Entity()
class ResearchElementDefinitionCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> definitionCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCanonicalDbObject> definitionCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> definitionExpression =
      ToOne<FhirExpressionDbObject>();
  final ToOne<DataRequirementDbObject> definitionDataRequirement =
      ToOne<DataRequirementDbObject>();
  final ToMany<UsageContextDbObject> usageContext =
      ToMany<UsageContextDbObject>();
  final ToOne<FhirBooleanDbObject> exclude = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> excludeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> unitOfMeasure =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> studyEffectiveDescription =
      ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> studyEffectiveDescriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> studyEffectiveDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> studyEffectiveDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> studyEffectivePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> studyEffectiveDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<TimingDbObject> studyEffectiveTiming = ToOne<TimingDbObject>();
  final ToOne<FhirDurationDbObject> studyEffectiveTimeFromStart =
      ToOne<FhirDurationDbObject>();
  final ToOne<FhirCodeDbObject> studyEffectiveGroupMeasure =
      ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> studyEffectiveGroupMeasureElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> participantEffectiveDescription =
      ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> participantEffectiveDescriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> participantEffectiveDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> participantEffectiveDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> participantEffectivePeriod =
      ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> participantEffectiveDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<TimingDbObject> participantEffectiveTiming =
      ToOne<TimingDbObject>();
  final ToOne<FhirDurationDbObject> participantEffectiveTimeFromStart =
      ToOne<FhirDurationDbObject>();
  final ToOne<FhirCodeDbObject> participantEffectiveGroupMeasure =
      ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject>
      participantEffectiveGroupMeasureElement =
      ToOne<PrimitiveElementDbObject>();
  ResearchElementDefinitionCharacteristicDbObject({required this.id});
}
