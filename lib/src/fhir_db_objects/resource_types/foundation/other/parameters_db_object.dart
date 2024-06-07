import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ParametersDbObject {
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
  final ToMany<ParametersParameterDbObject> parameter =
      ToMany<ParametersParameterDbObject>();
  ParametersDbObject({required this.id});
}

@Entity()
class ParametersParameterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
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
  final ToOne<ResourceDbObject> resource = ToOne<ResourceDbObject>();
  final ToMany<ParametersParameterDbObject> part_ =
      ToMany<ParametersParameterDbObject>();
  ParametersParameterDbObject({required this.id});
}
