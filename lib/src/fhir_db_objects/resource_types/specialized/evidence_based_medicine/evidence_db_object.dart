import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class EvidenceDbObject {
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
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> citeAsReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirMarkdownDbObject> citAsMarkdown =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> citeAsMarkdownElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer =
      ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser =
      ToMany<ContactDetailDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact =
      ToMany<RelatedArtifactDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> assertion = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> assertionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<EvidenceVariableDefinitionDbObject> variableDefinition =
      ToMany<EvidenceVariableDefinitionDbObject>();
  final ToOne<CodeableConceptDbObject> synthesisType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> studyType =
      ToOne<CodeableConceptDbObject>();
  final ToMany<EvidenceStatisticDbObject> statistic =
      ToMany<EvidenceStatisticDbObject>();
  final ToMany<EvidenceCertaintyDbObject> certainty =
      ToMany<EvidenceCertaintyDbObject>();
  EvidenceDbObject({required this.id});
}

@Entity()
class EvidenceVariableDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<CodeableConceptDbObject> variableRole =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> observed = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> intended = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> directnessMatch =
      ToOne<CodeableConceptDbObject>();
  EvidenceVariableDefinitionDbObject({required this.id});
}

@Entity()
class EvidenceStatisticDbObject {
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
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<CodeableConceptDbObject> statisticType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfEvents =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfEventsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberAffected =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberAffectedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<EvidenceSampleSizeDbObject> sampleSize =
      ToOne<EvidenceSampleSizeDbObject>();
  final ToMany<EvidenceAttributeEstimateDbObject> attributeEstimate =
      ToMany<EvidenceAttributeEstimateDbObject>();
  final ToMany<EvidenceModelCharacteristicDbObject> modelCharacteristic =
      ToMany<EvidenceModelCharacteristicDbObject>();
  EvidenceStatisticDbObject({required this.id});
}

@Entity()
class EvidenceSampleSizeDbObject {
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
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfStudies =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfStudiesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfParticipants =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfParticipantsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> knownDataCount =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> knownDataCountElement =
      ToOne<PrimitiveElementDbObject>();
  EvidenceSampleSizeDbObject({required this.id});
}

@Entity()
class EvidenceAttributeEstimateDbObject {
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
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDecimalDbObject> level = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> levelElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RangeDbObject> range = ToOne<RangeDbObject>();
  final ToMany<EvidenceAttributeEstimateDbObject> attributeEstimate =
      ToMany<EvidenceAttributeEstimateDbObject>();
  EvidenceAttributeEstimateDbObject({required this.id});
}

@Entity()
class EvidenceModelCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> value = ToOne<QuantityDbObject>();
  final ToMany<EvidenceVarDbObject> variable = ToMany<EvidenceVarDbObject>();
  final ToMany<EvidenceAttributeEstimateDbObject> attributeEstimate =
      ToMany<EvidenceAttributeEstimateDbObject>();
  EvidenceModelCharacteristicDbObject({required this.id});
}

@Entity()
class EvidenceVarDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> variableDefinition =
      ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> handling = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> handlingElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> valueCategory =
      ToMany<CodeableConceptDbObject>();
  final ToMany<QuantityDbObject> valueQuantity = ToMany<QuantityDbObject>();
  final ToMany<RangeDbObject> valueRange = ToMany<RangeDbObject>();
  EvidenceVarDbObject({required this.id});
}

@Entity()
class EvidenceCertaintyDbObject {
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
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> rating =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> rater = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> raterElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<EvidenceCertaintyDbObject> subcomponent =
      ToMany<EvidenceCertaintyDbObject>();
  EvidenceCertaintyDbObject({required this.id});
}
