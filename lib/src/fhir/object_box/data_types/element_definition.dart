// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxElementDefinition {
  ObjectBoxElementDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.path,
    this.pathElement,
    this.representation,
    this.representationElement,
    this.sliceName,
    this.sliceNameElement,
    this.sliceIsConstraining,
    this.sliceIsConstrainingElement,
    this.label,
    this.labelElement,
    this.code,
    this.slicing,
    this.short,
    this.shortElement,
    this.definition,
    this.definitionElement,
    this.comment,
    this.commentElement,
    this.requirements,
    this.requirementsElement,
    this.alias,
    this.aliasElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.base,
    this.contentReference,
    this.contentReferenceElement,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,
    this.defaultValueCanonicalElement,
    this.defaultValueCode,
    this.defaultValueCodeElement,
    this.defaultValueDate,
    this.defaultValueDateElement,
    this.defaultValueDateTime,
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,
    this.defaultValueDecimalElement,
    this.defaultValueId,
    this.defaultValueIdElement,
    this.defaultValueInstant,
    this.defaultValueInstantElement,
    this.defaultValueInteger,
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,
    this.defaultValueMarkdownElement,
    this.defaultValueOid,
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,
    this.defaultValuePositiveIntElement,
    this.defaultValueString,
    this.defaultValueStringElement,
    this.defaultValueTime,
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,
    this.defaultValueUriElement,
    this.defaultValueUrl,
    this.defaultValueUrlElement,
    this.defaultValueUuid,
    this.defaultValueUuidElement,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCodeableReference,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueRatioRange,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.meaningWhenMissing,
    this.meaningWhenMissingElement,
    this.orderMeaning,
    this.orderMeaningElement,
    this.fixedBase64Binary,
    this.fixedBase64BinaryElement,
    this.fixedBoolean,
    this.fixedBooleanElement,
    this.fixedCanonical,
    this.fixedCanonicalElement,
    this.fixedCode,
    this.fixedCodeElement,
    this.fixedDate,
    this.fixedDateElement,
    this.fixedDateTime,
    this.fixedDateTimeElement,
    this.fixedDecimal,
    this.fixedDecimalElement,
    this.fixedId,
    this.fixedIdElement,
    this.fixedInstant,
    this.fixedInstantElement,
    this.fixedInteger,
    this.fixedIntegerElement,
    this.fixedMarkdown,
    this.fixedMarkdownElement,
    this.fixedOid,
    this.fixedOidElement,
    this.fixedPositiveInt,
    this.fixedPositiveIntElement,
    this.fixedString,
    this.fixedStringElement,
    this.fixedTime,
    this.fixedTimeElement,
    this.fixedUnsignedInt,
    this.fixedUnsignedIntElement,
    this.fixedUri,
    this.fixedUriElement,
    this.fixedUrl,
    this.fixedUrlElement,
    this.fixedUuid,
    this.fixedUuidElement,
    this.fixedAddress,
    this.fixedAge,
    this.fixedAnnotation,
    this.fixedAttachment,
    this.fixedCodeableConcept,
    this.fixedCodeableReference,
    this.fixedCoding,
    this.fixedContactPoint,
    this.fixedCount,
    this.fixedDistance,
    this.fixedDuration,
    this.fixedHumanName,
    this.fixedIdentifier,
    this.fixedMoney,
    this.fixedPeriod,
    this.fixedQuantity,
    this.fixedRange,
    this.fixedRatio,
    this.fixedRatioRange,
    this.fixedReference,
    this.fixedSampledData,
    this.fixedSignature,
    this.fixedTiming,
    this.fixedContactDetail,
    this.fixedContributor,
    this.fixedDataRequirement,
    this.fixedExpression,
    this.fixedParameterDefinition,
    this.fixedRelatedArtifact,
    this.fixedTriggerDefinition,
    this.fixedUsageContext,
    this.fixedDosage,
    this.patternBase64Binary,
    this.patternBase64BinaryElement,
    this.patternBoolean,
    this.patternBooleanElement,
    this.patternCanonical,
    this.patternCanonicalElement,
    this.patternCode,
    this.patternCodeElement,
    this.patternDate,
    this.patternDateElement,
    this.patternDateTime,
    this.patternDateTimeElement,
    this.patternDecimal,
    this.patternDecimalElement,
    this.patternId,
    this.patternIdElement,
    this.patternInstant,
    this.patternInstantElement,
    this.patternInteger,
    this.patternIntegerElement,
    this.patternMarkdown,
    this.patternMarkdownElement,
    this.patternOid,
    this.patternOidElement,
    this.patternPositiveInt,
    this.patternPositiveIntElement,
    this.patternString,
    this.patternStringElement,
    this.patternTime,
    this.patternTimeElement,
    this.patternUnsignedInt,
    this.patternUnsignedIntElement,
    this.patternUri,
    this.patternUriElement,
    this.patternUrl,
    this.patternUrlElement,
    this.patternUuid,
    this.patternUuidElement,
    this.patternAddress,
    this.patternAge,
    this.patternAnnotation,
    this.patternAttachment,
    this.patternCodeableConcept,
    this.patternCodeableReference,
    this.patternCoding,
    this.patternContactPoint,
    this.patternCount,
    this.patternDistance,
    this.patternDuration,
    this.patternHumanName,
    this.patternIdentifier,
    this.patternMoney,
    this.patternPeriod,
    this.patternQuantity,
    this.patternRange,
    this.patternRatio,
    this.patternRatioRange,
    this.patternReference,
    this.patternSampledData,
    this.patternSignature,
    this.patternTiming,
    this.patternContactDetail,
    this.patternContributor,
    this.patternDataRequirement,
    this.patternExpression,
    this.patternParameterDefinition,
    this.patternRelatedArtifact,
    this.patternTriggerDefinition,
    this.patternUsageContext,
    this.patternDosage,
    this.example,
    this.minValueDate,
    this.minValueDateElement,
    this.minValueDateTime,
    this.minValueDateTimeElement,
    this.minValueInstant,
    this.minValueInstantElement,
    this.minValueTime,
    this.minValueTimeElement,
    this.minValueDecimal,
    this.minValueDecimalElement,
    this.minValueInteger,
    this.minValueIntegerElement,
    this.minValuePositiveInt,
    this.minValuePositiveIntElement,
    this.minValueUnsignedInt,
    this.minValueUnsignedIntElement,
    this.minValueQuantity,
    this.maxValueDate,
    this.maxValueDateElement,
    this.maxValueDateTime,
    this.maxValueDateTimeElement,
    this.maxValueInstant,
    this.maxValueInstantElement,
    this.maxValueTime,
    this.maxValueTimeElement,
    this.maxValueDecimal,
    this.maxValueDecimalElement,
    this.maxValueInteger,
    this.maxValueIntegerElement,
    this.maxValuePositiveInt,
    this.maxValuePositiveIntElement,
    this.maxValueUnsignedInt,
    this.maxValueUnsignedIntElement,
    this.maxValueQuantity,
    this.maxLength,
    this.maxLengthElement,
    this.condition,
    this.conditionElement,
    this.constraint,
    this.mustSupport,
    this.mustSupportElement,
    this.isModifier,
    this.isModifierElement,
    this.isModifierReason,
    this.isModifierReasonElement,
    this.isSummary,
    this.isSummaryElement,
    this.binding,
    this.mapping,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  List<String>? representation;
  ToMany<ObjectBoxElement>? representationElement = ToMany<ObjectBoxElement>();
  String? sliceName;
  ToOne<ObjectBoxElement>? sliceNameElement = ToOne<ObjectBoxElement>();
  bool? sliceIsConstraining;
  ToOne<ObjectBoxElement>? sliceIsConstrainingElement =
      ToOne<ObjectBoxElement>();
  String? label;
  ToOne<ObjectBoxElement>? labelElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding>? code = ToMany<ObjectBoxCoding>();
  ToOne<ObjectBoxElementDefinitionSlicing>? slicing =
      ToOne<ObjectBoxElementDefinitionSlicing>();
  String? short;
  ToOne<ObjectBoxElement>? shortElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
  String? requirements;
  ToOne<ObjectBoxElement>? requirementsElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement>? aliasElement = ToMany<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement>? minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement>? maxElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxElementDefinitionBase>? base =
      ToOne<ObjectBoxElementDefinitionBase>();
  String? contentReference;
  ToOne<ObjectBoxElement>? contentReferenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxElementDefinitionType>? type =
      ToMany<ObjectBoxElementDefinitionType>();
  String? defaultValueBase64Binary;
  ToOne<ObjectBoxElement>? defaultValueBase64BinaryElement =
      ToOne<ObjectBoxElement>();
  bool? defaultValueBoolean;
  ToOne<ObjectBoxElement>? defaultValueBooleanElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCanonical;
  ToOne<ObjectBoxElement>? defaultValueCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCode;
  ToOne<ObjectBoxElement>? defaultValueCodeElement = ToOne<ObjectBoxElement>();
  String? defaultValueDate;
  ToOne<ObjectBoxElement>? defaultValueDateElement = ToOne<ObjectBoxElement>();
  String? defaultValueDateTime;
  ToOne<ObjectBoxElement>? defaultValueDateTimeElement =
      ToOne<ObjectBoxElement>();
  double? defaultValueDecimal;
  ToOne<ObjectBoxElement>? defaultValueDecimalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueId;
  ToOne<ObjectBoxElement>? defaultValueIdElement = ToOne<ObjectBoxElement>();
  String? defaultValueInstant;
  ToOne<ObjectBoxElement>? defaultValueInstantElement =
      ToOne<ObjectBoxElement>();
  int? defaultValueInteger;
  ToOne<ObjectBoxElement>? defaultValueIntegerElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueMarkdown;
  ToOne<ObjectBoxElement>? defaultValueMarkdownElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueOid;
  ToOne<ObjectBoxElement>? defaultValueOidElement = ToOne<ObjectBoxElement>();
  int? defaultValuePositiveInt;
  ToOne<ObjectBoxElement>? defaultValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueString;
  ToOne<ObjectBoxElement>? defaultValueStringElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueTime;
  ToOne<ObjectBoxElement>? defaultValueTimeElement = ToOne<ObjectBoxElement>();
  int? defaultValueUnsignedInt;
  ToOne<ObjectBoxElement>? defaultValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueUri;
  ToOne<ObjectBoxElement>? defaultValueUriElement = ToOne<ObjectBoxElement>();
  String? defaultValueUrl;
  ToOne<ObjectBoxElement>? defaultValueUrlElement = ToOne<ObjectBoxElement>();
  String? defaultValueUuid;
  ToOne<ObjectBoxElement>? defaultValueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress>? defaultValueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge>? defaultValueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation>? defaultValueAnnotation =
      ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment>? defaultValueAttachment =
      ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? defaultValueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference>? defaultValueCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding>? defaultValueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint>? defaultValueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount>? defaultValueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance>? defaultValueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration>? defaultValueDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName>? defaultValueHumanName =
      ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier>? defaultValueIdentifier =
      ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney>? defaultValueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod>? defaultValuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity>? defaultValueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? defaultValueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? defaultValueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? defaultValueRatioRange =
      ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference>? defaultValueReference =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData>? defaultValueSampledData =
      ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature>? defaultValueSignature =
      ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming>? defaultValueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail>? defaultValueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor>? defaultValueContributor =
      ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement>? defaultValueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? defaultValueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition>? defaultValueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact>? defaultValueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition>? defaultValueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext>? defaultValueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage>? defaultValueDosage = ToOne<ObjectBoxDosage>();
  String? meaningWhenMissing;
  ToOne<ObjectBoxElement>? meaningWhenMissingElement =
      ToOne<ObjectBoxElement>();
  String? orderMeaning;
  ToOne<ObjectBoxElement>? orderMeaningElement = ToOne<ObjectBoxElement>();
  String? fixedBase64Binary;
  ToOne<ObjectBoxElement>? fixedBase64BinaryElement = ToOne<ObjectBoxElement>();
  bool? fixedBoolean;
  ToOne<ObjectBoxElement>? fixedBooleanElement = ToOne<ObjectBoxElement>();
  String? fixedCanonical;
  ToOne<ObjectBoxElement>? fixedCanonicalElement = ToOne<ObjectBoxElement>();
  String? fixedCode;
  ToOne<ObjectBoxElement>? fixedCodeElement = ToOne<ObjectBoxElement>();
  String? fixedDate;
  ToOne<ObjectBoxElement>? fixedDateElement = ToOne<ObjectBoxElement>();
  String? fixedDateTime;
  ToOne<ObjectBoxElement>? fixedDateTimeElement = ToOne<ObjectBoxElement>();
  double? fixedDecimal;
  ToOne<ObjectBoxElement>? fixedDecimalElement = ToOne<ObjectBoxElement>();
  String? fixedId;
  ToOne<ObjectBoxElement>? fixedIdElement = ToOne<ObjectBoxElement>();
  String? fixedInstant;
  ToOne<ObjectBoxElement>? fixedInstantElement = ToOne<ObjectBoxElement>();
  int? fixedInteger;
  ToOne<ObjectBoxElement>? fixedIntegerElement = ToOne<ObjectBoxElement>();
  String? fixedMarkdown;
  ToOne<ObjectBoxElement>? fixedMarkdownElement = ToOne<ObjectBoxElement>();
  String? fixedOid;
  ToOne<ObjectBoxElement>? fixedOidElement = ToOne<ObjectBoxElement>();
  int? fixedPositiveInt;
  ToOne<ObjectBoxElement>? fixedPositiveIntElement = ToOne<ObjectBoxElement>();
  String? fixedString;
  ToOne<ObjectBoxElement>? fixedStringElement = ToOne<ObjectBoxElement>();
  String? fixedTime;
  ToOne<ObjectBoxElement>? fixedTimeElement = ToOne<ObjectBoxElement>();
  int? fixedUnsignedInt;
  ToOne<ObjectBoxElement>? fixedUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? fixedUri;
  ToOne<ObjectBoxElement>? fixedUriElement = ToOne<ObjectBoxElement>();
  String? fixedUrl;
  ToOne<ObjectBoxElement>? fixedUrlElement = ToOne<ObjectBoxElement>();
  String? fixedUuid;
  ToOne<ObjectBoxElement>? fixedUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress>? fixedAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge>? fixedAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation>? fixedAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment>? fixedAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? fixedCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference>? fixedCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding>? fixedCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint>? fixedContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount>? fixedCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance>? fixedDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration>? fixedDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName>? fixedHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier>? fixedIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney>? fixedMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod>? fixedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity>? fixedQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? fixedRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? fixedRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? fixedRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference>? fixedReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData>? fixedSampledData = ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature>? fixedSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming>? fixedTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail>? fixedContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor>? fixedContributor = ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement>? fixedDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? fixedExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition>? fixedParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact>? fixedRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition>? fixedTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext>? fixedUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage>? fixedDosage = ToOne<ObjectBoxDosage>();
  String? patternBase64Binary;
  ToOne<ObjectBoxElement>? patternBase64BinaryElement =
      ToOne<ObjectBoxElement>();
  bool? patternBoolean;
  ToOne<ObjectBoxElement>? patternBooleanElement = ToOne<ObjectBoxElement>();
  String? patternCanonical;
  ToOne<ObjectBoxElement>? patternCanonicalElement = ToOne<ObjectBoxElement>();
  String? patternCode;
  ToOne<ObjectBoxElement>? patternCodeElement = ToOne<ObjectBoxElement>();
  String? patternDate;
  ToOne<ObjectBoxElement>? patternDateElement = ToOne<ObjectBoxElement>();
  String? patternDateTime;
  ToOne<ObjectBoxElement>? patternDateTimeElement = ToOne<ObjectBoxElement>();
  double? patternDecimal;
  ToOne<ObjectBoxElement>? patternDecimalElement = ToOne<ObjectBoxElement>();
  String? patternId;
  ToOne<ObjectBoxElement>? patternIdElement = ToOne<ObjectBoxElement>();
  String? patternInstant;
  ToOne<ObjectBoxElement>? patternInstantElement = ToOne<ObjectBoxElement>();
  int? patternInteger;
  ToOne<ObjectBoxElement>? patternIntegerElement = ToOne<ObjectBoxElement>();
  String? patternMarkdown;
  ToOne<ObjectBoxElement>? patternMarkdownElement = ToOne<ObjectBoxElement>();
  String? patternOid;
  ToOne<ObjectBoxElement>? patternOidElement = ToOne<ObjectBoxElement>();
  int? patternPositiveInt;
  ToOne<ObjectBoxElement>? patternPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? patternString;
  ToOne<ObjectBoxElement>? patternStringElement = ToOne<ObjectBoxElement>();
  String? patternTime;
  ToOne<ObjectBoxElement>? patternTimeElement = ToOne<ObjectBoxElement>();
  int? patternUnsignedInt;
  ToOne<ObjectBoxElement>? patternUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? patternUri;
  ToOne<ObjectBoxElement>? patternUriElement = ToOne<ObjectBoxElement>();
  String? patternUrl;
  ToOne<ObjectBoxElement>? patternUrlElement = ToOne<ObjectBoxElement>();
  String? patternUuid;
  ToOne<ObjectBoxElement>? patternUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress>? patternAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge>? patternAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation>? patternAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment>? patternAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? patternCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference>? patternCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding>? patternCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint>? patternContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount>? patternCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance>? patternDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration>? patternDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName>? patternHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier>? patternIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney>? patternMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod>? patternPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity>? patternQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? patternRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? patternRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? patternRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference>? patternReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData>? patternSampledData =
      ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature>? patternSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming>? patternTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail>? patternContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor>? patternContributor =
      ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement>? patternDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? patternExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition>? patternParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact>? patternRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition>? patternTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext>? patternUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage>? patternDosage = ToOne<ObjectBoxDosage>();
  ToMany<ObjectBoxElementDefinitionExample>? example =
      ToMany<ObjectBoxElementDefinitionExample>();
  String? minValueDate;
  ToOne<ObjectBoxElement>? minValueDateElement = ToOne<ObjectBoxElement>();
  String? minValueDateTime;
  ToOne<ObjectBoxElement>? minValueDateTimeElement = ToOne<ObjectBoxElement>();
  String? minValueInstant;
  ToOne<ObjectBoxElement>? minValueInstantElement = ToOne<ObjectBoxElement>();
  String? minValueTime;
  ToOne<ObjectBoxElement>? minValueTimeElement = ToOne<ObjectBoxElement>();
  double? minValueDecimal;
  ToOne<ObjectBoxElement>? minValueDecimalElement = ToOne<ObjectBoxElement>();
  int? minValueInteger;
  ToOne<ObjectBoxElement>? minValueIntegerElement = ToOne<ObjectBoxElement>();
  int? minValuePositiveInt;
  ToOne<ObjectBoxElement>? minValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  int? minValueUnsignedInt;
  ToOne<ObjectBoxElement>? minValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? minValueQuantity = ToOne<ObjectBoxQuantity>();
  String? maxValueDate;
  ToOne<ObjectBoxElement>? maxValueDateElement = ToOne<ObjectBoxElement>();
  String? maxValueDateTime;
  ToOne<ObjectBoxElement>? maxValueDateTimeElement = ToOne<ObjectBoxElement>();
  String? maxValueInstant;
  ToOne<ObjectBoxElement>? maxValueInstantElement = ToOne<ObjectBoxElement>();
  String? maxValueTime;
  ToOne<ObjectBoxElement>? maxValueTimeElement = ToOne<ObjectBoxElement>();
  double? maxValueDecimal;
  ToOne<ObjectBoxElement>? maxValueDecimalElement = ToOne<ObjectBoxElement>();
  int? maxValueInteger;
  ToOne<ObjectBoxElement>? maxValueIntegerElement = ToOne<ObjectBoxElement>();
  int? maxValuePositiveInt;
  ToOne<ObjectBoxElement>? maxValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  int? maxValueUnsignedInt;
  ToOne<ObjectBoxElement>? maxValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? maxValueQuantity = ToOne<ObjectBoxQuantity>();
  int? maxLength;
  ToOne<ObjectBoxElement>? maxLengthElement = ToOne<ObjectBoxElement>();
  List<String>? condition;
  ToMany<ObjectBoxElement>? conditionElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxElementDefinitionConstraint>? constraint =
      ToMany<ObjectBoxElementDefinitionConstraint>();
  bool? mustSupport;
  ToOne<ObjectBoxElement>? mustSupportElement = ToOne<ObjectBoxElement>();
  bool? isModifier;
  ToOne<ObjectBoxElement>? isModifierElement = ToOne<ObjectBoxElement>();
  String? isModifierReason;
  ToOne<ObjectBoxElement>? isModifierReasonElement = ToOne<ObjectBoxElement>();
  bool? isSummary;
  ToOne<ObjectBoxElement>? isSummaryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxElementDefinitionBinding>? binding =
      ToOne<ObjectBoxElementDefinitionBinding>();
  ToMany<ObjectBoxElementDefinitionMapping>? mapping =
      ToMany<ObjectBoxElementDefinitionMapping>();
}

@Entity()
class ObjectBoxElementDefinitionSlicing {
  ObjectBoxElementDefinitionSlicing({
    this.id,
    this.extension_,
    this.discriminator,
    this.description,
    this.descriptionElement,
    this.ordered,
    this.orderedElement,
    required this.rules,
    this.rulesElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxElementDefinitionDiscriminator>? discriminator =
      ToMany<ObjectBoxElementDefinitionDiscriminator>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  bool? ordered;
  ToOne<ObjectBoxElement>? orderedElement = ToOne<ObjectBoxElement>();
  String rules;
  ToOne<ObjectBoxElement>? rulesElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionDiscriminator {
  ObjectBoxElementDefinitionDiscriminator({
    this.id,
    this.extension_,
    required this.type,
    this.typeElement,
    required this.path,
    this.pathElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionBase {
  ObjectBoxElementDefinitionBase({
    this.id,
    this.extension_,
    required this.path,
    this.pathElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  int min;
  ToOne<ObjectBoxElement>? minElement = ToOne<ObjectBoxElement>();
  String max;
  ToOne<ObjectBoxElement>? maxElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionType {
  ObjectBoxElementDefinitionType({
    this.id,
    this.extension_,
    required this.code,
    this.codeElement,
    this.profile,
    this.profileElement,
    this.targetProfile,
    this.targetProfileElement,
    this.aggregation,
    this.aggregationElement,
    this.versioning,
    this.versioningElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  List<String>? profile;
  ToMany<ObjectBoxElement>? profileElement = ToMany<ObjectBoxElement>();
  List<String>? targetProfile;
  ToMany<ObjectBoxElement>? targetProfileElement = ToMany<ObjectBoxElement>();
  List<String>? aggregation;
  ToMany<ObjectBoxElement>? aggregationElement = ToMany<ObjectBoxElement>();
  String? versioning;
  ToOne<ObjectBoxElement>? versioningElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionExample {
  ObjectBoxElementDefinitionExample({
    this.id,
    this.extension_,
    required this.label,
    this.labelElement,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueCanonical,
    this.valueCanonicalElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueId,
    this.valueIdElement,
    this.valueInstant,
    this.valueInstantElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueMarkdown,
    this.valueMarkdownElement,
    this.valueOid,
    this.valueOidElement,
    this.valuePositiveInt,
    this.valuePositiveIntElement,
    this.valueString,
    this.valueStringElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    this.valueUri,
    this.valueUriElement,
    this.valueUrl,
    this.valueUrlElement,
    this.valueUuid,
    this.valueUuidElement,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCodeableReference,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueRatioRange,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String label;
  ToOne<ObjectBoxElement>? labelElement = ToOne<ObjectBoxElement>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement>? valueBase64BinaryElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueCanonical;
  ToOne<ObjectBoxElement>? valueCanonicalElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement>? valueCodeElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement>? valueDecimalElement = ToOne<ObjectBoxElement>();
  String? valueId;
  ToOne<ObjectBoxElement>? valueIdElement = ToOne<ObjectBoxElement>();
  String? valueInstant;
  ToOne<ObjectBoxElement>? valueInstantElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueMarkdown;
  ToOne<ObjectBoxElement>? valueMarkdownElement = ToOne<ObjectBoxElement>();
  String? valueOid;
  ToOne<ObjectBoxElement>? valueOidElement = ToOne<ObjectBoxElement>();
  int? valuePositiveInt;
  ToOne<ObjectBoxElement>? valuePositiveIntElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement>? valueTimeElement = ToOne<ObjectBoxElement>();
  int? valueUnsignedInt;
  ToOne<ObjectBoxElement>? valueUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement>? valueUriElement = ToOne<ObjectBoxElement>();
  String? valueUrl;
  ToOne<ObjectBoxElement>? valueUrlElement = ToOne<ObjectBoxElement>();
  String? valueUuid;
  ToOne<ObjectBoxElement>? valueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress>? valueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge>? valueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation>? valueAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference>? valueCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding>? valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint>? valueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount>? valueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance>? valueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration>? valueDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName>? valueHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier>? valueIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney>? valueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod>? valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? valueRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference>? valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData>? valueSampledData = ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature>? valueSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming>? valueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail>? valueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor>? valueContributor = ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement>? valueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? valueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition>? valueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact>? valueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition>? valueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext>? valueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage>? valueDosage = ToOne<ObjectBoxDosage>();
}

@Entity()
class ObjectBoxElementDefinitionConstraint {
  ObjectBoxElementDefinitionConstraint({
    this.id,
    this.extension_,
    required this.key,
    this.keyElement,
    this.requirements,
    this.requirementsElement,
    required this.severity,
    this.severityElement,
    required this.human,
    this.humanElement,
    this.expression,
    this.expressionElement,
    this.xpath,
    this.xpathElement,
    this.source,
    this.sourceElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String key;
  ToOne<ObjectBoxElement>? keyElement = ToOne<ObjectBoxElement>();
  String? requirements;
  ToOne<ObjectBoxElement>? requirementsElement = ToOne<ObjectBoxElement>();
  String severity;
  ToOne<ObjectBoxElement>? severityElement = ToOne<ObjectBoxElement>();
  String human;
  ToOne<ObjectBoxElement>? humanElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
  String? xpath;
  ToOne<ObjectBoxElement>? xpathElement = ToOne<ObjectBoxElement>();
  String? source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionBinding {
  ObjectBoxElementDefinitionBinding({
    this.id,
    this.extension_,
    required this.strength,
    this.strengthElement,
    this.description,
    this.descriptionElement,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String strength;
  ToOne<ObjectBoxElement>? strengthElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? valueSet;
  ToOne<ObjectBoxElement>? valueSetElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionMapping {
  ObjectBoxElementDefinitionMapping({
    this.id,
    this.extension_,
    required this.identity,
    this.identityElement,
    this.language,
    this.languageElement,
    required this.map,
    this.mapElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String identity;
  ToOne<ObjectBoxElement>? identityElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  String map;
  ToOne<ObjectBoxElement>? mapElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
}
