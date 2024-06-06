import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class ElementDefinitionDbObject {
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
  final ToMany<ElementDefinitionRepresentationDbObject> representation =
      ToMany<ElementDefinitionRepresentationDbObject>();
  final ToMany<PrimitiveElementDbObject> representationElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> sliceName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> sliceNameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> sliceIsConstraining =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> sliceIsConstrainingElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> label = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> labelElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodingDbObject> code = ToMany<CodingDbObject>();
  final ToOne<ElementDefinitionSlicingDbObject> slicing =
      ToOne<ElementDefinitionSlicingDbObject>();
  final ToOne<StringDbObject> short = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> shortElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> definition = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> comment = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> requirements =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> requirementsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> alias = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> aliasElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> min = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> minElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> max = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> maxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ElementDefinitionBaseDbObject> base =
      ToOne<ElementDefinitionBaseDbObject>();
  final ToOne<FhirUriDbObject> contentReference = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> contentReferenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ElementDefinitionTypeDbObject> type =
      ToMany<ElementDefinitionTypeDbObject>();
  final ToOne<FhirBase64BinaryDbObject> defaultValueBase64Binary =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueBase64BinaryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> defaultValueBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> defaultValueCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> defaultValueCode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueCodeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> defaultValueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> defaultValueDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> defaultValueDecimal =
      ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> defaultValueId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> defaultValueInstant =
      ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueInstantElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> defaultValueInteger =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> defaultValueMarkdown =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueMarkdownElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirOidDbObject> defaultValueOid = ToOne<FhirOidDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueOidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> defaultValuePositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValuePositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> defaultValueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> defaultValueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> defaultValueUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> defaultValueUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> defaultValueUrl = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueUrlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUuidDbObject> defaultValueUuid = ToOne<FhirUuidDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueUuidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AddressDbObject> defaultValueAddress = ToOne<AddressDbObject>();
  final ToOne<AgeDbObject> defaultValueAge = ToOne<AgeDbObject>();
  final ToOne<AnnotationDbObject> defaultValueAnnotation =
      ToOne<AnnotationDbObject>();
  final ToOne<AttachmentDbObject> defaultValueAttachment =
      ToOne<AttachmentDbObject>();
  final ToOne<CodeableConceptDbObject> defaultValueCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableReferenceDbObject> defaultValueCodeableReference =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<CodingDbObject> defaultValueCoding = ToOne<CodingDbObject>();
  final ToOne<ContactPointDbObject> defaultValueContactPoint =
      ToOne<ContactPointDbObject>();
  final ToOne<CountDbObject> defaultValueCount = ToOne<CountDbObject>();
  final ToOne<DistanceDbObject> defaultValueDistance =
      ToOne<DistanceDbObject>();
  final ToOne<FhirDurationDbObject> defaultValueDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<HumanNameDbObject> defaultValueHumanName =
      ToOne<HumanNameDbObject>();
  final ToOne<IdentifierDbObject> defaultValueIdentifier =
      ToOne<IdentifierDbObject>();
  final ToOne<MoneyDbObject> defaultValueMoney = ToOne<MoneyDbObject>();
  final ToOne<PeriodDbObject> defaultValuePeriod = ToOne<PeriodDbObject>();
  final ToOne<QuantityDbObject> defaultValueQuantity =
      ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> defaultValueRange = ToOne<RangeDbObject>();
  final ToOne<RatioDbObject> defaultValueRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> defaultValueRatioRange =
      ToOne<RatioRangeDbObject>();
  final ToOne<ReferenceDbObject> defaultValueReference =
      ToOne<ReferenceDbObject>();
  final ToOne<SampledDataDbObject> defaultValueSampledData =
      ToOne<SampledDataDbObject>();
  final ToOne<SignatureDbObject> defaultValueSignature =
      ToOne<SignatureDbObject>();
  final ToOne<TimingDbObject> defaultValueTiming = ToOne<TimingDbObject>();
  final ToOne<ContactDetailDbObject> defaultValueContactDetail =
      ToOne<ContactDetailDbObject>();
  final ToOne<ContributorDbObject> defaultValueContributor =
      ToOne<ContributorDbObject>();
  final ToOne<DataRequirementDbObject> defaultValueDataRequirement =
      ToOne<DataRequirementDbObject>();
  final ToOne<FhirExpressionDbObject> defaultValueExpression =
      ToOne<FhirExpressionDbObject>();
  final ToOne<ParameterDefinitionDbObject> defaultValueParameterDefinition =
      ToOne<ParameterDefinitionDbObject>();
  final ToOne<RelatedArtifactDbObject> defaultValueRelatedArtifact =
      ToOne<RelatedArtifactDbObject>();
  final ToOne<TriggerDefinitionDbObject> defaultValueTriggerDefinition =
      ToOne<TriggerDefinitionDbObject>();
  final ToOne<UsageContextDbObject> defaultValueUsageContext =
      ToOne<UsageContextDbObject>();
  final ToOne<DosageDbObject> defaultValueDosage = ToOne<DosageDbObject>();
  final ToOne<FhirMarkdownDbObject> meaningWhenMissing =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> meaningWhenMissingElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> orderMeaning = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> orderMeaningElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> fixedBase64Binary =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedBase64BinaryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> fixedBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> fixedCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> fixedCode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedCodeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> fixedDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> fixedDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> fixedDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> fixedId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> fixedInstant = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedInstantElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> fixedInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> fixedMarkdown =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedMarkdownElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirOidDbObject> fixedOid = ToOne<FhirOidDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedOidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> fixedPositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedPositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> fixedString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> fixedTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> fixedUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> fixedUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> fixedUrl = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedUrlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUuidDbObject> fixedUuid = ToOne<FhirUuidDbObject>();
  final ToOne<PrimitiveElementDbObject> fixedUuidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AddressDbObject> fixedAddress = ToOne<AddressDbObject>();
  final ToOne<AgeDbObject> fixedAge = ToOne<AgeDbObject>();
  final ToOne<AnnotationDbObject> fixedAnnotation = ToOne<AnnotationDbObject>();
  final ToOne<AttachmentDbObject> fixedAttachment = ToOne<AttachmentDbObject>();
  final ToOne<CodeableConceptDbObject> fixedCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableReferenceDbObject> fixedCodeableReference =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<CodingDbObject> fixedCoding = ToOne<CodingDbObject>();
  final ToOne<ContactPointDbObject> fixedContactPoint =
      ToOne<ContactPointDbObject>();
  final ToOne<CountDbObject> fixedCount = ToOne<CountDbObject>();
  final ToOne<DistanceDbObject> fixedDistance = ToOne<DistanceDbObject>();
  final ToOne<FhirDurationDbObject> fixedDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<HumanNameDbObject> fixedHumanName = ToOne<HumanNameDbObject>();
  final ToOne<IdentifierDbObject> fixedIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<MoneyDbObject> fixedMoney = ToOne<MoneyDbObject>();
  final ToOne<PeriodDbObject> fixedPeriod = ToOne<PeriodDbObject>();
  final ToOne<QuantityDbObject> fixedQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> fixedRange = ToOne<RangeDbObject>();
  final ToOne<RatioDbObject> fixedRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> fixedRatioRange = ToOne<RatioRangeDbObject>();
  final ToOne<ReferenceDbObject> fixedReference = ToOne<ReferenceDbObject>();
  final ToOne<SampledDataDbObject> fixedSampledData =
      ToOne<SampledDataDbObject>();
  final ToOne<SignatureDbObject> fixedSignature = ToOne<SignatureDbObject>();
  final ToOne<TimingDbObject> fixedTiming = ToOne<TimingDbObject>();
  final ToOne<ContactDetailDbObject> fixedContactDetail =
      ToOne<ContactDetailDbObject>();
  final ToOne<ContributorDbObject> fixedContributor =
      ToOne<ContributorDbObject>();
  final ToOne<DataRequirementDbObject> fixedDataRequirement =
      ToOne<DataRequirementDbObject>();
  final ToOne<FhirExpressionDbObject> fixedExpression =
      ToOne<FhirExpressionDbObject>();
  final ToOne<ParameterDefinitionDbObject> fixedParameterDefinition =
      ToOne<ParameterDefinitionDbObject>();
  final ToOne<RelatedArtifactDbObject> fixedRelatedArtifact =
      ToOne<RelatedArtifactDbObject>();
  final ToOne<TriggerDefinitionDbObject> fixedTriggerDefinition =
      ToOne<TriggerDefinitionDbObject>();
  final ToOne<UsageContextDbObject> fixedUsageContext =
      ToOne<UsageContextDbObject>();
  final ToOne<DosageDbObject> fixedDosage = ToOne<DosageDbObject>();
  final ToOne<FhirBase64BinaryDbObject> patternBase64Binary =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> patternBase64BinaryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> patternBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> patternBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> patternCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> patternCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> patternCode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> patternCodeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> patternDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> patternDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> patternDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> patternDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> patternDecimal =
      ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> patternDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> patternId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> patternIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> patternInstant =
      ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> patternInstantElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> patternInteger =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> patternIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> patternMarkdown =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> patternMarkdownElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirOidDbObject> patternOid = ToOne<FhirOidDbObject>();
  final ToOne<PrimitiveElementDbObject> patternOidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> patternPositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> patternPositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> patternString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> patternStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> patternTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> patternTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> patternUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> patternUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> patternUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> patternUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> patternUrl = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> patternUrlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUuidDbObject> patternUuid = ToOne<FhirUuidDbObject>();
  final ToOne<PrimitiveElementDbObject> patternUuidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AddressDbObject> patternAddress = ToOne<AddressDbObject>();
  final ToOne<AgeDbObject> patternAge = ToOne<AgeDbObject>();
  final ToOne<AnnotationDbObject> patternAnnotation =
      ToOne<AnnotationDbObject>();
  final ToOne<AttachmentDbObject> patternAttachment =
      ToOne<AttachmentDbObject>();
  final ToOne<CodeableConceptDbObject> patternCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableReferenceDbObject> patternCodeableReference =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<CodingDbObject> patternCoding = ToOne<CodingDbObject>();
  final ToOne<ContactPointDbObject> patternContactPoint =
      ToOne<ContactPointDbObject>();
  final ToOne<CountDbObject> patternCount = ToOne<CountDbObject>();
  final ToOne<DistanceDbObject> patternDistance = ToOne<DistanceDbObject>();
  final ToOne<FhirDurationDbObject> patternDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<HumanNameDbObject> patternHumanName = ToOne<HumanNameDbObject>();
  final ToOne<IdentifierDbObject> patternIdentifier =
      ToOne<IdentifierDbObject>();
  final ToOne<MoneyDbObject> patternMoney = ToOne<MoneyDbObject>();
  final ToOne<PeriodDbObject> patternPeriod = ToOne<PeriodDbObject>();
  final ToOne<QuantityDbObject> patternQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> patternRange = ToOne<RangeDbObject>();
  final ToOne<RatioDbObject> patternRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> patternRatioRange =
      ToOne<RatioRangeDbObject>();
  final ToOne<ReferenceDbObject> patternReference = ToOne<ReferenceDbObject>();
  final ToOne<SampledDataDbObject> patternSampledData =
      ToOne<SampledDataDbObject>();
  final ToOne<SignatureDbObject> patternSignature = ToOne<SignatureDbObject>();
  final ToOne<TimingDbObject> patternTiming = ToOne<TimingDbObject>();
  final ToOne<ContactDetailDbObject> patternContactDetail =
      ToOne<ContactDetailDbObject>();
  final ToOne<ContributorDbObject> patternContributor =
      ToOne<ContributorDbObject>();
  final ToOne<DataRequirementDbObject> patternDataRequirement =
      ToOne<DataRequirementDbObject>();
  final ToOne<FhirExpressionDbObject> patternExpression =
      ToOne<FhirExpressionDbObject>();
  final ToOne<ParameterDefinitionDbObject> patternParameterDefinition =
      ToOne<ParameterDefinitionDbObject>();
  final ToOne<RelatedArtifactDbObject> patternRelatedArtifact =
      ToOne<RelatedArtifactDbObject>();
  final ToOne<TriggerDefinitionDbObject> patternTriggerDefinition =
      ToOne<TriggerDefinitionDbObject>();
  final ToOne<UsageContextDbObject> patternUsageContext =
      ToOne<UsageContextDbObject>();
  final ToOne<DosageDbObject> patternDosage = ToOne<DosageDbObject>();
  final ToMany<ElementDefinitionExampleDbObject> example =
      ToMany<ElementDefinitionExampleDbObject>();
  final ToOne<FhirDateDbObject> minValueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> minValueDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> minValueInstant =
      ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueInstantElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> minValueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> minValueDecimal =
      ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> minValueInteger =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> minValuePositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> minValuePositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> minValueUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> minValueUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> minValueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDateDbObject> maxValueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> maxValueDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> maxValueInstant =
      ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueInstantElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> maxValueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> maxValueDecimal =
      ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> maxValueInteger =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> maxValuePositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValuePositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> maxValueUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> maxValueUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> maxValueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirIntegerDbObject> maxLength = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> maxLengthElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirIdDbObject> condition = ToMany<FhirIdDbObject>();
  final ToMany<PrimitiveElementDbObject> conditionElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ElementDefinitionConstraintDbObject> constraint =
      ToMany<ElementDefinitionConstraintDbObject>();
  final ToOne<FhirBooleanDbObject> mustSupport = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> mustSupportElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> isModifier = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isModifierElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> isModifierReason = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> isModifierReasonElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> isSummary = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isSummaryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ElementDefinitionBindingDbObject> binding =
      ToOne<ElementDefinitionBindingDbObject>();
  final ToMany<ElementDefinitionMappingDbObject> mapping =
      ToMany<ElementDefinitionMappingDbObject>();
  ElementDefinitionDbObject({required this.id});
}

@Entity()
class ElementDefinitionSlicingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<ElementDefinitionDiscriminatorDbObject> discriminator =
      ToMany<ElementDefinitionDiscriminatorDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> ordered = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> orderedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ElementDefinitionSlicingRulesDbObject> rules =
      ToOne<ElementDefinitionSlicingRulesDbObject>();
  final ToOne<PrimitiveElementDbObject> rulesElement =
      ToOne<PrimitiveElementDbObject>();
  ElementDefinitionSlicingDbObject({required this.id});
}

@Entity()
class ElementDefinitionDiscriminatorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ElementDefinitionDiscriminatorTypeDbObject> type =
      ToOne<ElementDefinitionDiscriminatorTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement =
      ToOne<PrimitiveElementDbObject>();
  ElementDefinitionDiscriminatorDbObject({required this.id});
}

@Entity()
class ElementDefinitionBaseDbObject {
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
  final ToOne<FhirUnsignedIntDbObject> min = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> minElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> max = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> maxElement =
      ToOne<PrimitiveElementDbObject>();
  ElementDefinitionBaseDbObject({required this.id});
}

@Entity()
class ElementDefinitionTypeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> code = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> profile = ToMany<FhirCanonicalDbObject>();
  final ToMany<PrimitiveElementDbObject> profileElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> targetProfile =
      ToMany<FhirCanonicalDbObject>();
  final ToMany<ElementDefinitionTypeAggregationDbObject> aggregation =
      ToMany<ElementDefinitionTypeAggregationDbObject>();
  final ToMany<PrimitiveElementDbObject> aggregationElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<ElementDefinitionTypeVersioningDbObject> versioning =
      ToOne<ElementDefinitionTypeVersioningDbObject>();
  final ToOne<PrimitiveElementDbObject> versioningElement =
      ToOne<PrimitiveElementDbObject>();
  ElementDefinitionTypeDbObject({required this.id});
}

@Entity()
class ElementDefinitionExampleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> label = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> labelElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> valueBase64Binary =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBase64BinaryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> valueCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> valueCode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueCodeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> valueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> valueDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> valueId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> valueInstant = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> valueInstantElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> valueMarkdown =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> valueMarkdownElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirOidDbObject> valueOid = ToOne<FhirOidDbObject>();
  final ToOne<PrimitiveElementDbObject> valueOidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> valuePositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> valuePositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> valueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> valueUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> valueUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> valueUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> valueUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> valueUrl = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> valueUrlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUuidDbObject> valueUuid = ToOne<FhirUuidDbObject>();
  final ToOne<PrimitiveElementDbObject> valueUuidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AddressDbObject> valueAddress = ToOne<AddressDbObject>();
  final ToOne<AgeDbObject> valueAge = ToOne<AgeDbObject>();
  final ToOne<AnnotationDbObject> valueAnnotation = ToOne<AnnotationDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableReferenceDbObject> valueCodeableReference =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<CodingDbObject> valueCoding = ToOne<CodingDbObject>();
  final ToOne<ContactPointDbObject> valueContactPoint =
      ToOne<ContactPointDbObject>();
  final ToOne<CountDbObject> valueCount = ToOne<CountDbObject>();
  final ToOne<DistanceDbObject> valueDistance = ToOne<DistanceDbObject>();
  final ToOne<FhirDurationDbObject> valueDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<HumanNameDbObject> valueHumanName = ToOne<HumanNameDbObject>();
  final ToOne<IdentifierDbObject> valueIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<MoneyDbObject> valueMoney = ToOne<MoneyDbObject>();
  final ToOne<PeriodDbObject> valuePeriod = ToOne<PeriodDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  final ToOne<RatioDbObject> valueRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> valueRatioRange = ToOne<RatioRangeDbObject>();
  final ToOne<ReferenceDbObject> valueReference = ToOne<ReferenceDbObject>();
  final ToOne<SampledDataDbObject> valueSampledData =
      ToOne<SampledDataDbObject>();
  final ToOne<SignatureDbObject> valueSignature = ToOne<SignatureDbObject>();
  final ToOne<TimingDbObject> valueTiming = ToOne<TimingDbObject>();
  final ToOne<ContactDetailDbObject> valueContactDetail =
      ToOne<ContactDetailDbObject>();
  final ToOne<ContributorDbObject> valueContributor =
      ToOne<ContributorDbObject>();
  final ToOne<DataRequirementDbObject> valueDataRequirement =
      ToOne<DataRequirementDbObject>();
  final ToOne<FhirExpressionDbObject> valueExpression =
      ToOne<FhirExpressionDbObject>();
  final ToOne<ParameterDefinitionDbObject> valueParameterDefinition =
      ToOne<ParameterDefinitionDbObject>();
  final ToOne<RelatedArtifactDbObject> valueRelatedArtifact =
      ToOne<RelatedArtifactDbObject>();
  final ToOne<TriggerDefinitionDbObject> valueTriggerDefinition =
      ToOne<TriggerDefinitionDbObject>();
  final ToOne<UsageContextDbObject> valueUsageContext =
      ToOne<UsageContextDbObject>();
  final ToOne<DosageDbObject> valueDosage = ToOne<DosageDbObject>();
  final ToOne<FhirMetaDbObject> valueMeta = ToOne<FhirMetaDbObject>();
  ElementDefinitionExampleDbObject({required this.id});
}

@Entity()
class ElementDefinitionConstraintDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> key = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> keyElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> requirements = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> requirementsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ElementDefinitionConstraintSeverityDbObject> severity =
      ToOne<ElementDefinitionConstraintSeverityDbObject>();
  final ToOne<PrimitiveElementDbObject> severityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> human = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> humanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> xpath = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> xpathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> source = ToOne<FhirCanonicalDbObject>();
  ElementDefinitionConstraintDbObject({required this.id});
}

@Entity()
class ElementDefinitionBindingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ElementDefinitionBindingStrengthDbObject> strength =
      ToOne<ElementDefinitionBindingStrengthDbObject>();
  final ToOne<PrimitiveElementDbObject> strengthElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> valueSet = ToOne<FhirCanonicalDbObject>();
  ElementDefinitionBindingDbObject({required this.id});
}

@Entity()
class ElementDefinitionMappingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> identity = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> identityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> map = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> mapElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  ElementDefinitionMappingDbObject({required this.id});
}
