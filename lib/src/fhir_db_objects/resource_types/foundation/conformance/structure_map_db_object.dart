import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class StructureMapDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement =
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
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StructureMapStructureDbObject> structure =
      ToMany<StructureMapStructureDbObject>();
  final ToMany<FhirCanonicalDbObject> import_ = ToMany<FhirCanonicalDbObject>();
  final ToMany<StructureMapGroupDbObject> group =
      ToMany<StructureMapGroupDbObject>();
  StructureMapDbObject({required this.id});
}

@Entity()
class StructureMapStructureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCanonicalDbObject> url = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> alias = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> aliasElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement =
      ToOne<PrimitiveElementDbObject>();
  StructureMapStructureDbObject({required this.id});
}

@Entity()
class StructureMapGroupDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> name = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> extends_ = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> extendsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> typeMode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeModeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StructureMapInputDbObject> input =
      ToMany<StructureMapInputDbObject>();
  final ToMany<StructureMapRuleDbObject> rule =
      ToMany<StructureMapRuleDbObject>();
  StructureMapGroupDbObject({required this.id});
}

@Entity()
class StructureMapInputDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> name = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> type = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement =
      ToOne<PrimitiveElementDbObject>();
  StructureMapInputDbObject({required this.id});
}

@Entity()
class StructureMapRuleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> name = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StructureMapSourceDbObject> source =
      ToMany<StructureMapSourceDbObject>();
  final ToMany<StructureMapTargetDbObject> target =
      ToMany<StructureMapTargetDbObject>();
  final ToMany<StructureMapRuleDbObject> rule =
      ToMany<StructureMapRuleDbObject>();
  final ToMany<StructureMapDependentDbObject> dependent =
      ToMany<StructureMapDependentDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement =
      ToOne<PrimitiveElementDbObject>();
  StructureMapRuleDbObject({required this.id});
}

@Entity()
class StructureMapSourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> context = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> contextElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> min = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> minElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> max = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> maxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> type = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
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
  final ToOne<FhirMetaDbObject> defaultValueMeta = ToOne<FhirMetaDbObject>();
  final ToOne<StringDbObject> element = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> elementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> listMode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> listModeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> variable = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> variableElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> condition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> check = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> checkElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> logMessage = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> logMessageElement =
      ToOne<PrimitiveElementDbObject>();
  StructureMapSourceDbObject({required this.id});
}

@Entity()
class StructureMapTargetDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> context = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> contextElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> contextType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> contextTypeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> element = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> elementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> variable = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> variableElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> listMode = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> listModeElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> listRuleId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> listRuleIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> transform = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> transformElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StructureMapParameterDbObject> parameter =
      ToMany<StructureMapParameterDbObject>();
  StructureMapTargetDbObject({required this.id});
}

@Entity()
class StructureMapParameterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> valueId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> valueDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  StructureMapParameterDbObject({required this.id});
}

@Entity()
class StructureMapDependentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> name = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> variable = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> variableElement =
      ToMany<PrimitiveElementDbObject>();
  StructureMapDependentDbObject({required this.id});
}
