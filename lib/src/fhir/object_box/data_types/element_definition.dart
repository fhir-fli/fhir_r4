// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxElementDefinition {
  ObjectBoxElementDefinition({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.path,
    ObjectBoxElement? pathElement,
    this.representation,
    List<ObjectBoxElement>? representationElement,
    this.sliceName,
    ObjectBoxElement? sliceNameElement,
    this.sliceIsConstraining,
    ObjectBoxElement? sliceIsConstrainingElement,
    this.label,
    ObjectBoxElement? labelElement,
    List<ObjectBoxCoding>? code,
    ObjectBoxElementDefinitionSlicing? slicing,
    this.short,
    ObjectBoxElement? shortElement,
    this.definition,
    ObjectBoxElement? definitionElement,
    this.comment,
    ObjectBoxElement? commentElement,
    this.requirements,
    ObjectBoxElement? requirementsElement,
    this.alias,
    List<ObjectBoxElement>? aliasElement,
    this.min,
    ObjectBoxElement? minElement,
    this.max,
    ObjectBoxElement? maxElement,
    ObjectBoxElementDefinitionBase? base,
    this.contentReference,
    ObjectBoxElement? contentReferenceElement,
    List<ObjectBoxElementDefinitionType>? type,
    this.defaultValueBase64Binary,
    ObjectBoxElement? defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    ObjectBoxElement? defaultValueBooleanElement,
    this.defaultValueCanonical,
    ObjectBoxElement? defaultValueCanonicalElement,
    this.defaultValueCode,
    ObjectBoxElement? defaultValueCodeElement,
    this.defaultValueDate,
    ObjectBoxElement? defaultValueDateElement,
    this.defaultValueDateTime,
    ObjectBoxElement? defaultValueDateTimeElement,
    this.defaultValueDecimal,
    ObjectBoxElement? defaultValueDecimalElement,
    this.defaultValueId,
    ObjectBoxElement? defaultValueIdElement,
    this.defaultValueInstant,
    ObjectBoxElement? defaultValueInstantElement,
    this.defaultValueInteger,
    ObjectBoxElement? defaultValueIntegerElement,
    this.defaultValueMarkdown,
    ObjectBoxElement? defaultValueMarkdownElement,
    this.defaultValueOid,
    ObjectBoxElement? defaultValueOidElement,
    this.defaultValuePositiveInt,
    ObjectBoxElement? defaultValuePositiveIntElement,
    this.defaultValueString,
    ObjectBoxElement? defaultValueStringElement,
    this.defaultValueTime,
    ObjectBoxElement? defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    ObjectBoxElement? defaultValueUnsignedIntElement,
    this.defaultValueUri,
    ObjectBoxElement? defaultValueUriElement,
    this.defaultValueUrl,
    ObjectBoxElement? defaultValueUrlElement,
    this.defaultValueUuid,
    ObjectBoxElement? defaultValueUuidElement,
    ObjectBoxAddress? defaultValueAddress,
    ObjectBoxAge? defaultValueAge,
    ObjectBoxAnnotation? defaultValueAnnotation,
    ObjectBoxAttachment? defaultValueAttachment,
    ObjectBoxCodeableConcept? defaultValueCodeableConcept,
    ObjectBoxCodeableReference? defaultValueCodeableReference,
    ObjectBoxCoding? defaultValueCoding,
    ObjectBoxContactPoint? defaultValueContactPoint,
    ObjectBoxCount? defaultValueCount,
    ObjectBoxDistance? defaultValueDistance,
    ObjectBoxFhirDuration? defaultValueDuration,
    ObjectBoxHumanName? defaultValueHumanName,
    ObjectBoxIdentifier? defaultValueIdentifier,
    ObjectBoxMoney? defaultValueMoney,
    ObjectBoxPeriod? defaultValuePeriod,
    ObjectBoxQuantity? defaultValueQuantity,
    ObjectBoxRange? defaultValueRange,
    ObjectBoxRatio? defaultValueRatio,
    ObjectBoxRatioRange? defaultValueRatioRange,
    ObjectBoxReference? defaultValueReference,
    ObjectBoxSampledData? defaultValueSampledData,
    ObjectBoxSignature? defaultValueSignature,
    ObjectBoxTiming? defaultValueTiming,
    ObjectBoxContactDetail? defaultValueContactDetail,
    ObjectBoxContributor? defaultValueContributor,
    ObjectBoxDataRequirement? defaultValueDataRequirement,
    ObjectBoxFhirExpression? defaultValueExpression,
    ObjectBoxParameterDefinition? defaultValueParameterDefinition,
    ObjectBoxRelatedArtifact? defaultValueRelatedArtifact,
    ObjectBoxTriggerDefinition? defaultValueTriggerDefinition,
    ObjectBoxUsageContext? defaultValueUsageContext,
    ObjectBoxDosage? defaultValueDosage,
    this.meaningWhenMissing,
    ObjectBoxElement? meaningWhenMissingElement,
    this.orderMeaning,
    ObjectBoxElement? orderMeaningElement,
    this.fixedBase64Binary,
    ObjectBoxElement? fixedBase64BinaryElement,
    this.fixedBoolean,
    ObjectBoxElement? fixedBooleanElement,
    this.fixedCanonical,
    ObjectBoxElement? fixedCanonicalElement,
    this.fixedCode,
    ObjectBoxElement? fixedCodeElement,
    this.fixedDate,
    ObjectBoxElement? fixedDateElement,
    this.fixedDateTime,
    ObjectBoxElement? fixedDateTimeElement,
    this.fixedDecimal,
    ObjectBoxElement? fixedDecimalElement,
    this.fixedId,
    ObjectBoxElement? fixedIdElement,
    this.fixedInstant,
    ObjectBoxElement? fixedInstantElement,
    this.fixedInteger,
    ObjectBoxElement? fixedIntegerElement,
    this.fixedMarkdown,
    ObjectBoxElement? fixedMarkdownElement,
    this.fixedOid,
    ObjectBoxElement? fixedOidElement,
    this.fixedPositiveInt,
    ObjectBoxElement? fixedPositiveIntElement,
    this.fixedString,
    ObjectBoxElement? fixedStringElement,
    this.fixedTime,
    ObjectBoxElement? fixedTimeElement,
    this.fixedUnsignedInt,
    ObjectBoxElement? fixedUnsignedIntElement,
    this.fixedUri,
    ObjectBoxElement? fixedUriElement,
    this.fixedUrl,
    ObjectBoxElement? fixedUrlElement,
    this.fixedUuid,
    ObjectBoxElement? fixedUuidElement,
    ObjectBoxAddress? fixedAddress,
    ObjectBoxAge? fixedAge,
    ObjectBoxAnnotation? fixedAnnotation,
    ObjectBoxAttachment? fixedAttachment,
    ObjectBoxCodeableConcept? fixedCodeableConcept,
    ObjectBoxCodeableReference? fixedCodeableReference,
    ObjectBoxCoding? fixedCoding,
    ObjectBoxContactPoint? fixedContactPoint,
    ObjectBoxCount? fixedCount,
    ObjectBoxDistance? fixedDistance,
    ObjectBoxFhirDuration? fixedDuration,
    ObjectBoxHumanName? fixedHumanName,
    ObjectBoxIdentifier? fixedIdentifier,
    ObjectBoxMoney? fixedMoney,
    ObjectBoxPeriod? fixedPeriod,
    ObjectBoxQuantity? fixedQuantity,
    ObjectBoxRange? fixedRange,
    ObjectBoxRatio? fixedRatio,
    ObjectBoxRatioRange? fixedRatioRange,
    ObjectBoxReference? fixedReference,
    ObjectBoxSampledData? fixedSampledData,
    ObjectBoxSignature? fixedSignature,
    ObjectBoxTiming? fixedTiming,
    ObjectBoxContactDetail? fixedContactDetail,
    ObjectBoxContributor? fixedContributor,
    ObjectBoxDataRequirement? fixedDataRequirement,
    ObjectBoxFhirExpression? fixedExpression,
    ObjectBoxParameterDefinition? fixedParameterDefinition,
    ObjectBoxRelatedArtifact? fixedRelatedArtifact,
    ObjectBoxTriggerDefinition? fixedTriggerDefinition,
    ObjectBoxUsageContext? fixedUsageContext,
    ObjectBoxDosage? fixedDosage,
    this.patternBase64Binary,
    ObjectBoxElement? patternBase64BinaryElement,
    this.patternBoolean,
    ObjectBoxElement? patternBooleanElement,
    this.patternCanonical,
    ObjectBoxElement? patternCanonicalElement,
    this.patternCode,
    ObjectBoxElement? patternCodeElement,
    this.patternDate,
    ObjectBoxElement? patternDateElement,
    this.patternDateTime,
    ObjectBoxElement? patternDateTimeElement,
    this.patternDecimal,
    ObjectBoxElement? patternDecimalElement,
    this.patternId,
    ObjectBoxElement? patternIdElement,
    this.patternInstant,
    ObjectBoxElement? patternInstantElement,
    this.patternInteger,
    ObjectBoxElement? patternIntegerElement,
    this.patternMarkdown,
    ObjectBoxElement? patternMarkdownElement,
    this.patternOid,
    ObjectBoxElement? patternOidElement,
    this.patternPositiveInt,
    ObjectBoxElement? patternPositiveIntElement,
    this.patternString,
    ObjectBoxElement? patternStringElement,
    this.patternTime,
    ObjectBoxElement? patternTimeElement,
    this.patternUnsignedInt,
    ObjectBoxElement? patternUnsignedIntElement,
    this.patternUri,
    ObjectBoxElement? patternUriElement,
    this.patternUrl,
    ObjectBoxElement? patternUrlElement,
    this.patternUuid,
    ObjectBoxElement? patternUuidElement,
    ObjectBoxAddress? patternAddress,
    ObjectBoxAge? patternAge,
    ObjectBoxAnnotation? patternAnnotation,
    ObjectBoxAttachment? patternAttachment,
    ObjectBoxCodeableConcept? patternCodeableConcept,
    ObjectBoxCodeableReference? patternCodeableReference,
    ObjectBoxCoding? patternCoding,
    ObjectBoxContactPoint? patternContactPoint,
    ObjectBoxCount? patternCount,
    ObjectBoxDistance? patternDistance,
    ObjectBoxFhirDuration? patternDuration,
    ObjectBoxHumanName? patternHumanName,
    ObjectBoxIdentifier? patternIdentifier,
    ObjectBoxMoney? patternMoney,
    ObjectBoxPeriod? patternPeriod,
    ObjectBoxQuantity? patternQuantity,
    ObjectBoxRange? patternRange,
    ObjectBoxRatio? patternRatio,
    ObjectBoxRatioRange? patternRatioRange,
    ObjectBoxReference? patternReference,
    ObjectBoxSampledData? patternSampledData,
    ObjectBoxSignature? patternSignature,
    ObjectBoxTiming? patternTiming,
    ObjectBoxContactDetail? patternContactDetail,
    ObjectBoxContributor? patternContributor,
    ObjectBoxDataRequirement? patternDataRequirement,
    ObjectBoxFhirExpression? patternExpression,
    ObjectBoxParameterDefinition? patternParameterDefinition,
    ObjectBoxRelatedArtifact? patternRelatedArtifact,
    ObjectBoxTriggerDefinition? patternTriggerDefinition,
    ObjectBoxUsageContext? patternUsageContext,
    ObjectBoxDosage? patternDosage,
    List<ObjectBoxElementDefinitionExample>? example,
    this.minValueDate,
    ObjectBoxElement? minValueDateElement,
    this.minValueDateTime,
    ObjectBoxElement? minValueDateTimeElement,
    this.minValueInstant,
    ObjectBoxElement? minValueInstantElement,
    this.minValueTime,
    ObjectBoxElement? minValueTimeElement,
    this.minValueDecimal,
    ObjectBoxElement? minValueDecimalElement,
    this.minValueInteger,
    ObjectBoxElement? minValueIntegerElement,
    this.minValuePositiveInt,
    ObjectBoxElement? minValuePositiveIntElement,
    this.minValueUnsignedInt,
    ObjectBoxElement? minValueUnsignedIntElement,
    ObjectBoxQuantity? minValueQuantity,
    this.maxValueDate,
    ObjectBoxElement? maxValueDateElement,
    this.maxValueDateTime,
    ObjectBoxElement? maxValueDateTimeElement,
    this.maxValueInstant,
    ObjectBoxElement? maxValueInstantElement,
    this.maxValueTime,
    ObjectBoxElement? maxValueTimeElement,
    this.maxValueDecimal,
    ObjectBoxElement? maxValueDecimalElement,
    this.maxValueInteger,
    ObjectBoxElement? maxValueIntegerElement,
    this.maxValuePositiveInt,
    ObjectBoxElement? maxValuePositiveIntElement,
    this.maxValueUnsignedInt,
    ObjectBoxElement? maxValueUnsignedIntElement,
    ObjectBoxQuantity? maxValueQuantity,
    this.maxLength,
    ObjectBoxElement? maxLengthElement,
    this.condition,
    List<ObjectBoxElement>? conditionElement,
    List<ObjectBoxElementDefinitionConstraint>? constraint,
    this.mustSupport,
    ObjectBoxElement? mustSupportElement,
    this.isModifier,
    ObjectBoxElement? isModifierElement,
    this.isModifierReason,
    ObjectBoxElement? isModifierReasonElement,
    this.isSummary,
    ObjectBoxElement? isSummaryElement,
    ObjectBoxElementDefinitionBinding? binding,
    List<ObjectBoxElementDefinitionMapping>? mapping,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.pathElement.target = pathElement;
    this.representationElement.addAll(representationElement ?? []);
    this.sliceNameElement.target = sliceNameElement;
    this.sliceIsConstrainingElement.target = sliceIsConstrainingElement;
    this.labelElement.target = labelElement;
    this.code.addAll(code ?? []);
    this.slicing.target = slicing;
    this.shortElement.target = shortElement;
    this.definitionElement.target = definitionElement;
    this.commentElement.target = commentElement;
    this.requirementsElement.target = requirementsElement;
    this.aliasElement.addAll(aliasElement ?? []);
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
    this.base.target = base;
    this.contentReferenceElement.target = contentReferenceElement;
    this.type.addAll(type ?? []);
    this.defaultValueBase64BinaryElement.target =
        defaultValueBase64BinaryElement;
    this.defaultValueBooleanElement.target = defaultValueBooleanElement;
    this.defaultValueCanonicalElement.target = defaultValueCanonicalElement;
    this.defaultValueCodeElement.target = defaultValueCodeElement;
    this.defaultValueDateElement.target = defaultValueDateElement;
    this.defaultValueDateTimeElement.target = defaultValueDateTimeElement;
    this.defaultValueDecimalElement.target = defaultValueDecimalElement;
    this.defaultValueIdElement.target = defaultValueIdElement;
    this.defaultValueInstantElement.target = defaultValueInstantElement;
    this.defaultValueIntegerElement.target = defaultValueIntegerElement;
    this.defaultValueMarkdownElement.target = defaultValueMarkdownElement;
    this.defaultValueOidElement.target = defaultValueOidElement;
    this.defaultValuePositiveIntElement.target = defaultValuePositiveIntElement;
    this.defaultValueStringElement.target = defaultValueStringElement;
    this.defaultValueTimeElement.target = defaultValueTimeElement;
    this.defaultValueUnsignedIntElement.target = defaultValueUnsignedIntElement;
    this.defaultValueUriElement.target = defaultValueUriElement;
    this.defaultValueUrlElement.target = defaultValueUrlElement;
    this.defaultValueUuidElement.target = defaultValueUuidElement;
    this.defaultValueAddress.target = defaultValueAddress;
    this.defaultValueAge.target = defaultValueAge;
    this.defaultValueAnnotation.target = defaultValueAnnotation;
    this.defaultValueAttachment.target = defaultValueAttachment;
    this.defaultValueCodeableConcept.target = defaultValueCodeableConcept;
    this.defaultValueCodeableReference.target = defaultValueCodeableReference;
    this.defaultValueCoding.target = defaultValueCoding;
    this.defaultValueContactPoint.target = defaultValueContactPoint;
    this.defaultValueCount.target = defaultValueCount;
    this.defaultValueDistance.target = defaultValueDistance;
    this.defaultValueDuration.target = defaultValueDuration;
    this.defaultValueHumanName.target = defaultValueHumanName;
    this.defaultValueIdentifier.target = defaultValueIdentifier;
    this.defaultValueMoney.target = defaultValueMoney;
    this.defaultValuePeriod.target = defaultValuePeriod;
    this.defaultValueQuantity.target = defaultValueQuantity;
    this.defaultValueRange.target = defaultValueRange;
    this.defaultValueRatio.target = defaultValueRatio;
    this.defaultValueRatioRange.target = defaultValueRatioRange;
    this.defaultValueReference.target = defaultValueReference;
    this.defaultValueSampledData.target = defaultValueSampledData;
    this.defaultValueSignature.target = defaultValueSignature;
    this.defaultValueTiming.target = defaultValueTiming;
    this.defaultValueContactDetail.target = defaultValueContactDetail;
    this.defaultValueContributor.target = defaultValueContributor;
    this.defaultValueDataRequirement.target = defaultValueDataRequirement;
    this.defaultValueExpression.target = defaultValueExpression;
    this.defaultValueParameterDefinition.target =
        defaultValueParameterDefinition;
    this.defaultValueRelatedArtifact.target = defaultValueRelatedArtifact;
    this.defaultValueTriggerDefinition.target = defaultValueTriggerDefinition;
    this.defaultValueUsageContext.target = defaultValueUsageContext;
    this.defaultValueDosage.target = defaultValueDosage;
    this.meaningWhenMissingElement.target = meaningWhenMissingElement;
    this.orderMeaningElement.target = orderMeaningElement;
    this.fixedBase64BinaryElement.target = fixedBase64BinaryElement;
    this.fixedBooleanElement.target = fixedBooleanElement;
    this.fixedCanonicalElement.target = fixedCanonicalElement;
    this.fixedCodeElement.target = fixedCodeElement;
    this.fixedDateElement.target = fixedDateElement;
    this.fixedDateTimeElement.target = fixedDateTimeElement;
    this.fixedDecimalElement.target = fixedDecimalElement;
    this.fixedIdElement.target = fixedIdElement;
    this.fixedInstantElement.target = fixedInstantElement;
    this.fixedIntegerElement.target = fixedIntegerElement;
    this.fixedMarkdownElement.target = fixedMarkdownElement;
    this.fixedOidElement.target = fixedOidElement;
    this.fixedPositiveIntElement.target = fixedPositiveIntElement;
    this.fixedStringElement.target = fixedStringElement;
    this.fixedTimeElement.target = fixedTimeElement;
    this.fixedUnsignedIntElement.target = fixedUnsignedIntElement;
    this.fixedUriElement.target = fixedUriElement;
    this.fixedUrlElement.target = fixedUrlElement;
    this.fixedUuidElement.target = fixedUuidElement;
    this.fixedAddress.target = fixedAddress;
    this.fixedAge.target = fixedAge;
    this.fixedAnnotation.target = fixedAnnotation;
    this.fixedAttachment.target = fixedAttachment;
    this.fixedCodeableConcept.target = fixedCodeableConcept;
    this.fixedCodeableReference.target = fixedCodeableReference;
    this.fixedCoding.target = fixedCoding;
    this.fixedContactPoint.target = fixedContactPoint;
    this.fixedCount.target = fixedCount;
    this.fixedDistance.target = fixedDistance;
    this.fixedDuration.target = fixedDuration;
    this.fixedHumanName.target = fixedHumanName;
    this.fixedIdentifier.target = fixedIdentifier;
    this.fixedMoney.target = fixedMoney;
    this.fixedPeriod.target = fixedPeriod;
    this.fixedQuantity.target = fixedQuantity;
    this.fixedRange.target = fixedRange;
    this.fixedRatio.target = fixedRatio;
    this.fixedRatioRange.target = fixedRatioRange;
    this.fixedReference.target = fixedReference;
    this.fixedSampledData.target = fixedSampledData;
    this.fixedSignature.target = fixedSignature;
    this.fixedTiming.target = fixedTiming;
    this.fixedContactDetail.target = fixedContactDetail;
    this.fixedContributor.target = fixedContributor;
    this.fixedDataRequirement.target = fixedDataRequirement;
    this.fixedExpression.target = fixedExpression;
    this.fixedParameterDefinition.target = fixedParameterDefinition;
    this.fixedRelatedArtifact.target = fixedRelatedArtifact;
    this.fixedTriggerDefinition.target = fixedTriggerDefinition;
    this.fixedUsageContext.target = fixedUsageContext;
    this.fixedDosage.target = fixedDosage;
    this.patternBase64BinaryElement.target = patternBase64BinaryElement;
    this.patternBooleanElement.target = patternBooleanElement;
    this.patternCanonicalElement.target = patternCanonicalElement;
    this.patternCodeElement.target = patternCodeElement;
    this.patternDateElement.target = patternDateElement;
    this.patternDateTimeElement.target = patternDateTimeElement;
    this.patternDecimalElement.target = patternDecimalElement;
    this.patternIdElement.target = patternIdElement;
    this.patternInstantElement.target = patternInstantElement;
    this.patternIntegerElement.target = patternIntegerElement;
    this.patternMarkdownElement.target = patternMarkdownElement;
    this.patternOidElement.target = patternOidElement;
    this.patternPositiveIntElement.target = patternPositiveIntElement;
    this.patternStringElement.target = patternStringElement;
    this.patternTimeElement.target = patternTimeElement;
    this.patternUnsignedIntElement.target = patternUnsignedIntElement;
    this.patternUriElement.target = patternUriElement;
    this.patternUrlElement.target = patternUrlElement;
    this.patternUuidElement.target = patternUuidElement;
    this.patternAddress.target = patternAddress;
    this.patternAge.target = patternAge;
    this.patternAnnotation.target = patternAnnotation;
    this.patternAttachment.target = patternAttachment;
    this.patternCodeableConcept.target = patternCodeableConcept;
    this.patternCodeableReference.target = patternCodeableReference;
    this.patternCoding.target = patternCoding;
    this.patternContactPoint.target = patternContactPoint;
    this.patternCount.target = patternCount;
    this.patternDistance.target = patternDistance;
    this.patternDuration.target = patternDuration;
    this.patternHumanName.target = patternHumanName;
    this.patternIdentifier.target = patternIdentifier;
    this.patternMoney.target = patternMoney;
    this.patternPeriod.target = patternPeriod;
    this.patternQuantity.target = patternQuantity;
    this.patternRange.target = patternRange;
    this.patternRatio.target = patternRatio;
    this.patternRatioRange.target = patternRatioRange;
    this.patternReference.target = patternReference;
    this.patternSampledData.target = patternSampledData;
    this.patternSignature.target = patternSignature;
    this.patternTiming.target = patternTiming;
    this.patternContactDetail.target = patternContactDetail;
    this.patternContributor.target = patternContributor;
    this.patternDataRequirement.target = patternDataRequirement;
    this.patternExpression.target = patternExpression;
    this.patternParameterDefinition.target = patternParameterDefinition;
    this.patternRelatedArtifact.target = patternRelatedArtifact;
    this.patternTriggerDefinition.target = patternTriggerDefinition;
    this.patternUsageContext.target = patternUsageContext;
    this.patternDosage.target = patternDosage;
    this.example.addAll(example ?? []);
    this.minValueDateElement.target = minValueDateElement;
    this.minValueDateTimeElement.target = minValueDateTimeElement;
    this.minValueInstantElement.target = minValueInstantElement;
    this.minValueTimeElement.target = minValueTimeElement;
    this.minValueDecimalElement.target = minValueDecimalElement;
    this.minValueIntegerElement.target = minValueIntegerElement;
    this.minValuePositiveIntElement.target = minValuePositiveIntElement;
    this.minValueUnsignedIntElement.target = minValueUnsignedIntElement;
    this.minValueQuantity.target = minValueQuantity;
    this.maxValueDateElement.target = maxValueDateElement;
    this.maxValueDateTimeElement.target = maxValueDateTimeElement;
    this.maxValueInstantElement.target = maxValueInstantElement;
    this.maxValueTimeElement.target = maxValueTimeElement;
    this.maxValueDecimalElement.target = maxValueDecimalElement;
    this.maxValueIntegerElement.target = maxValueIntegerElement;
    this.maxValuePositiveIntElement.target = maxValuePositiveIntElement;
    this.maxValueUnsignedIntElement.target = maxValueUnsignedIntElement;
    this.maxValueQuantity.target = maxValueQuantity;
    this.maxLengthElement.target = maxLengthElement;
    this.conditionElement.addAll(conditionElement ?? []);
    this.constraint.addAll(constraint ?? []);
    this.mustSupportElement.target = mustSupportElement;
    this.isModifierElement.target = isModifierElement;
    this.isModifierReasonElement.target = isModifierReasonElement;
    this.isSummaryElement.target = isSummaryElement;
    this.binding.target = binding;
    this.mapping.addAll(mapping ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  List<String>? representation;
  ToMany<ObjectBoxElement> representationElement = ToMany<ObjectBoxElement>();
  String? sliceName;
  ToOne<ObjectBoxElement> sliceNameElement = ToOne<ObjectBoxElement>();
  bool? sliceIsConstraining;
  ToOne<ObjectBoxElement> sliceIsConstrainingElement =
      ToOne<ObjectBoxElement>();
  String? label;
  ToOne<ObjectBoxElement> labelElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding> code = ToMany<ObjectBoxCoding>();
  ToOne<ObjectBoxElementDefinitionSlicing> slicing =
      ToOne<ObjectBoxElementDefinitionSlicing>();
  String? short;
  ToOne<ObjectBoxElement> shortElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  String? requirements;
  ToOne<ObjectBoxElement> requirementsElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement> aliasElement = ToMany<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxElementDefinitionBase> base =
      ToOne<ObjectBoxElementDefinitionBase>();
  String? contentReference;
  ToOne<ObjectBoxElement> contentReferenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxElementDefinitionType> type =
      ToMany<ObjectBoxElementDefinitionType>();
  String? defaultValueBase64Binary;
  ToOne<ObjectBoxElement> defaultValueBase64BinaryElement =
      ToOne<ObjectBoxElement>();
  bool? defaultValueBoolean;
  ToOne<ObjectBoxElement> defaultValueBooleanElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCanonical;
  ToOne<ObjectBoxElement> defaultValueCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCode;
  ToOne<ObjectBoxElement> defaultValueCodeElement = ToOne<ObjectBoxElement>();
  String? defaultValueDate;
  ToOne<ObjectBoxElement> defaultValueDateElement = ToOne<ObjectBoxElement>();
  String? defaultValueDateTime;
  ToOne<ObjectBoxElement> defaultValueDateTimeElement =
      ToOne<ObjectBoxElement>();
  double? defaultValueDecimal;
  ToOne<ObjectBoxElement> defaultValueDecimalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueId;
  ToOne<ObjectBoxElement> defaultValueIdElement = ToOne<ObjectBoxElement>();
  String? defaultValueInstant;
  ToOne<ObjectBoxElement> defaultValueInstantElement =
      ToOne<ObjectBoxElement>();
  int? defaultValueInteger;
  ToOne<ObjectBoxElement> defaultValueIntegerElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueMarkdown;
  ToOne<ObjectBoxElement> defaultValueMarkdownElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueOid;
  ToOne<ObjectBoxElement> defaultValueOidElement = ToOne<ObjectBoxElement>();
  int? defaultValuePositiveInt;
  ToOne<ObjectBoxElement> defaultValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueString;
  ToOne<ObjectBoxElement> defaultValueStringElement = ToOne<ObjectBoxElement>();
  String? defaultValueTime;
  ToOne<ObjectBoxElement> defaultValueTimeElement = ToOne<ObjectBoxElement>();
  int? defaultValueUnsignedInt;
  ToOne<ObjectBoxElement> defaultValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueUri;
  ToOne<ObjectBoxElement> defaultValueUriElement = ToOne<ObjectBoxElement>();
  String? defaultValueUrl;
  ToOne<ObjectBoxElement> defaultValueUrlElement = ToOne<ObjectBoxElement>();
  String? defaultValueUuid;
  ToOne<ObjectBoxElement> defaultValueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress> defaultValueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge> defaultValueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation> defaultValueAnnotation =
      ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment> defaultValueAttachment =
      ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> defaultValueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference> defaultValueCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding> defaultValueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint> defaultValueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount> defaultValueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance> defaultValueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration> defaultValueDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName> defaultValueHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier> defaultValueIdentifier =
      ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney> defaultValueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod> defaultValuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity> defaultValueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> defaultValueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> defaultValueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> defaultValueRatioRange =
      ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference> defaultValueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData> defaultValueSampledData =
      ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature> defaultValueSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming> defaultValueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail> defaultValueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor> defaultValueContributor =
      ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement> defaultValueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> defaultValueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition> defaultValueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact> defaultValueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition> defaultValueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext> defaultValueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage> defaultValueDosage = ToOne<ObjectBoxDosage>();
  String? meaningWhenMissing;
  ToOne<ObjectBoxElement> meaningWhenMissingElement = ToOne<ObjectBoxElement>();
  String? orderMeaning;
  ToOne<ObjectBoxElement> orderMeaningElement = ToOne<ObjectBoxElement>();
  String? fixedBase64Binary;
  ToOne<ObjectBoxElement> fixedBase64BinaryElement = ToOne<ObjectBoxElement>();
  bool? fixedBoolean;
  ToOne<ObjectBoxElement> fixedBooleanElement = ToOne<ObjectBoxElement>();
  String? fixedCanonical;
  ToOne<ObjectBoxElement> fixedCanonicalElement = ToOne<ObjectBoxElement>();
  String? fixedCode;
  ToOne<ObjectBoxElement> fixedCodeElement = ToOne<ObjectBoxElement>();
  String? fixedDate;
  ToOne<ObjectBoxElement> fixedDateElement = ToOne<ObjectBoxElement>();
  String? fixedDateTime;
  ToOne<ObjectBoxElement> fixedDateTimeElement = ToOne<ObjectBoxElement>();
  double? fixedDecimal;
  ToOne<ObjectBoxElement> fixedDecimalElement = ToOne<ObjectBoxElement>();
  String? fixedId;
  ToOne<ObjectBoxElement> fixedIdElement = ToOne<ObjectBoxElement>();
  String? fixedInstant;
  ToOne<ObjectBoxElement> fixedInstantElement = ToOne<ObjectBoxElement>();
  int? fixedInteger;
  ToOne<ObjectBoxElement> fixedIntegerElement = ToOne<ObjectBoxElement>();
  String? fixedMarkdown;
  ToOne<ObjectBoxElement> fixedMarkdownElement = ToOne<ObjectBoxElement>();
  String? fixedOid;
  ToOne<ObjectBoxElement> fixedOidElement = ToOne<ObjectBoxElement>();
  int? fixedPositiveInt;
  ToOne<ObjectBoxElement> fixedPositiveIntElement = ToOne<ObjectBoxElement>();
  String? fixedString;
  ToOne<ObjectBoxElement> fixedStringElement = ToOne<ObjectBoxElement>();
  String? fixedTime;
  ToOne<ObjectBoxElement> fixedTimeElement = ToOne<ObjectBoxElement>();
  int? fixedUnsignedInt;
  ToOne<ObjectBoxElement> fixedUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? fixedUri;
  ToOne<ObjectBoxElement> fixedUriElement = ToOne<ObjectBoxElement>();
  String? fixedUrl;
  ToOne<ObjectBoxElement> fixedUrlElement = ToOne<ObjectBoxElement>();
  String? fixedUuid;
  ToOne<ObjectBoxElement> fixedUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress> fixedAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge> fixedAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation> fixedAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment> fixedAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> fixedCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference> fixedCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding> fixedCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint> fixedContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount> fixedCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance> fixedDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration> fixedDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName> fixedHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier> fixedIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney> fixedMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod> fixedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity> fixedQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> fixedRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> fixedRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> fixedRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference> fixedReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData> fixedSampledData = ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature> fixedSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming> fixedTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail> fixedContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor> fixedContributor = ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement> fixedDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> fixedExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition> fixedParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact> fixedRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition> fixedTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext> fixedUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage> fixedDosage = ToOne<ObjectBoxDosage>();
  String? patternBase64Binary;
  ToOne<ObjectBoxElement> patternBase64BinaryElement =
      ToOne<ObjectBoxElement>();
  bool? patternBoolean;
  ToOne<ObjectBoxElement> patternBooleanElement = ToOne<ObjectBoxElement>();
  String? patternCanonical;
  ToOne<ObjectBoxElement> patternCanonicalElement = ToOne<ObjectBoxElement>();
  String? patternCode;
  ToOne<ObjectBoxElement> patternCodeElement = ToOne<ObjectBoxElement>();
  String? patternDate;
  ToOne<ObjectBoxElement> patternDateElement = ToOne<ObjectBoxElement>();
  String? patternDateTime;
  ToOne<ObjectBoxElement> patternDateTimeElement = ToOne<ObjectBoxElement>();
  double? patternDecimal;
  ToOne<ObjectBoxElement> patternDecimalElement = ToOne<ObjectBoxElement>();
  String? patternId;
  ToOne<ObjectBoxElement> patternIdElement = ToOne<ObjectBoxElement>();
  String? patternInstant;
  ToOne<ObjectBoxElement> patternInstantElement = ToOne<ObjectBoxElement>();
  int? patternInteger;
  ToOne<ObjectBoxElement> patternIntegerElement = ToOne<ObjectBoxElement>();
  String? patternMarkdown;
  ToOne<ObjectBoxElement> patternMarkdownElement = ToOne<ObjectBoxElement>();
  String? patternOid;
  ToOne<ObjectBoxElement> patternOidElement = ToOne<ObjectBoxElement>();
  int? patternPositiveInt;
  ToOne<ObjectBoxElement> patternPositiveIntElement = ToOne<ObjectBoxElement>();
  String? patternString;
  ToOne<ObjectBoxElement> patternStringElement = ToOne<ObjectBoxElement>();
  String? patternTime;
  ToOne<ObjectBoxElement> patternTimeElement = ToOne<ObjectBoxElement>();
  int? patternUnsignedInt;
  ToOne<ObjectBoxElement> patternUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? patternUri;
  ToOne<ObjectBoxElement> patternUriElement = ToOne<ObjectBoxElement>();
  String? patternUrl;
  ToOne<ObjectBoxElement> patternUrlElement = ToOne<ObjectBoxElement>();
  String? patternUuid;
  ToOne<ObjectBoxElement> patternUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress> patternAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge> patternAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation> patternAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment> patternAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> patternCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference> patternCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding> patternCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint> patternContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount> patternCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance> patternDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration> patternDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName> patternHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier> patternIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney> patternMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod> patternPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity> patternQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> patternRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> patternRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> patternRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference> patternReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData> patternSampledData =
      ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature> patternSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming> patternTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail> patternContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor> patternContributor =
      ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement> patternDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> patternExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition> patternParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact> patternRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition> patternTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext> patternUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage> patternDosage = ToOne<ObjectBoxDosage>();
  ToMany<ObjectBoxElementDefinitionExample> example =
      ToMany<ObjectBoxElementDefinitionExample>();
  String? minValueDate;
  ToOne<ObjectBoxElement> minValueDateElement = ToOne<ObjectBoxElement>();
  String? minValueDateTime;
  ToOne<ObjectBoxElement> minValueDateTimeElement = ToOne<ObjectBoxElement>();
  String? minValueInstant;
  ToOne<ObjectBoxElement> minValueInstantElement = ToOne<ObjectBoxElement>();
  String? minValueTime;
  ToOne<ObjectBoxElement> minValueTimeElement = ToOne<ObjectBoxElement>();
  double? minValueDecimal;
  ToOne<ObjectBoxElement> minValueDecimalElement = ToOne<ObjectBoxElement>();
  int? minValueInteger;
  ToOne<ObjectBoxElement> minValueIntegerElement = ToOne<ObjectBoxElement>();
  int? minValuePositiveInt;
  ToOne<ObjectBoxElement> minValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  int? minValueUnsignedInt;
  ToOne<ObjectBoxElement> minValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> minValueQuantity = ToOne<ObjectBoxQuantity>();
  String? maxValueDate;
  ToOne<ObjectBoxElement> maxValueDateElement = ToOne<ObjectBoxElement>();
  String? maxValueDateTime;
  ToOne<ObjectBoxElement> maxValueDateTimeElement = ToOne<ObjectBoxElement>();
  String? maxValueInstant;
  ToOne<ObjectBoxElement> maxValueInstantElement = ToOne<ObjectBoxElement>();
  String? maxValueTime;
  ToOne<ObjectBoxElement> maxValueTimeElement = ToOne<ObjectBoxElement>();
  double? maxValueDecimal;
  ToOne<ObjectBoxElement> maxValueDecimalElement = ToOne<ObjectBoxElement>();
  int? maxValueInteger;
  ToOne<ObjectBoxElement> maxValueIntegerElement = ToOne<ObjectBoxElement>();
  int? maxValuePositiveInt;
  ToOne<ObjectBoxElement> maxValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  int? maxValueUnsignedInt;
  ToOne<ObjectBoxElement> maxValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> maxValueQuantity = ToOne<ObjectBoxQuantity>();
  int? maxLength;
  ToOne<ObjectBoxElement> maxLengthElement = ToOne<ObjectBoxElement>();
  List<String>? condition;
  ToMany<ObjectBoxElement> conditionElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxElementDefinitionConstraint> constraint =
      ToMany<ObjectBoxElementDefinitionConstraint>();
  bool? mustSupport;
  ToOne<ObjectBoxElement> mustSupportElement = ToOne<ObjectBoxElement>();
  bool? isModifier;
  ToOne<ObjectBoxElement> isModifierElement = ToOne<ObjectBoxElement>();
  String? isModifierReason;
  ToOne<ObjectBoxElement> isModifierReasonElement = ToOne<ObjectBoxElement>();
  bool? isSummary;
  ToOne<ObjectBoxElement> isSummaryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxElementDefinitionBinding> binding =
      ToOne<ObjectBoxElementDefinitionBinding>();
  ToMany<ObjectBoxElementDefinitionMapping> mapping =
      ToMany<ObjectBoxElementDefinitionMapping>();
}

@Entity()
class ObjectBoxElementDefinitionSlicing {
  ObjectBoxElementDefinitionSlicing({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxElementDefinitionDiscriminator>? discriminator,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.ordered,
    ObjectBoxElement? orderedElement,
    required this.rules,
    ObjectBoxElement? rulesElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.discriminator.addAll(discriminator ?? []);
    this.descriptionElement.target = descriptionElement;
    this.orderedElement.target = orderedElement;
    this.rulesElement.target = rulesElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxElementDefinitionDiscriminator> discriminator =
      ToMany<ObjectBoxElementDefinitionDiscriminator>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  bool? ordered;
  ToOne<ObjectBoxElement> orderedElement = ToOne<ObjectBoxElement>();
  String rules;
  ToOne<ObjectBoxElement> rulesElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionDiscriminator {
  ObjectBoxElementDefinitionDiscriminator({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.path,
    ObjectBoxElement? pathElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.typeElement.target = typeElement;
    this.pathElement.target = pathElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionBase {
  ObjectBoxElementDefinitionBase({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.path,
    ObjectBoxElement? pathElement,
    required this.min,
    ObjectBoxElement? minElement,
    required this.max,
    ObjectBoxElement? maxElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.pathElement.target = pathElement;
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  int min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionType {
  ObjectBoxElementDefinitionType({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.code,
    ObjectBoxElement? codeElement,
    this.profile,
    List<ObjectBoxElement>? profileElement,
    this.targetProfile,
    List<ObjectBoxElement>? targetProfileElement,
    this.aggregation,
    List<ObjectBoxElement>? aggregationElement,
    this.versioning,
    ObjectBoxElement? versioningElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.codeElement.target = codeElement;
    this.profileElement.addAll(profileElement ?? []);
    this.targetProfileElement.addAll(targetProfileElement ?? []);
    this.aggregationElement.addAll(aggregationElement ?? []);
    this.versioningElement.target = versioningElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  List<String>? profile;
  ToMany<ObjectBoxElement> profileElement = ToMany<ObjectBoxElement>();
  List<String>? targetProfile;
  ToMany<ObjectBoxElement> targetProfileElement = ToMany<ObjectBoxElement>();
  List<String>? aggregation;
  ToMany<ObjectBoxElement> aggregationElement = ToMany<ObjectBoxElement>();
  String? versioning;
  ToOne<ObjectBoxElement> versioningElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionExample {
  ObjectBoxElementDefinitionExample({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.label,
    ObjectBoxElement? labelElement,
    this.valueBase64Binary,
    ObjectBoxElement? valueBase64BinaryElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueCanonical,
    ObjectBoxElement? valueCanonicalElement,
    this.valueCode,
    ObjectBoxElement? valueCodeElement,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
    this.valueId,
    ObjectBoxElement? valueIdElement,
    this.valueInstant,
    ObjectBoxElement? valueInstantElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueMarkdown,
    ObjectBoxElement? valueMarkdownElement,
    this.valueOid,
    ObjectBoxElement? valueOidElement,
    this.valuePositiveInt,
    ObjectBoxElement? valuePositiveIntElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueUnsignedInt,
    ObjectBoxElement? valueUnsignedIntElement,
    this.valueUri,
    ObjectBoxElement? valueUriElement,
    this.valueUrl,
    ObjectBoxElement? valueUrlElement,
    this.valueUuid,
    ObjectBoxElement? valueUuidElement,
    ObjectBoxAddress? valueAddress,
    ObjectBoxAge? valueAge,
    ObjectBoxAnnotation? valueAnnotation,
    ObjectBoxAttachment? valueAttachment,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxCodeableReference? valueCodeableReference,
    ObjectBoxCoding? valueCoding,
    ObjectBoxContactPoint? valueContactPoint,
    ObjectBoxCount? valueCount,
    ObjectBoxDistance? valueDistance,
    ObjectBoxFhirDuration? valueDuration,
    ObjectBoxHumanName? valueHumanName,
    ObjectBoxIdentifier? valueIdentifier,
    ObjectBoxMoney? valueMoney,
    ObjectBoxPeriod? valuePeriod,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    ObjectBoxRatio? valueRatio,
    ObjectBoxRatioRange? valueRatioRange,
    ObjectBoxReference? valueReference,
    ObjectBoxSampledData? valueSampledData,
    ObjectBoxSignature? valueSignature,
    ObjectBoxTiming? valueTiming,
    ObjectBoxContactDetail? valueContactDetail,
    ObjectBoxContributor? valueContributor,
    ObjectBoxDataRequirement? valueDataRequirement,
    ObjectBoxFhirExpression? valueExpression,
    ObjectBoxParameterDefinition? valueParameterDefinition,
    ObjectBoxRelatedArtifact? valueRelatedArtifact,
    ObjectBoxTriggerDefinition? valueTriggerDefinition,
    ObjectBoxUsageContext? valueUsageContext,
    ObjectBoxDosage? valueDosage,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.labelElement.target = labelElement;
    this.valueBase64BinaryElement.target = valueBase64BinaryElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueCanonicalElement.target = valueCanonicalElement;
    this.valueCodeElement.target = valueCodeElement;
    this.valueDateElement.target = valueDateElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valueDecimalElement.target = valueDecimalElement;
    this.valueIdElement.target = valueIdElement;
    this.valueInstantElement.target = valueInstantElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueMarkdownElement.target = valueMarkdownElement;
    this.valueOidElement.target = valueOidElement;
    this.valuePositiveIntElement.target = valuePositiveIntElement;
    this.valueStringElement.target = valueStringElement;
    this.valueTimeElement.target = valueTimeElement;
    this.valueUnsignedIntElement.target = valueUnsignedIntElement;
    this.valueUriElement.target = valueUriElement;
    this.valueUrlElement.target = valueUrlElement;
    this.valueUuidElement.target = valueUuidElement;
    this.valueAddress.target = valueAddress;
    this.valueAge.target = valueAge;
    this.valueAnnotation.target = valueAnnotation;
    this.valueAttachment.target = valueAttachment;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueCodeableReference.target = valueCodeableReference;
    this.valueCoding.target = valueCoding;
    this.valueContactPoint.target = valueContactPoint;
    this.valueCount.target = valueCount;
    this.valueDistance.target = valueDistance;
    this.valueDuration.target = valueDuration;
    this.valueHumanName.target = valueHumanName;
    this.valueIdentifier.target = valueIdentifier;
    this.valueMoney.target = valueMoney;
    this.valuePeriod.target = valuePeriod;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.valueRatio.target = valueRatio;
    this.valueRatioRange.target = valueRatioRange;
    this.valueReference.target = valueReference;
    this.valueSampledData.target = valueSampledData;
    this.valueSignature.target = valueSignature;
    this.valueTiming.target = valueTiming;
    this.valueContactDetail.target = valueContactDetail;
    this.valueContributor.target = valueContributor;
    this.valueDataRequirement.target = valueDataRequirement;
    this.valueExpression.target = valueExpression;
    this.valueParameterDefinition.target = valueParameterDefinition;
    this.valueRelatedArtifact.target = valueRelatedArtifact;
    this.valueTriggerDefinition.target = valueTriggerDefinition;
    this.valueUsageContext.target = valueUsageContext;
    this.valueDosage.target = valueDosage;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String label;
  ToOne<ObjectBoxElement> labelElement = ToOne<ObjectBoxElement>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement> valueBase64BinaryElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueCanonical;
  ToOne<ObjectBoxElement> valueCanonicalElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement> valueCodeElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
  String? valueId;
  ToOne<ObjectBoxElement> valueIdElement = ToOne<ObjectBoxElement>();
  String? valueInstant;
  ToOne<ObjectBoxElement> valueInstantElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueMarkdown;
  ToOne<ObjectBoxElement> valueMarkdownElement = ToOne<ObjectBoxElement>();
  String? valueOid;
  ToOne<ObjectBoxElement> valueOidElement = ToOne<ObjectBoxElement>();
  int? valuePositiveInt;
  ToOne<ObjectBoxElement> valuePositiveIntElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  int? valueUnsignedInt;
  ToOne<ObjectBoxElement> valueUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement> valueUriElement = ToOne<ObjectBoxElement>();
  String? valueUrl;
  ToOne<ObjectBoxElement> valueUrlElement = ToOne<ObjectBoxElement>();
  String? valueUuid;
  ToOne<ObjectBoxElement> valueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress> valueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge> valueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation> valueAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference> valueCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding> valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint> valueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount> valueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance> valueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration> valueDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName> valueHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier> valueIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney> valueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod> valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> valueRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData> valueSampledData = ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature> valueSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming> valueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail> valueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor> valueContributor = ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement> valueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> valueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition> valueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact> valueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition> valueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext> valueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage> valueDosage = ToOne<ObjectBoxDosage>();
}

@Entity()
class ObjectBoxElementDefinitionConstraint {
  ObjectBoxElementDefinitionConstraint({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.key,
    ObjectBoxElement? keyElement,
    this.requirements,
    ObjectBoxElement? requirementsElement,
    required this.severity,
    ObjectBoxElement? severityElement,
    required this.human,
    ObjectBoxElement? humanElement,
    this.expression,
    ObjectBoxElement? expressionElement,
    this.xpath,
    ObjectBoxElement? xpathElement,
    this.source,
    ObjectBoxElement? sourceElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.keyElement.target = keyElement;
    this.requirementsElement.target = requirementsElement;
    this.severityElement.target = severityElement;
    this.humanElement.target = humanElement;
    this.expressionElement.target = expressionElement;
    this.xpathElement.target = xpathElement;
    this.sourceElement.target = sourceElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String key;
  ToOne<ObjectBoxElement> keyElement = ToOne<ObjectBoxElement>();
  String? requirements;
  ToOne<ObjectBoxElement> requirementsElement = ToOne<ObjectBoxElement>();
  String severity;
  ToOne<ObjectBoxElement> severityElement = ToOne<ObjectBoxElement>();
  String human;
  ToOne<ObjectBoxElement> humanElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  String? xpath;
  ToOne<ObjectBoxElement> xpathElement = ToOne<ObjectBoxElement>();
  String? source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionBinding {
  ObjectBoxElementDefinitionBinding({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.strength,
    ObjectBoxElement? strengthElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.valueSet,
    ObjectBoxElement? valueSetElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.strengthElement.target = strengthElement;
    this.descriptionElement.target = descriptionElement;
    this.valueSetElement.target = valueSetElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String strength;
  ToOne<ObjectBoxElement> strengthElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? valueSet;
  ToOne<ObjectBoxElement> valueSetElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxElementDefinitionMapping {
  ObjectBoxElementDefinitionMapping({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.identity,
    ObjectBoxElement? identityElement,
    this.language,
    ObjectBoxElement? languageElement,
    required this.map,
    ObjectBoxElement? mapElement,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.identityElement.target = identityElement;
    this.languageElement.target = languageElement;
    this.mapElement.target = mapElement;
    this.commentElement.target = commentElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String identity;
  ToOne<ObjectBoxElement> identityElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  String map;
  ToOne<ObjectBoxElement> mapElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}
