// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElementDefinition _$ElementDefinitionFromJson(Map<String, dynamic> json) =>
    ElementDefinition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] == null
          ? null
          : Element.fromJson(json['_path'] as Map<String, dynamic>),
      representation: (json['representation'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      representationElement: (json['_representation'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      sliceName: json['sliceName'] == null
          ? null
          : FhirString.fromJson(json['sliceName']),
      sliceNameElement: json['_sliceName'] == null
          ? null
          : Element.fromJson(json['_sliceName'] as Map<String, dynamic>),
      sliceIsConstraining: json['sliceIsConstraining'] == null
          ? null
          : FhirBoolean.fromJson(json['sliceIsConstraining']),
      sliceIsConstrainingElement: json['_sliceIsConstraining'] == null
          ? null
          : Element.fromJson(
              json['_sliceIsConstraining'] as Map<String, dynamic>),
      label: json['label'] == null ? null : FhirString.fromJson(json['label']),
      labelElement: json['_label'] == null
          ? null
          : Element.fromJson(json['_label'] as Map<String, dynamic>),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      slicing: json['slicing'] == null
          ? null
          : Element.fromJson(json['slicing'] as Map<String, dynamic>),
      short: json['short'] == null ? null : FhirString.fromJson(json['short']),
      shortElement: json['_short'] == null
          ? null
          : Element.fromJson(json['_short'] as Map<String, dynamic>),
      definition: json['definition'] == null
          ? null
          : FhirMarkdown.fromJson(json['definition']),
      definitionElement: json['_definition'] == null
          ? null
          : Element.fromJson(json['_definition'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : FhirMarkdown.fromJson(json['comment']),
      commentElement: json['_comment'] == null
          ? null
          : Element.fromJson(json['_comment'] as Map<String, dynamic>),
      requirements: json['requirements'] == null
          ? null
          : FhirMarkdown.fromJson(json['requirements']),
      requirementsElement: json['_requirements'] == null
          ? null
          : Element.fromJson(json['_requirements'] as Map<String, dynamic>),
      alias:
          (json['alias'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      aliasElement: (json['_alias'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      min: json['min'] == null ? null : FhirUnsignedInt.fromJson(json['min']),
      minElement: json['_min'] == null
          ? null
          : Element.fromJson(json['_min'] as Map<String, dynamic>),
      max: json['max'] == null ? null : FhirString.fromJson(json['max']),
      maxElement: json['_max'] == null
          ? null
          : Element.fromJson(json['_max'] as Map<String, dynamic>),
      base: json['base'] == null
          ? null
          : Element.fromJson(json['base'] as Map<String, dynamic>),
      contentReference: json['contentReference'] == null
          ? null
          : FhirUri.fromJson(json['contentReference']),
      contentReferenceElement: json['_contentReference'] == null
          ? null
          : Element.fromJson(json['_contentReference'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultValueBase64Binary: json['defaultValueBase64Binary'] == null
          ? null
          : FhirBase64Binary.fromJson(json['defaultValueBase64Binary']),
      defaultValueBase64BinaryElement: json['_defaultValueBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueBase64Binary'] as Map<String, dynamic>),
      defaultValueBoolean: json['defaultValueBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['defaultValueBoolean']),
      defaultValueBooleanElement: json['_defaultValueBoolean'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueBoolean'] as Map<String, dynamic>),
      defaultValueCanonical: json['defaultValueCanonical'] == null
          ? null
          : FhirCanonical.fromJson(json['defaultValueCanonical']),
      defaultValueCanonicalElement: json['_defaultValueCanonical'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueCanonical'] as Map<String, dynamic>),
      defaultValueCode: json['defaultValueCode'] == null
          ? null
          : FhirCode.fromJson(json['defaultValueCode']),
      defaultValueCodeElement: json['_defaultValueCode'] == null
          ? null
          : Element.fromJson(json['_defaultValueCode'] as Map<String, dynamic>),
      defaultValueDate: json['defaultValueDate'] == null
          ? null
          : FhirDate.fromJson(json['defaultValueDate'] as String),
      defaultValueDateElement: json['_defaultValueDate'] == null
          ? null
          : Element.fromJson(json['_defaultValueDate'] as Map<String, dynamic>),
      defaultValueDateTime: json['defaultValueDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['defaultValueDateTime'] as String),
      defaultValueDateTimeElement: json['_defaultValueDateTime'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueDateTime'] as Map<String, dynamic>),
      defaultValueDecimal: json['defaultValueDecimal'] == null
          ? null
          : FhirDecimal.fromJson(json['defaultValueDecimal']),
      defaultValueDecimalElement: json['_defaultValueDecimal'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueDecimal'] as Map<String, dynamic>),
      defaultValueId: json['defaultValueId'] == null
          ? null
          : FhirId.fromJson(json['defaultValueId']),
      defaultValueIdElement: json['_defaultValueId'] == null
          ? null
          : Element.fromJson(json['_defaultValueId'] as Map<String, dynamic>),
      defaultValueInstant: json['defaultValueInstant'] == null
          ? null
          : FhirInstant.fromJson(json['defaultValueInstant'] as String),
      defaultValueInstantElement: json['_defaultValueInstant'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueInstant'] as Map<String, dynamic>),
      defaultValueInteger: json['defaultValueInteger'] == null
          ? null
          : FhirInteger.fromJson(json['defaultValueInteger']),
      defaultValueIntegerElement: json['_defaultValueInteger'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueInteger'] as Map<String, dynamic>),
      defaultValueMarkdown: json['defaultValueMarkdown'] == null
          ? null
          : FhirMarkdown.fromJson(json['defaultValueMarkdown']),
      defaultValueMarkdownElement: json['_defaultValueMarkdown'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueMarkdown'] as Map<String, dynamic>),
      defaultValueOid: json['defaultValueOid'] == null
          ? null
          : FhirOid.fromJson(json['defaultValueOid']),
      defaultValueOidElement: json['_defaultValueOid'] == null
          ? null
          : Element.fromJson(json['_defaultValueOid'] as Map<String, dynamic>),
      defaultValuePositiveInt: json['defaultValuePositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['defaultValuePositiveInt']),
      defaultValuePositiveIntElement: json['_defaultValuePositiveInt'] == null
          ? null
          : Element.fromJson(
              json['_defaultValuePositiveInt'] as Map<String, dynamic>),
      defaultValueString: json['defaultValueString'] == null
          ? null
          : FhirString.fromJson(json['defaultValueString']),
      defaultValueStringElement: json['_defaultValueString'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueString'] as Map<String, dynamic>),
      defaultValueTime: json['defaultValueTime'] == null
          ? null
          : FhirTime.fromJson(json['defaultValueTime']),
      defaultValueTimeElement: json['_defaultValueTime'] == null
          ? null
          : Element.fromJson(json['_defaultValueTime'] as Map<String, dynamic>),
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['defaultValueUnsignedInt']),
      defaultValueUnsignedIntElement: json['_defaultValueUnsignedInt'] == null
          ? null
          : Element.fromJson(
              json['_defaultValueUnsignedInt'] as Map<String, dynamic>),
      defaultValueUri: json['defaultValueUri'] == null
          ? null
          : FhirUri.fromJson(json['defaultValueUri']),
      defaultValueUriElement: json['_defaultValueUri'] == null
          ? null
          : Element.fromJson(json['_defaultValueUri'] as Map<String, dynamic>),
      defaultValueUrl: json['defaultValueUrl'] == null
          ? null
          : FhirUrl.fromJson(json['defaultValueUrl']),
      defaultValueUrlElement: json['_defaultValueUrl'] == null
          ? null
          : Element.fromJson(json['_defaultValueUrl'] as Map<String, dynamic>),
      defaultValueUuid: json['defaultValueUuid'] == null
          ? null
          : FhirUuid.fromJson(json['defaultValueUuid']),
      defaultValueUuidElement: json['_defaultValueUuid'] == null
          ? null
          : Element.fromJson(json['_defaultValueUuid'] as Map<String, dynamic>),
      defaultValueAddress: json['defaultValueAddress'] == null
          ? null
          : Address.fromJson(
              json['defaultValueAddress'] as Map<String, dynamic>),
      defaultValueAge: json['defaultValueAge'] == null
          ? null
          : Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>),
      defaultValueAnnotation: json['defaultValueAnnotation'] == null
          ? null
          : Annotation.fromJson(
              json['defaultValueAnnotation'] as Map<String, dynamic>),
      defaultValueAttachment: json['defaultValueAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['defaultValueAttachment'] as Map<String, dynamic>),
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['defaultValueCodeableConcept'] as Map<String, dynamic>),
      defaultValueCodeableReference: json['defaultValueCodeableReference'] ==
              null
          ? null
          : CodeableReference.fromJson(
              json['defaultValueCodeableReference'] as Map<String, dynamic>),
      defaultValueCoding: json['defaultValueCoding'] == null
          ? null
          : Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>),
      defaultValueContactPoint: json['defaultValueContactPoint'] == null
          ? null
          : ContactPoint.fromJson(
              json['defaultValueContactPoint'] as Map<String, dynamic>),
      defaultValueCount: json['defaultValueCount'] == null
          ? null
          : Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>),
      defaultValueDistance: json['defaultValueDistance'] == null
          ? null
          : Distance.fromJson(
              json['defaultValueDistance'] as Map<String, dynamic>),
      defaultValueDuration: json['defaultValueDuration'] == null
          ? null
          : FhirDuration.fromJson(
              json['defaultValueDuration'] as Map<String, dynamic>),
      defaultValueHumanName: json['defaultValueHumanName'] == null
          ? null
          : HumanName.fromJson(
              json['defaultValueHumanName'] as Map<String, dynamic>),
      defaultValueIdentifier: json['defaultValueIdentifier'] == null
          ? null
          : Identifier.fromJson(
              json['defaultValueIdentifier'] as Map<String, dynamic>),
      defaultValueMoney: json['defaultValueMoney'] == null
          ? null
          : Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>),
      defaultValuePeriod: json['defaultValuePeriod'] == null
          ? null
          : Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>),
      defaultValueQuantity: json['defaultValueQuantity'] == null
          ? null
          : Quantity.fromJson(
              json['defaultValueQuantity'] as Map<String, dynamic>),
      defaultValueRange: json['defaultValueRange'] == null
          ? null
          : Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>),
      defaultValueRatio: json['defaultValueRatio'] == null
          ? null
          : Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>),
      defaultValueRatioRange: json['defaultValueRatioRange'] == null
          ? null
          : RatioRange.fromJson(
              json['defaultValueRatioRange'] as Map<String, dynamic>),
      defaultValueReference: json['defaultValueReference'] == null
          ? null
          : Reference.fromJson(
              json['defaultValueReference'] as Map<String, dynamic>),
      defaultValueSampledData: json['defaultValueSampledData'] == null
          ? null
          : SampledData.fromJson(
              json['defaultValueSampledData'] as Map<String, dynamic>),
      defaultValueSignature: json['defaultValueSignature'] == null
          ? null
          : Signature.fromJson(
              json['defaultValueSignature'] as Map<String, dynamic>),
      defaultValueTiming: json['defaultValueTiming'] == null
          ? null
          : Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>),
      defaultValueContactDetail: json['defaultValueContactDetail'] == null
          ? null
          : ContactDetail.fromJson(
              json['defaultValueContactDetail'] as Map<String, dynamic>),
      defaultValueContributor: json['defaultValueContributor'] == null
          ? null
          : Contributor.fromJson(
              json['defaultValueContributor'] as Map<String, dynamic>),
      defaultValueDataRequirement: json['defaultValueDataRequirement'] == null
          ? null
          : DataRequirement.fromJson(
              json['defaultValueDataRequirement'] as Map<String, dynamic>),
      defaultValueExpression: json['defaultValueExpression'] == null
          ? null
          : FhirExpression.fromJson(
              json['defaultValueExpression'] as Map<String, dynamic>),
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] == null
              ? null
              : ParameterDefinition.fromJson(
                  json['defaultValueParameterDefinition']
                      as Map<String, dynamic>),
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] == null
          ? null
          : RelatedArtifact.fromJson(
              json['defaultValueRelatedArtifact'] as Map<String, dynamic>),
      defaultValueTriggerDefinition: json['defaultValueTriggerDefinition'] ==
              null
          ? null
          : TriggerDefinition.fromJson(
              json['defaultValueTriggerDefinition'] as Map<String, dynamic>),
      defaultValueUsageContext: json['defaultValueUsageContext'] == null
          ? null
          : UsageContext.fromJson(
              json['defaultValueUsageContext'] as Map<String, dynamic>),
      defaultValueDosage: json['defaultValueDosage'] == null
          ? null
          : Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>),
      meaningWhenMissing: json['meaningWhenMissing'] == null
          ? null
          : FhirMarkdown.fromJson(json['meaningWhenMissing']),
      meaningWhenMissingElement: json['_meaningWhenMissing'] == null
          ? null
          : Element.fromJson(
              json['_meaningWhenMissing'] as Map<String, dynamic>),
      orderMeaning: json['orderMeaning'] == null
          ? null
          : FhirString.fromJson(json['orderMeaning']),
      orderMeaningElement: json['_orderMeaning'] == null
          ? null
          : Element.fromJson(json['_orderMeaning'] as Map<String, dynamic>),
      fixedBase64Binary: json['fixedBase64Binary'] == null
          ? null
          : FhirBase64Binary.fromJson(json['fixedBase64Binary']),
      fixedBase64BinaryElement: json['_fixedBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_fixedBase64Binary'] as Map<String, dynamic>),
      fixedBoolean: json['fixedBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['fixedBoolean']),
      fixedBooleanElement: json['_fixedBoolean'] == null
          ? null
          : Element.fromJson(json['_fixedBoolean'] as Map<String, dynamic>),
      fixedCanonical: json['fixedCanonical'] == null
          ? null
          : FhirCanonical.fromJson(json['fixedCanonical']),
      fixedCanonicalElement: json['_fixedCanonical'] == null
          ? null
          : Element.fromJson(json['_fixedCanonical'] as Map<String, dynamic>),
      fixedCode: json['fixedCode'] == null
          ? null
          : FhirCode.fromJson(json['fixedCode']),
      fixedCodeElement: json['_fixedCode'] == null
          ? null
          : Element.fromJson(json['_fixedCode'] as Map<String, dynamic>),
      fixedDate: json['fixedDate'] == null
          ? null
          : FhirDate.fromJson(json['fixedDate'] as String),
      fixedDateElement: json['_fixedDate'] == null
          ? null
          : Element.fromJson(json['_fixedDate'] as Map<String, dynamic>),
      fixedDateTime: json['fixedDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['fixedDateTime'] as String),
      fixedDateTimeElement: json['_fixedDateTime'] == null
          ? null
          : Element.fromJson(json['_fixedDateTime'] as Map<String, dynamic>),
      fixedDecimal: json['fixedDecimal'] == null
          ? null
          : FhirDecimal.fromJson(json['fixedDecimal']),
      fixedDecimalElement: json['_fixedDecimal'] == null
          ? null
          : Element.fromJson(json['_fixedDecimal'] as Map<String, dynamic>),
      fixedId:
          json['fixedId'] == null ? null : FhirId.fromJson(json['fixedId']),
      fixedIdElement: json['_fixedId'] == null
          ? null
          : Element.fromJson(json['_fixedId'] as Map<String, dynamic>),
      fixedInstant: json['fixedInstant'] == null
          ? null
          : FhirInstant.fromJson(json['fixedInstant'] as String),
      fixedInstantElement: json['_fixedInstant'] == null
          ? null
          : Element.fromJson(json['_fixedInstant'] as Map<String, dynamic>),
      fixedInteger: json['fixedInteger'] == null
          ? null
          : FhirInteger.fromJson(json['fixedInteger']),
      fixedIntegerElement: json['_fixedInteger'] == null
          ? null
          : Element.fromJson(json['_fixedInteger'] as Map<String, dynamic>),
      fixedMarkdown: json['fixedMarkdown'] == null
          ? null
          : FhirMarkdown.fromJson(json['fixedMarkdown']),
      fixedMarkdownElement: json['_fixedMarkdown'] == null
          ? null
          : Element.fromJson(json['_fixedMarkdown'] as Map<String, dynamic>),
      fixedOid:
          json['fixedOid'] == null ? null : FhirOid.fromJson(json['fixedOid']),
      fixedOidElement: json['_fixedOid'] == null
          ? null
          : Element.fromJson(json['_fixedOid'] as Map<String, dynamic>),
      fixedPositiveInt: json['fixedPositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['fixedPositiveInt']),
      fixedPositiveIntElement: json['_fixedPositiveInt'] == null
          ? null
          : Element.fromJson(json['_fixedPositiveInt'] as Map<String, dynamic>),
      fixedString: json['fixedString'] == null
          ? null
          : FhirString.fromJson(json['fixedString']),
      fixedStringElement: json['_fixedString'] == null
          ? null
          : Element.fromJson(json['_fixedString'] as Map<String, dynamic>),
      fixedTime: json['fixedTime'] == null
          ? null
          : FhirTime.fromJson(json['fixedTime']),
      fixedTimeElement: json['_fixedTime'] == null
          ? null
          : Element.fromJson(json['_fixedTime'] as Map<String, dynamic>),
      fixedUnsignedInt: json['fixedUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['fixedUnsignedInt']),
      fixedUnsignedIntElement: json['_fixedUnsignedInt'] == null
          ? null
          : Element.fromJson(json['_fixedUnsignedInt'] as Map<String, dynamic>),
      fixedUri:
          json['fixedUri'] == null ? null : FhirUri.fromJson(json['fixedUri']),
      fixedUriElement: json['_fixedUri'] == null
          ? null
          : Element.fromJson(json['_fixedUri'] as Map<String, dynamic>),
      fixedUrl:
          json['fixedUrl'] == null ? null : FhirUrl.fromJson(json['fixedUrl']),
      fixedUrlElement: json['_fixedUrl'] == null
          ? null
          : Element.fromJson(json['_fixedUrl'] as Map<String, dynamic>),
      fixedUuid: json['fixedUuid'] == null
          ? null
          : FhirUuid.fromJson(json['fixedUuid']),
      fixedUuidElement: json['_fixedUuid'] == null
          ? null
          : Element.fromJson(json['_fixedUuid'] as Map<String, dynamic>),
      fixedAddress: json['fixedAddress'] == null
          ? null
          : Address.fromJson(json['fixedAddress'] as Map<String, dynamic>),
      fixedAge: json['fixedAge'] == null
          ? null
          : Age.fromJson(json['fixedAge'] as Map<String, dynamic>),
      fixedAnnotation: json['fixedAnnotation'] == null
          ? null
          : Annotation.fromJson(
              json['fixedAnnotation'] as Map<String, dynamic>),
      fixedAttachment: json['fixedAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['fixedAttachment'] as Map<String, dynamic>),
      fixedCodeableConcept: json['fixedCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['fixedCodeableConcept'] as Map<String, dynamic>),
      fixedCodeableReference: json['fixedCodeableReference'] == null
          ? null
          : CodeableReference.fromJson(
              json['fixedCodeableReference'] as Map<String, dynamic>),
      fixedCoding: json['fixedCoding'] == null
          ? null
          : Coding.fromJson(json['fixedCoding'] as Map<String, dynamic>),
      fixedContactPoint: json['fixedContactPoint'] == null
          ? null
          : ContactPoint.fromJson(
              json['fixedContactPoint'] as Map<String, dynamic>),
      fixedCount: json['fixedCount'] == null
          ? null
          : Count.fromJson(json['fixedCount'] as Map<String, dynamic>),
      fixedDistance: json['fixedDistance'] == null
          ? null
          : Distance.fromJson(json['fixedDistance'] as Map<String, dynamic>),
      fixedDuration: json['fixedDuration'] == null
          ? null
          : FhirDuration.fromJson(
              json['fixedDuration'] as Map<String, dynamic>),
      fixedHumanName: json['fixedHumanName'] == null
          ? null
          : HumanName.fromJson(json['fixedHumanName'] as Map<String, dynamic>),
      fixedIdentifier: json['fixedIdentifier'] == null
          ? null
          : Identifier.fromJson(
              json['fixedIdentifier'] as Map<String, dynamic>),
      fixedMoney: json['fixedMoney'] == null
          ? null
          : Money.fromJson(json['fixedMoney'] as Map<String, dynamic>),
      fixedPeriod: json['fixedPeriod'] == null
          ? null
          : Period.fromJson(json['fixedPeriod'] as Map<String, dynamic>),
      fixedQuantity: json['fixedQuantity'] == null
          ? null
          : Quantity.fromJson(json['fixedQuantity'] as Map<String, dynamic>),
      fixedRange: json['fixedRange'] == null
          ? null
          : Range.fromJson(json['fixedRange'] as Map<String, dynamic>),
      fixedRatio: json['fixedRatio'] == null
          ? null
          : Ratio.fromJson(json['fixedRatio'] as Map<String, dynamic>),
      fixedRatioRange: json['fixedRatioRange'] == null
          ? null
          : RatioRange.fromJson(
              json['fixedRatioRange'] as Map<String, dynamic>),
      fixedReference: json['fixedReference'] == null
          ? null
          : Reference.fromJson(json['fixedReference'] as Map<String, dynamic>),
      fixedSampledData: json['fixedSampledData'] == null
          ? null
          : SampledData.fromJson(
              json['fixedSampledData'] as Map<String, dynamic>),
      fixedSignature: json['fixedSignature'] == null
          ? null
          : Signature.fromJson(json['fixedSignature'] as Map<String, dynamic>),
      fixedTiming: json['fixedTiming'] == null
          ? null
          : Timing.fromJson(json['fixedTiming'] as Map<String, dynamic>),
      fixedContactDetail: json['fixedContactDetail'] == null
          ? null
          : ContactDetail.fromJson(
              json['fixedContactDetail'] as Map<String, dynamic>),
      fixedContributor: json['fixedContributor'] == null
          ? null
          : Contributor.fromJson(
              json['fixedContributor'] as Map<String, dynamic>),
      fixedDataRequirement: json['fixedDataRequirement'] == null
          ? null
          : DataRequirement.fromJson(
              json['fixedDataRequirement'] as Map<String, dynamic>),
      fixedExpression: json['fixedExpression'] == null
          ? null
          : FhirExpression.fromJson(
              json['fixedExpression'] as Map<String, dynamic>),
      fixedParameterDefinition: json['fixedParameterDefinition'] == null
          ? null
          : ParameterDefinition.fromJson(
              json['fixedParameterDefinition'] as Map<String, dynamic>),
      fixedRelatedArtifact: json['fixedRelatedArtifact'] == null
          ? null
          : RelatedArtifact.fromJson(
              json['fixedRelatedArtifact'] as Map<String, dynamic>),
      fixedTriggerDefinition: json['fixedTriggerDefinition'] == null
          ? null
          : TriggerDefinition.fromJson(
              json['fixedTriggerDefinition'] as Map<String, dynamic>),
      fixedUsageContext: json['fixedUsageContext'] == null
          ? null
          : UsageContext.fromJson(
              json['fixedUsageContext'] as Map<String, dynamic>),
      fixedDosage: json['fixedDosage'] == null
          ? null
          : Dosage.fromJson(json['fixedDosage'] as Map<String, dynamic>),
      patternBase64Binary: json['patternBase64Binary'] == null
          ? null
          : FhirBase64Binary.fromJson(json['patternBase64Binary']),
      patternBase64BinaryElement: json['_patternBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_patternBase64Binary'] as Map<String, dynamic>),
      patternBoolean: json['patternBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['patternBoolean']),
      patternBooleanElement: json['_patternBoolean'] == null
          ? null
          : Element.fromJson(json['_patternBoolean'] as Map<String, dynamic>),
      patternCanonical: json['patternCanonical'] == null
          ? null
          : FhirCanonical.fromJson(json['patternCanonical']),
      patternCanonicalElement: json['_patternCanonical'] == null
          ? null
          : Element.fromJson(json['_patternCanonical'] as Map<String, dynamic>),
      patternCode: json['patternCode'] == null
          ? null
          : FhirCode.fromJson(json['patternCode']),
      patternCodeElement: json['_patternCode'] == null
          ? null
          : Element.fromJson(json['_patternCode'] as Map<String, dynamic>),
      patternDate: json['patternDate'] == null
          ? null
          : FhirDate.fromJson(json['patternDate'] as String),
      patternDateElement: json['_patternDate'] == null
          ? null
          : Element.fromJson(json['_patternDate'] as Map<String, dynamic>),
      patternDateTime: json['patternDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['patternDateTime'] as String),
      patternDateTimeElement: json['_patternDateTime'] == null
          ? null
          : Element.fromJson(json['_patternDateTime'] as Map<String, dynamic>),
      patternDecimal: json['patternDecimal'] == null
          ? null
          : FhirDecimal.fromJson(json['patternDecimal']),
      patternDecimalElement: json['_patternDecimal'] == null
          ? null
          : Element.fromJson(json['_patternDecimal'] as Map<String, dynamic>),
      patternId:
          json['patternId'] == null ? null : FhirId.fromJson(json['patternId']),
      patternIdElement: json['_patternId'] == null
          ? null
          : Element.fromJson(json['_patternId'] as Map<String, dynamic>),
      patternInstant: json['patternInstant'] == null
          ? null
          : FhirInstant.fromJson(json['patternInstant'] as String),
      patternInstantElement: json['_patternInstant'] == null
          ? null
          : Element.fromJson(json['_patternInstant'] as Map<String, dynamic>),
      patternInteger: json['patternInteger'] == null
          ? null
          : FhirInteger.fromJson(json['patternInteger']),
      patternIntegerElement: json['_patternInteger'] == null
          ? null
          : Element.fromJson(json['_patternInteger'] as Map<String, dynamic>),
      patternMarkdown: json['patternMarkdown'] == null
          ? null
          : FhirMarkdown.fromJson(json['patternMarkdown']),
      patternMarkdownElement: json['_patternMarkdown'] == null
          ? null
          : Element.fromJson(json['_patternMarkdown'] as Map<String, dynamic>),
      patternOid: json['patternOid'] == null
          ? null
          : FhirOid.fromJson(json['patternOid']),
      patternOidElement: json['_patternOid'] == null
          ? null
          : Element.fromJson(json['_patternOid'] as Map<String, dynamic>),
      patternPositiveInt: json['patternPositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['patternPositiveInt']),
      patternPositiveIntElement: json['_patternPositiveInt'] == null
          ? null
          : Element.fromJson(
              json['_patternPositiveInt'] as Map<String, dynamic>),
      patternString: json['patternString'] == null
          ? null
          : FhirString.fromJson(json['patternString']),
      patternStringElement: json['_patternString'] == null
          ? null
          : Element.fromJson(json['_patternString'] as Map<String, dynamic>),
      patternTime: json['patternTime'] == null
          ? null
          : FhirTime.fromJson(json['patternTime']),
      patternTimeElement: json['_patternTime'] == null
          ? null
          : Element.fromJson(json['_patternTime'] as Map<String, dynamic>),
      patternUnsignedInt: json['patternUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['patternUnsignedInt']),
      patternUnsignedIntElement: json['_patternUnsignedInt'] == null
          ? null
          : Element.fromJson(
              json['_patternUnsignedInt'] as Map<String, dynamic>),
      patternUri: json['patternUri'] == null
          ? null
          : FhirUri.fromJson(json['patternUri']),
      patternUriElement: json['_patternUri'] == null
          ? null
          : Element.fromJson(json['_patternUri'] as Map<String, dynamic>),
      patternUrl: json['patternUrl'] == null
          ? null
          : FhirUrl.fromJson(json['patternUrl']),
      patternUrlElement: json['_patternUrl'] == null
          ? null
          : Element.fromJson(json['_patternUrl'] as Map<String, dynamic>),
      patternUuid: json['patternUuid'] == null
          ? null
          : FhirUuid.fromJson(json['patternUuid']),
      patternUuidElement: json['_patternUuid'] == null
          ? null
          : Element.fromJson(json['_patternUuid'] as Map<String, dynamic>),
      patternAddress: json['patternAddress'] == null
          ? null
          : Address.fromJson(json['patternAddress'] as Map<String, dynamic>),
      patternAge: json['patternAge'] == null
          ? null
          : Age.fromJson(json['patternAge'] as Map<String, dynamic>),
      patternAnnotation: json['patternAnnotation'] == null
          ? null
          : Annotation.fromJson(
              json['patternAnnotation'] as Map<String, dynamic>),
      patternAttachment: json['patternAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['patternAttachment'] as Map<String, dynamic>),
      patternCodeableConcept: json['patternCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['patternCodeableConcept'] as Map<String, dynamic>),
      patternCodeableReference: json['patternCodeableReference'] == null
          ? null
          : CodeableReference.fromJson(
              json['patternCodeableReference'] as Map<String, dynamic>),
      patternCoding: json['patternCoding'] == null
          ? null
          : Coding.fromJson(json['patternCoding'] as Map<String, dynamic>),
      patternContactPoint: json['patternContactPoint'] == null
          ? null
          : ContactPoint.fromJson(
              json['patternContactPoint'] as Map<String, dynamic>),
      patternCount: json['patternCount'] == null
          ? null
          : Count.fromJson(json['patternCount'] as Map<String, dynamic>),
      patternDistance: json['patternDistance'] == null
          ? null
          : Distance.fromJson(json['patternDistance'] as Map<String, dynamic>),
      patternDuration: json['patternDuration'] == null
          ? null
          : FhirDuration.fromJson(
              json['patternDuration'] as Map<String, dynamic>),
      patternHumanName: json['patternHumanName'] == null
          ? null
          : HumanName.fromJson(
              json['patternHumanName'] as Map<String, dynamic>),
      patternIdentifier: json['patternIdentifier'] == null
          ? null
          : Identifier.fromJson(
              json['patternIdentifier'] as Map<String, dynamic>),
      patternMoney: json['patternMoney'] == null
          ? null
          : Money.fromJson(json['patternMoney'] as Map<String, dynamic>),
      patternPeriod: json['patternPeriod'] == null
          ? null
          : Period.fromJson(json['patternPeriod'] as Map<String, dynamic>),
      patternQuantity: json['patternQuantity'] == null
          ? null
          : Quantity.fromJson(json['patternQuantity'] as Map<String, dynamic>),
      patternRange: json['patternRange'] == null
          ? null
          : Range.fromJson(json['patternRange'] as Map<String, dynamic>),
      patternRatio: json['patternRatio'] == null
          ? null
          : Ratio.fromJson(json['patternRatio'] as Map<String, dynamic>),
      patternRatioRange: json['patternRatioRange'] == null
          ? null
          : RatioRange.fromJson(
              json['patternRatioRange'] as Map<String, dynamic>),
      patternReference: json['patternReference'] == null
          ? null
          : Reference.fromJson(
              json['patternReference'] as Map<String, dynamic>),
      patternSampledData: json['patternSampledData'] == null
          ? null
          : SampledData.fromJson(
              json['patternSampledData'] as Map<String, dynamic>),
      patternSignature: json['patternSignature'] == null
          ? null
          : Signature.fromJson(
              json['patternSignature'] as Map<String, dynamic>),
      patternTiming: json['patternTiming'] == null
          ? null
          : Timing.fromJson(json['patternTiming'] as Map<String, dynamic>),
      patternContactDetail: json['patternContactDetail'] == null
          ? null
          : ContactDetail.fromJson(
              json['patternContactDetail'] as Map<String, dynamic>),
      patternContributor: json['patternContributor'] == null
          ? null
          : Contributor.fromJson(
              json['patternContributor'] as Map<String, dynamic>),
      patternDataRequirement: json['patternDataRequirement'] == null
          ? null
          : DataRequirement.fromJson(
              json['patternDataRequirement'] as Map<String, dynamic>),
      patternExpression: json['patternExpression'] == null
          ? null
          : FhirExpression.fromJson(
              json['patternExpression'] as Map<String, dynamic>),
      patternParameterDefinition: json['patternParameterDefinition'] == null
          ? null
          : ParameterDefinition.fromJson(
              json['patternParameterDefinition'] as Map<String, dynamic>),
      patternRelatedArtifact: json['patternRelatedArtifact'] == null
          ? null
          : RelatedArtifact.fromJson(
              json['patternRelatedArtifact'] as Map<String, dynamic>),
      patternTriggerDefinition: json['patternTriggerDefinition'] == null
          ? null
          : TriggerDefinition.fromJson(
              json['patternTriggerDefinition'] as Map<String, dynamic>),
      patternUsageContext: json['patternUsageContext'] == null
          ? null
          : UsageContext.fromJson(
              json['patternUsageContext'] as Map<String, dynamic>),
      patternDosage: json['patternDosage'] == null
          ? null
          : Dosage.fromJson(json['patternDosage'] as Map<String, dynamic>),
      example: (json['example'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      minValueDate: json['minValueDate'] == null
          ? null
          : FhirDate.fromJson(json['minValueDate'] as String),
      minValueDateElement: json['_minValueDate'] == null
          ? null
          : Element.fromJson(json['_minValueDate'] as Map<String, dynamic>),
      minValueDateTime: json['minValueDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['minValueDateTime'] as String),
      minValueDateTimeElement: json['_minValueDateTime'] == null
          ? null
          : Element.fromJson(json['_minValueDateTime'] as Map<String, dynamic>),
      minValueInstant: json['minValueInstant'] == null
          ? null
          : FhirInstant.fromJson(json['minValueInstant'] as String),
      minValueInstantElement: json['_minValueInstant'] == null
          ? null
          : Element.fromJson(json['_minValueInstant'] as Map<String, dynamic>),
      minValueTime: json['minValueTime'] == null
          ? null
          : FhirTime.fromJson(json['minValueTime']),
      minValueTimeElement: json['_minValueTime'] == null
          ? null
          : Element.fromJson(json['_minValueTime'] as Map<String, dynamic>),
      minValueDecimal: json['minValueDecimal'] == null
          ? null
          : FhirDecimal.fromJson(json['minValueDecimal']),
      minValueDecimalElement: json['_minValueDecimal'] == null
          ? null
          : Element.fromJson(json['_minValueDecimal'] as Map<String, dynamic>),
      minValueInteger: json['minValueInteger'] == null
          ? null
          : FhirInteger.fromJson(json['minValueInteger']),
      minValueIntegerElement: json['_minValueInteger'] == null
          ? null
          : Element.fromJson(json['_minValueInteger'] as Map<String, dynamic>),
      minValuePositiveInt: json['minValuePositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['minValuePositiveInt']),
      minValuePositiveIntElement: json['_minValuePositiveInt'] == null
          ? null
          : Element.fromJson(
              json['_minValuePositiveInt'] as Map<String, dynamic>),
      minValueUnsignedInt: json['minValueUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['minValueUnsignedInt']),
      minValueUnsignedIntElement: json['_minValueUnsignedInt'] == null
          ? null
          : Element.fromJson(
              json['_minValueUnsignedInt'] as Map<String, dynamic>),
      minValueQuantity: json['minValueQuantity'] == null
          ? null
          : Quantity.fromJson(json['minValueQuantity'] as Map<String, dynamic>),
      maxValueDate: json['maxValueDate'] == null
          ? null
          : FhirDate.fromJson(json['maxValueDate'] as String),
      maxValueDateElement: json['_maxValueDate'] == null
          ? null
          : Element.fromJson(json['_maxValueDate'] as Map<String, dynamic>),
      maxValueDateTime: json['maxValueDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['maxValueDateTime'] as String),
      maxValueDateTimeElement: json['_maxValueDateTime'] == null
          ? null
          : Element.fromJson(json['_maxValueDateTime'] as Map<String, dynamic>),
      maxValueInstant: json['maxValueInstant'] == null
          ? null
          : FhirInstant.fromJson(json['maxValueInstant'] as String),
      maxValueInstantElement: json['_maxValueInstant'] == null
          ? null
          : Element.fromJson(json['_maxValueInstant'] as Map<String, dynamic>),
      maxValueTime: json['maxValueTime'] == null
          ? null
          : FhirTime.fromJson(json['maxValueTime']),
      maxValueTimeElement: json['_maxValueTime'] == null
          ? null
          : Element.fromJson(json['_maxValueTime'] as Map<String, dynamic>),
      maxValueDecimal: json['maxValueDecimal'] == null
          ? null
          : FhirDecimal.fromJson(json['maxValueDecimal']),
      maxValueDecimalElement: json['_maxValueDecimal'] == null
          ? null
          : Element.fromJson(json['_maxValueDecimal'] as Map<String, dynamic>),
      maxValueInteger: json['maxValueInteger'] == null
          ? null
          : FhirInteger.fromJson(json['maxValueInteger']),
      maxValueIntegerElement: json['_maxValueInteger'] == null
          ? null
          : Element.fromJson(json['_maxValueInteger'] as Map<String, dynamic>),
      maxValuePositiveInt: json['maxValuePositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['maxValuePositiveInt']),
      maxValuePositiveIntElement: json['_maxValuePositiveInt'] == null
          ? null
          : Element.fromJson(
              json['_maxValuePositiveInt'] as Map<String, dynamic>),
      maxValueUnsignedInt: json['maxValueUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['maxValueUnsignedInt']),
      maxValueUnsignedIntElement: json['_maxValueUnsignedInt'] == null
          ? null
          : Element.fromJson(
              json['_maxValueUnsignedInt'] as Map<String, dynamic>),
      maxValueQuantity: json['maxValueQuantity'] == null
          ? null
          : Quantity.fromJson(json['maxValueQuantity'] as Map<String, dynamic>),
      maxLength: json['maxLength'] == null
          ? null
          : FhirInteger.fromJson(json['maxLength']),
      maxLengthElement: json['_maxLength'] == null
          ? null
          : Element.fromJson(json['_maxLength'] as Map<String, dynamic>),
      condition:
          (json['condition'] as List<dynamic>?)?.map(FhirId.fromJson).toList(),
      conditionElement: (json['_condition'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      mustSupport: json['mustSupport'] == null
          ? null
          : FhirBoolean.fromJson(json['mustSupport']),
      mustSupportElement: json['_mustSupport'] == null
          ? null
          : Element.fromJson(json['_mustSupport'] as Map<String, dynamic>),
      isModifier: json['isModifier'] == null
          ? null
          : FhirBoolean.fromJson(json['isModifier']),
      isModifierElement: json['_isModifier'] == null
          ? null
          : Element.fromJson(json['_isModifier'] as Map<String, dynamic>),
      isModifierReason: json['isModifierReason'] == null
          ? null
          : FhirString.fromJson(json['isModifierReason']),
      isModifierReasonElement: json['_isModifierReason'] == null
          ? null
          : Element.fromJson(json['_isModifierReason'] as Map<String, dynamic>),
      isSummary: json['isSummary'] == null
          ? null
          : FhirBoolean.fromJson(json['isSummary']),
      isSummaryElement: json['_isSummary'] == null
          ? null
          : Element.fromJson(json['_isSummary'] as Map<String, dynamic>),
      binding: json['binding'] == null
          ? null
          : Element.fromJson(json['binding'] as Map<String, dynamic>),
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionToJson(ElementDefinition instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['path'] = instance.path.toJson();
  writeNotNull('_path', instance.pathElement?.toJson());
  writeNotNull('representation',
      instance.representation?.map((e) => e.toJson()).toList());
  writeNotNull('_representation',
      instance.representationElement?.map((e) => e.toJson()).toList());
  writeNotNull('sliceName', instance.sliceName?.toJson());
  writeNotNull('_sliceName', instance.sliceNameElement?.toJson());
  writeNotNull('sliceIsConstraining', instance.sliceIsConstraining?.toJson());
  writeNotNull(
      '_sliceIsConstraining', instance.sliceIsConstrainingElement?.toJson());
  writeNotNull('label', instance.label?.toJson());
  writeNotNull('_label', instance.labelElement?.toJson());
  writeNotNull('code', instance.code?.map((e) => e.toJson()).toList());
  writeNotNull('slicing', instance.slicing?.toJson());
  writeNotNull('short', instance.short?.toJson());
  writeNotNull('_short', instance.shortElement?.toJson());
  writeNotNull('definition', instance.definition?.toJson());
  writeNotNull('_definition', instance.definitionElement?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('_comment', instance.commentElement?.toJson());
  writeNotNull('requirements', instance.requirements?.toJson());
  writeNotNull('_requirements', instance.requirementsElement?.toJson());
  writeNotNull('alias', instance.alias?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_alias', instance.aliasElement?.map((e) => e.toJson()).toList());
  writeNotNull('min', instance.min?.toJson());
  writeNotNull('_min', instance.minElement?.toJson());
  writeNotNull('max', instance.max?.toJson());
  writeNotNull('_max', instance.maxElement?.toJson());
  writeNotNull('base', instance.base?.toJson());
  writeNotNull('contentReference', instance.contentReference?.toJson());
  writeNotNull('_contentReference', instance.contentReferenceElement?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull(
      'defaultValueBase64Binary', instance.defaultValueBase64Binary?.toJson());
  writeNotNull('_defaultValueBase64Binary',
      instance.defaultValueBase64BinaryElement?.toJson());
  writeNotNull('defaultValueBoolean', instance.defaultValueBoolean?.toJson());
  writeNotNull(
      '_defaultValueBoolean', instance.defaultValueBooleanElement?.toJson());
  writeNotNull(
      'defaultValueCanonical', instance.defaultValueCanonical?.toJson());
  writeNotNull('_defaultValueCanonical',
      instance.defaultValueCanonicalElement?.toJson());
  writeNotNull('defaultValueCode', instance.defaultValueCode?.toJson());
  writeNotNull('_defaultValueCode', instance.defaultValueCodeElement?.toJson());
  writeNotNull('defaultValueDate', instance.defaultValueDate?.toJson());
  writeNotNull('_defaultValueDate', instance.defaultValueDateElement?.toJson());
  writeNotNull('defaultValueDateTime', instance.defaultValueDateTime?.toJson());
  writeNotNull(
      '_defaultValueDateTime', instance.defaultValueDateTimeElement?.toJson());
  writeNotNull('defaultValueDecimal', instance.defaultValueDecimal?.toJson());
  writeNotNull(
      '_defaultValueDecimal', instance.defaultValueDecimalElement?.toJson());
  writeNotNull('defaultValueId', instance.defaultValueId?.toJson());
  writeNotNull('_defaultValueId', instance.defaultValueIdElement?.toJson());
  writeNotNull('defaultValueInstant', instance.defaultValueInstant?.toJson());
  writeNotNull(
      '_defaultValueInstant', instance.defaultValueInstantElement?.toJson());
  writeNotNull('defaultValueInteger', instance.defaultValueInteger?.toJson());
  writeNotNull(
      '_defaultValueInteger', instance.defaultValueIntegerElement?.toJson());
  writeNotNull('defaultValueMarkdown', instance.defaultValueMarkdown?.toJson());
  writeNotNull(
      '_defaultValueMarkdown', instance.defaultValueMarkdownElement?.toJson());
  writeNotNull('defaultValueOid', instance.defaultValueOid?.toJson());
  writeNotNull('_defaultValueOid', instance.defaultValueOidElement?.toJson());
  writeNotNull(
      'defaultValuePositiveInt', instance.defaultValuePositiveInt?.toJson());
  writeNotNull('_defaultValuePositiveInt',
      instance.defaultValuePositiveIntElement?.toJson());
  writeNotNull('defaultValueString', instance.defaultValueString?.toJson());
  writeNotNull(
      '_defaultValueString', instance.defaultValueStringElement?.toJson());
  writeNotNull('defaultValueTime', instance.defaultValueTime?.toJson());
  writeNotNull('_defaultValueTime', instance.defaultValueTimeElement?.toJson());
  writeNotNull(
      'defaultValueUnsignedInt', instance.defaultValueUnsignedInt?.toJson());
  writeNotNull('_defaultValueUnsignedInt',
      instance.defaultValueUnsignedIntElement?.toJson());
  writeNotNull('defaultValueUri', instance.defaultValueUri?.toJson());
  writeNotNull('_defaultValueUri', instance.defaultValueUriElement?.toJson());
  writeNotNull('defaultValueUrl', instance.defaultValueUrl?.toJson());
  writeNotNull('_defaultValueUrl', instance.defaultValueUrlElement?.toJson());
  writeNotNull('defaultValueUuid', instance.defaultValueUuid?.toJson());
  writeNotNull('_defaultValueUuid', instance.defaultValueUuidElement?.toJson());
  writeNotNull('defaultValueAddress', instance.defaultValueAddress?.toJson());
  writeNotNull('defaultValueAge', instance.defaultValueAge?.toJson());
  writeNotNull(
      'defaultValueAnnotation', instance.defaultValueAnnotation?.toJson());
  writeNotNull(
      'defaultValueAttachment', instance.defaultValueAttachment?.toJson());
  writeNotNull('defaultValueCodeableConcept',
      instance.defaultValueCodeableConcept?.toJson());
  writeNotNull('defaultValueCodeableReference',
      instance.defaultValueCodeableReference?.toJson());
  writeNotNull('defaultValueCoding', instance.defaultValueCoding?.toJson());
  writeNotNull(
      'defaultValueContactPoint', instance.defaultValueContactPoint?.toJson());
  writeNotNull('defaultValueCount', instance.defaultValueCount?.toJson());
  writeNotNull('defaultValueDistance', instance.defaultValueDistance?.toJson());
  writeNotNull('defaultValueDuration', instance.defaultValueDuration?.toJson());
  writeNotNull(
      'defaultValueHumanName', instance.defaultValueHumanName?.toJson());
  writeNotNull(
      'defaultValueIdentifier', instance.defaultValueIdentifier?.toJson());
  writeNotNull('defaultValueMoney', instance.defaultValueMoney?.toJson());
  writeNotNull('defaultValuePeriod', instance.defaultValuePeriod?.toJson());
  writeNotNull('defaultValueQuantity', instance.defaultValueQuantity?.toJson());
  writeNotNull('defaultValueRange', instance.defaultValueRange?.toJson());
  writeNotNull('defaultValueRatio', instance.defaultValueRatio?.toJson());
  writeNotNull(
      'defaultValueRatioRange', instance.defaultValueRatioRange?.toJson());
  writeNotNull(
      'defaultValueReference', instance.defaultValueReference?.toJson());
  writeNotNull(
      'defaultValueSampledData', instance.defaultValueSampledData?.toJson());
  writeNotNull(
      'defaultValueSignature', instance.defaultValueSignature?.toJson());
  writeNotNull('defaultValueTiming', instance.defaultValueTiming?.toJson());
  writeNotNull('defaultValueContactDetail',
      instance.defaultValueContactDetail?.toJson());
  writeNotNull(
      'defaultValueContributor', instance.defaultValueContributor?.toJson());
  writeNotNull('defaultValueDataRequirement',
      instance.defaultValueDataRequirement?.toJson());
  writeNotNull(
      'defaultValueExpression', instance.defaultValueExpression?.toJson());
  writeNotNull('defaultValueParameterDefinition',
      instance.defaultValueParameterDefinition?.toJson());
  writeNotNull('defaultValueRelatedArtifact',
      instance.defaultValueRelatedArtifact?.toJson());
  writeNotNull('defaultValueTriggerDefinition',
      instance.defaultValueTriggerDefinition?.toJson());
  writeNotNull(
      'defaultValueUsageContext', instance.defaultValueUsageContext?.toJson());
  writeNotNull('defaultValueDosage', instance.defaultValueDosage?.toJson());
  writeNotNull('meaningWhenMissing', instance.meaningWhenMissing?.toJson());
  writeNotNull(
      '_meaningWhenMissing', instance.meaningWhenMissingElement?.toJson());
  writeNotNull('orderMeaning', instance.orderMeaning?.toJson());
  writeNotNull('_orderMeaning', instance.orderMeaningElement?.toJson());
  writeNotNull('fixedBase64Binary', instance.fixedBase64Binary?.toJson());
  writeNotNull(
      '_fixedBase64Binary', instance.fixedBase64BinaryElement?.toJson());
  writeNotNull('fixedBoolean', instance.fixedBoolean?.toJson());
  writeNotNull('_fixedBoolean', instance.fixedBooleanElement?.toJson());
  writeNotNull('fixedCanonical', instance.fixedCanonical?.toJson());
  writeNotNull('_fixedCanonical', instance.fixedCanonicalElement?.toJson());
  writeNotNull('fixedCode', instance.fixedCode?.toJson());
  writeNotNull('_fixedCode', instance.fixedCodeElement?.toJson());
  writeNotNull('fixedDate', instance.fixedDate?.toJson());
  writeNotNull('_fixedDate', instance.fixedDateElement?.toJson());
  writeNotNull('fixedDateTime', instance.fixedDateTime?.toJson());
  writeNotNull('_fixedDateTime', instance.fixedDateTimeElement?.toJson());
  writeNotNull('fixedDecimal', instance.fixedDecimal?.toJson());
  writeNotNull('_fixedDecimal', instance.fixedDecimalElement?.toJson());
  writeNotNull('fixedId', instance.fixedId?.toJson());
  writeNotNull('_fixedId', instance.fixedIdElement?.toJson());
  writeNotNull('fixedInstant', instance.fixedInstant?.toJson());
  writeNotNull('_fixedInstant', instance.fixedInstantElement?.toJson());
  writeNotNull('fixedInteger', instance.fixedInteger?.toJson());
  writeNotNull('_fixedInteger', instance.fixedIntegerElement?.toJson());
  writeNotNull('fixedMarkdown', instance.fixedMarkdown?.toJson());
  writeNotNull('_fixedMarkdown', instance.fixedMarkdownElement?.toJson());
  writeNotNull('fixedOid', instance.fixedOid?.toJson());
  writeNotNull('_fixedOid', instance.fixedOidElement?.toJson());
  writeNotNull('fixedPositiveInt', instance.fixedPositiveInt?.toJson());
  writeNotNull('_fixedPositiveInt', instance.fixedPositiveIntElement?.toJson());
  writeNotNull('fixedString', instance.fixedString?.toJson());
  writeNotNull('_fixedString', instance.fixedStringElement?.toJson());
  writeNotNull('fixedTime', instance.fixedTime?.toJson());
  writeNotNull('_fixedTime', instance.fixedTimeElement?.toJson());
  writeNotNull('fixedUnsignedInt', instance.fixedUnsignedInt?.toJson());
  writeNotNull('_fixedUnsignedInt', instance.fixedUnsignedIntElement?.toJson());
  writeNotNull('fixedUri', instance.fixedUri?.toJson());
  writeNotNull('_fixedUri', instance.fixedUriElement?.toJson());
  writeNotNull('fixedUrl', instance.fixedUrl?.toJson());
  writeNotNull('_fixedUrl', instance.fixedUrlElement?.toJson());
  writeNotNull('fixedUuid', instance.fixedUuid?.toJson());
  writeNotNull('_fixedUuid', instance.fixedUuidElement?.toJson());
  writeNotNull('fixedAddress', instance.fixedAddress?.toJson());
  writeNotNull('fixedAge', instance.fixedAge?.toJson());
  writeNotNull('fixedAnnotation', instance.fixedAnnotation?.toJson());
  writeNotNull('fixedAttachment', instance.fixedAttachment?.toJson());
  writeNotNull('fixedCodeableConcept', instance.fixedCodeableConcept?.toJson());
  writeNotNull(
      'fixedCodeableReference', instance.fixedCodeableReference?.toJson());
  writeNotNull('fixedCoding', instance.fixedCoding?.toJson());
  writeNotNull('fixedContactPoint', instance.fixedContactPoint?.toJson());
  writeNotNull('fixedCount', instance.fixedCount?.toJson());
  writeNotNull('fixedDistance', instance.fixedDistance?.toJson());
  writeNotNull('fixedDuration', instance.fixedDuration?.toJson());
  writeNotNull('fixedHumanName', instance.fixedHumanName?.toJson());
  writeNotNull('fixedIdentifier', instance.fixedIdentifier?.toJson());
  writeNotNull('fixedMoney', instance.fixedMoney?.toJson());
  writeNotNull('fixedPeriod', instance.fixedPeriod?.toJson());
  writeNotNull('fixedQuantity', instance.fixedQuantity?.toJson());
  writeNotNull('fixedRange', instance.fixedRange?.toJson());
  writeNotNull('fixedRatio', instance.fixedRatio?.toJson());
  writeNotNull('fixedRatioRange', instance.fixedRatioRange?.toJson());
  writeNotNull('fixedReference', instance.fixedReference?.toJson());
  writeNotNull('fixedSampledData', instance.fixedSampledData?.toJson());
  writeNotNull('fixedSignature', instance.fixedSignature?.toJson());
  writeNotNull('fixedTiming', instance.fixedTiming?.toJson());
  writeNotNull('fixedContactDetail', instance.fixedContactDetail?.toJson());
  writeNotNull('fixedContributor', instance.fixedContributor?.toJson());
  writeNotNull('fixedDataRequirement', instance.fixedDataRequirement?.toJson());
  writeNotNull('fixedExpression', instance.fixedExpression?.toJson());
  writeNotNull(
      'fixedParameterDefinition', instance.fixedParameterDefinition?.toJson());
  writeNotNull('fixedRelatedArtifact', instance.fixedRelatedArtifact?.toJson());
  writeNotNull(
      'fixedTriggerDefinition', instance.fixedTriggerDefinition?.toJson());
  writeNotNull('fixedUsageContext', instance.fixedUsageContext?.toJson());
  writeNotNull('fixedDosage', instance.fixedDosage?.toJson());
  writeNotNull('patternBase64Binary', instance.patternBase64Binary?.toJson());
  writeNotNull(
      '_patternBase64Binary', instance.patternBase64BinaryElement?.toJson());
  writeNotNull('patternBoolean', instance.patternBoolean?.toJson());
  writeNotNull('_patternBoolean', instance.patternBooleanElement?.toJson());
  writeNotNull('patternCanonical', instance.patternCanonical?.toJson());
  writeNotNull('_patternCanonical', instance.patternCanonicalElement?.toJson());
  writeNotNull('patternCode', instance.patternCode?.toJson());
  writeNotNull('_patternCode', instance.patternCodeElement?.toJson());
  writeNotNull('patternDate', instance.patternDate?.toJson());
  writeNotNull('_patternDate', instance.patternDateElement?.toJson());
  writeNotNull('patternDateTime', instance.patternDateTime?.toJson());
  writeNotNull('_patternDateTime', instance.patternDateTimeElement?.toJson());
  writeNotNull('patternDecimal', instance.patternDecimal?.toJson());
  writeNotNull('_patternDecimal', instance.patternDecimalElement?.toJson());
  writeNotNull('patternId', instance.patternId?.toJson());
  writeNotNull('_patternId', instance.patternIdElement?.toJson());
  writeNotNull('patternInstant', instance.patternInstant?.toJson());
  writeNotNull('_patternInstant', instance.patternInstantElement?.toJson());
  writeNotNull('patternInteger', instance.patternInteger?.toJson());
  writeNotNull('_patternInteger', instance.patternIntegerElement?.toJson());
  writeNotNull('patternMarkdown', instance.patternMarkdown?.toJson());
  writeNotNull('_patternMarkdown', instance.patternMarkdownElement?.toJson());
  writeNotNull('patternOid', instance.patternOid?.toJson());
  writeNotNull('_patternOid', instance.patternOidElement?.toJson());
  writeNotNull('patternPositiveInt', instance.patternPositiveInt?.toJson());
  writeNotNull(
      '_patternPositiveInt', instance.patternPositiveIntElement?.toJson());
  writeNotNull('patternString', instance.patternString?.toJson());
  writeNotNull('_patternString', instance.patternStringElement?.toJson());
  writeNotNull('patternTime', instance.patternTime?.toJson());
  writeNotNull('_patternTime', instance.patternTimeElement?.toJson());
  writeNotNull('patternUnsignedInt', instance.patternUnsignedInt?.toJson());
  writeNotNull(
      '_patternUnsignedInt', instance.patternUnsignedIntElement?.toJson());
  writeNotNull('patternUri', instance.patternUri?.toJson());
  writeNotNull('_patternUri', instance.patternUriElement?.toJson());
  writeNotNull('patternUrl', instance.patternUrl?.toJson());
  writeNotNull('_patternUrl', instance.patternUrlElement?.toJson());
  writeNotNull('patternUuid', instance.patternUuid?.toJson());
  writeNotNull('_patternUuid', instance.patternUuidElement?.toJson());
  writeNotNull('patternAddress', instance.patternAddress?.toJson());
  writeNotNull('patternAge', instance.patternAge?.toJson());
  writeNotNull('patternAnnotation', instance.patternAnnotation?.toJson());
  writeNotNull('patternAttachment', instance.patternAttachment?.toJson());
  writeNotNull(
      'patternCodeableConcept', instance.patternCodeableConcept?.toJson());
  writeNotNull(
      'patternCodeableReference', instance.patternCodeableReference?.toJson());
  writeNotNull('patternCoding', instance.patternCoding?.toJson());
  writeNotNull('patternContactPoint', instance.patternContactPoint?.toJson());
  writeNotNull('patternCount', instance.patternCount?.toJson());
  writeNotNull('patternDistance', instance.patternDistance?.toJson());
  writeNotNull('patternDuration', instance.patternDuration?.toJson());
  writeNotNull('patternHumanName', instance.patternHumanName?.toJson());
  writeNotNull('patternIdentifier', instance.patternIdentifier?.toJson());
  writeNotNull('patternMoney', instance.patternMoney?.toJson());
  writeNotNull('patternPeriod', instance.patternPeriod?.toJson());
  writeNotNull('patternQuantity', instance.patternQuantity?.toJson());
  writeNotNull('patternRange', instance.patternRange?.toJson());
  writeNotNull('patternRatio', instance.patternRatio?.toJson());
  writeNotNull('patternRatioRange', instance.patternRatioRange?.toJson());
  writeNotNull('patternReference', instance.patternReference?.toJson());
  writeNotNull('patternSampledData', instance.patternSampledData?.toJson());
  writeNotNull('patternSignature', instance.patternSignature?.toJson());
  writeNotNull('patternTiming', instance.patternTiming?.toJson());
  writeNotNull('patternContactDetail', instance.patternContactDetail?.toJson());
  writeNotNull('patternContributor', instance.patternContributor?.toJson());
  writeNotNull(
      'patternDataRequirement', instance.patternDataRequirement?.toJson());
  writeNotNull('patternExpression', instance.patternExpression?.toJson());
  writeNotNull('patternParameterDefinition',
      instance.patternParameterDefinition?.toJson());
  writeNotNull(
      'patternRelatedArtifact', instance.patternRelatedArtifact?.toJson());
  writeNotNull(
      'patternTriggerDefinition', instance.patternTriggerDefinition?.toJson());
  writeNotNull('patternUsageContext', instance.patternUsageContext?.toJson());
  writeNotNull('patternDosage', instance.patternDosage?.toJson());
  writeNotNull('example', instance.example?.map((e) => e.toJson()).toList());
  writeNotNull('minValueDate', instance.minValueDate?.toJson());
  writeNotNull('_minValueDate', instance.minValueDateElement?.toJson());
  writeNotNull('minValueDateTime', instance.minValueDateTime?.toJson());
  writeNotNull('_minValueDateTime', instance.minValueDateTimeElement?.toJson());
  writeNotNull('minValueInstant', instance.minValueInstant?.toJson());
  writeNotNull('_minValueInstant', instance.minValueInstantElement?.toJson());
  writeNotNull('minValueTime', instance.minValueTime?.toJson());
  writeNotNull('_minValueTime', instance.minValueTimeElement?.toJson());
  writeNotNull('minValueDecimal', instance.minValueDecimal?.toJson());
  writeNotNull('_minValueDecimal', instance.minValueDecimalElement?.toJson());
  writeNotNull('minValueInteger', instance.minValueInteger?.toJson());
  writeNotNull('_minValueInteger', instance.minValueIntegerElement?.toJson());
  writeNotNull('minValuePositiveInt', instance.minValuePositiveInt?.toJson());
  writeNotNull(
      '_minValuePositiveInt', instance.minValuePositiveIntElement?.toJson());
  writeNotNull('minValueUnsignedInt', instance.minValueUnsignedInt?.toJson());
  writeNotNull(
      '_minValueUnsignedInt', instance.minValueUnsignedIntElement?.toJson());
  writeNotNull('minValueQuantity', instance.minValueQuantity?.toJson());
  writeNotNull('maxValueDate', instance.maxValueDate?.toJson());
  writeNotNull('_maxValueDate', instance.maxValueDateElement?.toJson());
  writeNotNull('maxValueDateTime', instance.maxValueDateTime?.toJson());
  writeNotNull('_maxValueDateTime', instance.maxValueDateTimeElement?.toJson());
  writeNotNull('maxValueInstant', instance.maxValueInstant?.toJson());
  writeNotNull('_maxValueInstant', instance.maxValueInstantElement?.toJson());
  writeNotNull('maxValueTime', instance.maxValueTime?.toJson());
  writeNotNull('_maxValueTime', instance.maxValueTimeElement?.toJson());
  writeNotNull('maxValueDecimal', instance.maxValueDecimal?.toJson());
  writeNotNull('_maxValueDecimal', instance.maxValueDecimalElement?.toJson());
  writeNotNull('maxValueInteger', instance.maxValueInteger?.toJson());
  writeNotNull('_maxValueInteger', instance.maxValueIntegerElement?.toJson());
  writeNotNull('maxValuePositiveInt', instance.maxValuePositiveInt?.toJson());
  writeNotNull(
      '_maxValuePositiveInt', instance.maxValuePositiveIntElement?.toJson());
  writeNotNull('maxValueUnsignedInt', instance.maxValueUnsignedInt?.toJson());
  writeNotNull(
      '_maxValueUnsignedInt', instance.maxValueUnsignedIntElement?.toJson());
  writeNotNull('maxValueQuantity', instance.maxValueQuantity?.toJson());
  writeNotNull('maxLength', instance.maxLength?.toJson());
  writeNotNull('_maxLength', instance.maxLengthElement?.toJson());
  writeNotNull(
      'condition', instance.condition?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_condition', instance.conditionElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'constraint', instance.constraint?.map((e) => e.toJson()).toList());
  writeNotNull('mustSupport', instance.mustSupport?.toJson());
  writeNotNull('_mustSupport', instance.mustSupportElement?.toJson());
  writeNotNull('isModifier', instance.isModifier?.toJson());
  writeNotNull('_isModifier', instance.isModifierElement?.toJson());
  writeNotNull('isModifierReason', instance.isModifierReason?.toJson());
  writeNotNull('_isModifierReason', instance.isModifierReasonElement?.toJson());
  writeNotNull('isSummary', instance.isSummary?.toJson());
  writeNotNull('_isSummary', instance.isSummaryElement?.toJson());
  writeNotNull('binding', instance.binding?.toJson());
  writeNotNull('mapping', instance.mapping?.map((e) => e.toJson()).toList());
  return val;
}

ElementDefinitionSlicing _$ElementDefinitionSlicingFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionSlicing(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      discriminator: (json['discriminator'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      ordered: json['ordered'] == null
          ? null
          : FhirBoolean.fromJson(json['ordered']),
      orderedElement: json['_ordered'] == null
          ? null
          : Element.fromJson(json['_ordered'] as Map<String, dynamic>),
      rules: FhirCode.fromJson(json['rules']),
      rulesElement: json['_rules'] == null
          ? null
          : Element.fromJson(json['_rules'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionSlicingToJson(
    ElementDefinitionSlicing instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull(
      'discriminator', instance.discriminator?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('ordered', instance.ordered?.toJson());
  writeNotNull('_ordered', instance.orderedElement?.toJson());
  val['rules'] = instance.rules.toJson();
  writeNotNull('_rules', instance.rulesElement?.toJson());
  return val;
}

ElementDefinitionDiscriminator _$ElementDefinitionDiscriminatorFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionDiscriminator(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] == null
          ? null
          : Element.fromJson(json['_path'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionDiscriminatorToJson(
    ElementDefinitionDiscriminator instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  val['path'] = instance.path.toJson();
  writeNotNull('_path', instance.pathElement?.toJson());
  return val;
}

ElementDefinitionBase _$ElementDefinitionBaseFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionBase(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] == null
          ? null
          : Element.fromJson(json['_path'] as Map<String, dynamic>),
      min: FhirUnsignedInt.fromJson(json['min']),
      minElement: json['_min'] == null
          ? null
          : Element.fromJson(json['_min'] as Map<String, dynamic>),
      max: FhirString.fromJson(json['max']),
      maxElement: json['_max'] == null
          ? null
          : Element.fromJson(json['_max'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionBaseToJson(
    ElementDefinitionBase instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['path'] = instance.path.toJson();
  writeNotNull('_path', instance.pathElement?.toJson());
  val['min'] = instance.min.toJson();
  writeNotNull('_min', instance.minElement?.toJson());
  val['max'] = instance.max.toJson();
  writeNotNull('_max', instance.maxElement?.toJson());
  return val;
}

ElementDefinitionType _$ElementDefinitionTypeFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionType(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: FhirUri.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      profile: (json['profile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      profileElement: (json['_profile'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetProfile: (json['targetProfile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      targetProfileElement: (json['_targetProfile'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      aggregation: (json['aggregation'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      aggregationElement: (json['_aggregation'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      versioning: json['versioning'] == null
          ? null
          : FhirCode.fromJson(json['versioning']),
      versioningElement: json['_versioning'] == null
          ? null
          : Element.fromJson(json['_versioning'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionTypeToJson(
    ElementDefinitionType instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('profile', instance.profile?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_profile', instance.profileElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'targetProfile', instance.targetProfile?.map((e) => e.toJson()).toList());
  writeNotNull('_targetProfile',
      instance.targetProfileElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'aggregation', instance.aggregation?.map((e) => e.toJson()).toList());
  writeNotNull('_aggregation',
      instance.aggregationElement?.map((e) => e.toJson()).toList());
  writeNotNull('versioning', instance.versioning?.toJson());
  writeNotNull('_versioning', instance.versioningElement?.toJson());
  return val;
}

ElementDefinitionExample _$ElementDefinitionExampleFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionExample(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: FhirString.fromJson(json['label']),
      labelElement: json['_label'] == null
          ? null
          : Element.fromJson(json['_label'] as Map<String, dynamic>),
      valueBase64Binary: FhirBase64Binary.fromJson(json['valueBase64Binary']),
      valueBase64BinaryElement: json['_valueBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_valueBase64Binary'] as Map<String, dynamic>),
      valueBoolean: FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
      valueCanonical: FhirCanonical.fromJson(json['valueCanonical']),
      valueCanonicalElement: json['_valueCanonical'] == null
          ? null
          : Element.fromJson(json['_valueCanonical'] as Map<String, dynamic>),
      valueCode: FhirCode.fromJson(json['valueCode']),
      valueCodeElement: json['_valueCode'] == null
          ? null
          : Element.fromJson(json['_valueCode'] as Map<String, dynamic>),
      valueDate: FhirDate.fromJson(json['valueDate'] as String),
      valueDateElement: json['_valueDate'] == null
          ? null
          : Element.fromJson(json['_valueDate'] as Map<String, dynamic>),
      valueDateTime: FhirDateTime.fromJson(json['valueDateTime'] as String),
      valueDateTimeElement: json['_valueDateTime'] == null
          ? null
          : Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>),
      valueDecimal: FhirDecimal.fromJson(json['valueDecimal']),
      valueDecimalElement: json['_valueDecimal'] == null
          ? null
          : Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>),
      valueId: FhirId.fromJson(json['valueId']),
      valueIdElement: json['_valueId'] == null
          ? null
          : Element.fromJson(json['_valueId'] as Map<String, dynamic>),
      valueInstant: FhirInstant.fromJson(json['valueInstant'] as String),
      valueInstantElement: json['_valueInstant'] == null
          ? null
          : Element.fromJson(json['_valueInstant'] as Map<String, dynamic>),
      valueInteger: FhirInteger.fromJson(json['valueInteger']),
      valueIntegerElement: json['_valueInteger'] == null
          ? null
          : Element.fromJson(json['_valueInteger'] as Map<String, dynamic>),
      valueMarkdown: FhirMarkdown.fromJson(json['valueMarkdown']),
      valueMarkdownElement: json['_valueMarkdown'] == null
          ? null
          : Element.fromJson(json['_valueMarkdown'] as Map<String, dynamic>),
      valueOid: FhirOid.fromJson(json['valueOid']),
      valueOidElement: json['_valueOid'] == null
          ? null
          : Element.fromJson(json['_valueOid'] as Map<String, dynamic>),
      valuePositiveInt: FhirPositiveInt.fromJson(json['valuePositiveInt']),
      valuePositiveIntElement: json['_valuePositiveInt'] == null
          ? null
          : Element.fromJson(json['_valuePositiveInt'] as Map<String, dynamic>),
      valueString: FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueTime: FhirTime.fromJson(json['valueTime']),
      valueTimeElement: json['_valueTime'] == null
          ? null
          : Element.fromJson(json['_valueTime'] as Map<String, dynamic>),
      valueUnsignedInt: FhirUnsignedInt.fromJson(json['valueUnsignedInt']),
      valueUnsignedIntElement: json['_valueUnsignedInt'] == null
          ? null
          : Element.fromJson(json['_valueUnsignedInt'] as Map<String, dynamic>),
      valueUri: FhirUri.fromJson(json['valueUri']),
      valueUriElement: json['_valueUri'] == null
          ? null
          : Element.fromJson(json['_valueUri'] as Map<String, dynamic>),
      valueUrl: FhirUrl.fromJson(json['valueUrl']),
      valueUrlElement: json['_valueUrl'] == null
          ? null
          : Element.fromJson(json['_valueUrl'] as Map<String, dynamic>),
      valueUuid: FhirUuid.fromJson(json['valueUuid']),
      valueUuidElement: json['_valueUuid'] == null
          ? null
          : Element.fromJson(json['_valueUuid'] as Map<String, dynamic>),
      valueAddress:
          Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
      valueAge: Age.fromJson(json['valueAge'] as Map<String, dynamic>),
      valueAnnotation:
          Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
      valueAttachment:
          Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
      valueCodeableConcept: CodeableConcept.fromJson(
          json['valueCodeableConcept'] as Map<String, dynamic>),
      valueCodeableReference: CodeableReference.fromJson(
          json['valueCodeableReference'] as Map<String, dynamic>),
      valueCoding: Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
      valueContactPoint: ContactPoint.fromJson(
          json['valueContactPoint'] as Map<String, dynamic>),
      valueCount: Count.fromJson(json['valueCount'] as Map<String, dynamic>),
      valueDistance:
          Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
      valueDuration:
          FhirDuration.fromJson(json['valueDuration'] as Map<String, dynamic>),
      valueHumanName:
          HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
      valueIdentifier:
          Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
      valueMoney: Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
      valuePeriod: Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
      valueQuantity:
          Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueRange: Range.fromJson(json['valueRange'] as Map<String, dynamic>),
      valueRatio: Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
      valueRatioRange:
          RatioRange.fromJson(json['valueRatioRange'] as Map<String, dynamic>),
      valueReference:
          Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
      valueSampledData: SampledData.fromJson(
          json['valueSampledData'] as Map<String, dynamic>),
      valueSignature:
          Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
      valueTiming: Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
      valueContactDetail: ContactDetail.fromJson(
          json['valueContactDetail'] as Map<String, dynamic>),
      valueContributor: Contributor.fromJson(
          json['valueContributor'] as Map<String, dynamic>),
      valueDataRequirement: DataRequirement.fromJson(
          json['valueDataRequirement'] as Map<String, dynamic>),
      valueExpression: FhirExpression.fromJson(
          json['valueExpression'] as Map<String, dynamic>),
      valueParameterDefinition: ParameterDefinition.fromJson(
          json['valueParameterDefinition'] as Map<String, dynamic>),
      valueRelatedArtifact: RelatedArtifact.fromJson(
          json['valueRelatedArtifact'] as Map<String, dynamic>),
      valueTriggerDefinition: TriggerDefinition.fromJson(
          json['valueTriggerDefinition'] as Map<String, dynamic>),
      valueUsageContext: UsageContext.fromJson(
          json['valueUsageContext'] as Map<String, dynamic>),
      valueDosage: Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionExampleToJson(
    ElementDefinitionExample instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['label'] = instance.label.toJson();
  writeNotNull('_label', instance.labelElement?.toJson());
  val['valueBase64Binary'] = instance.valueBase64Binary.toJson();
  writeNotNull(
      '_valueBase64Binary', instance.valueBase64BinaryElement?.toJson());
  val['valueBoolean'] = instance.valueBoolean.toJson();
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  val['valueCanonical'] = instance.valueCanonical.toJson();
  writeNotNull('_valueCanonical', instance.valueCanonicalElement?.toJson());
  val['valueCode'] = instance.valueCode.toJson();
  writeNotNull('_valueCode', instance.valueCodeElement?.toJson());
  val['valueDate'] = instance.valueDate.toJson();
  writeNotNull('_valueDate', instance.valueDateElement?.toJson());
  val['valueDateTime'] = instance.valueDateTime.toJson();
  writeNotNull('_valueDateTime', instance.valueDateTimeElement?.toJson());
  val['valueDecimal'] = instance.valueDecimal.toJson();
  writeNotNull('_valueDecimal', instance.valueDecimalElement?.toJson());
  val['valueId'] = instance.valueId.toJson();
  writeNotNull('_valueId', instance.valueIdElement?.toJson());
  val['valueInstant'] = instance.valueInstant.toJson();
  writeNotNull('_valueInstant', instance.valueInstantElement?.toJson());
  val['valueInteger'] = instance.valueInteger.toJson();
  writeNotNull('_valueInteger', instance.valueIntegerElement?.toJson());
  val['valueMarkdown'] = instance.valueMarkdown.toJson();
  writeNotNull('_valueMarkdown', instance.valueMarkdownElement?.toJson());
  val['valueOid'] = instance.valueOid.toJson();
  writeNotNull('_valueOid', instance.valueOidElement?.toJson());
  val['valuePositiveInt'] = instance.valuePositiveInt.toJson();
  writeNotNull('_valuePositiveInt', instance.valuePositiveIntElement?.toJson());
  val['valueString'] = instance.valueString.toJson();
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  val['valueTime'] = instance.valueTime.toJson();
  writeNotNull('_valueTime', instance.valueTimeElement?.toJson());
  val['valueUnsignedInt'] = instance.valueUnsignedInt.toJson();
  writeNotNull('_valueUnsignedInt', instance.valueUnsignedIntElement?.toJson());
  val['valueUri'] = instance.valueUri.toJson();
  writeNotNull('_valueUri', instance.valueUriElement?.toJson());
  val['valueUrl'] = instance.valueUrl.toJson();
  writeNotNull('_valueUrl', instance.valueUrlElement?.toJson());
  val['valueUuid'] = instance.valueUuid.toJson();
  writeNotNull('_valueUuid', instance.valueUuidElement?.toJson());
  val['valueAddress'] = instance.valueAddress.toJson();
  val['valueAge'] = instance.valueAge.toJson();
  val['valueAnnotation'] = instance.valueAnnotation.toJson();
  val['valueAttachment'] = instance.valueAttachment.toJson();
  val['valueCodeableConcept'] = instance.valueCodeableConcept.toJson();
  val['valueCodeableReference'] = instance.valueCodeableReference.toJson();
  val['valueCoding'] = instance.valueCoding.toJson();
  val['valueContactPoint'] = instance.valueContactPoint.toJson();
  val['valueCount'] = instance.valueCount.toJson();
  val['valueDistance'] = instance.valueDistance.toJson();
  val['valueDuration'] = instance.valueDuration.toJson();
  val['valueHumanName'] = instance.valueHumanName.toJson();
  val['valueIdentifier'] = instance.valueIdentifier.toJson();
  val['valueMoney'] = instance.valueMoney.toJson();
  val['valuePeriod'] = instance.valuePeriod.toJson();
  val['valueQuantity'] = instance.valueQuantity.toJson();
  val['valueRange'] = instance.valueRange.toJson();
  val['valueRatio'] = instance.valueRatio.toJson();
  val['valueRatioRange'] = instance.valueRatioRange.toJson();
  val['valueReference'] = instance.valueReference.toJson();
  val['valueSampledData'] = instance.valueSampledData.toJson();
  val['valueSignature'] = instance.valueSignature.toJson();
  val['valueTiming'] = instance.valueTiming.toJson();
  val['valueContactDetail'] = instance.valueContactDetail.toJson();
  val['valueContributor'] = instance.valueContributor.toJson();
  val['valueDataRequirement'] = instance.valueDataRequirement.toJson();
  val['valueExpression'] = instance.valueExpression.toJson();
  val['valueParameterDefinition'] = instance.valueParameterDefinition.toJson();
  val['valueRelatedArtifact'] = instance.valueRelatedArtifact.toJson();
  val['valueTriggerDefinition'] = instance.valueTriggerDefinition.toJson();
  val['valueUsageContext'] = instance.valueUsageContext.toJson();
  val['valueDosage'] = instance.valueDosage.toJson();
  return val;
}

ElementDefinitionConstraint _$ElementDefinitionConstraintFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionConstraint(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      key: FhirId.fromJson(json['key']),
      keyElement: json['_key'] == null
          ? null
          : Element.fromJson(json['_key'] as Map<String, dynamic>),
      requirements: json['requirements'] == null
          ? null
          : FhirString.fromJson(json['requirements']),
      requirementsElement: json['_requirements'] == null
          ? null
          : Element.fromJson(json['_requirements'] as Map<String, dynamic>),
      severity: FhirCode.fromJson(json['severity']),
      severityElement: json['_severity'] == null
          ? null
          : Element.fromJson(json['_severity'] as Map<String, dynamic>),
      human: FhirString.fromJson(json['human']),
      humanElement: json['_human'] == null
          ? null
          : Element.fromJson(json['_human'] as Map<String, dynamic>),
      expression: json['expression'] == null
          ? null
          : FhirString.fromJson(json['expression']),
      expressionElement: json['_expression'] == null
          ? null
          : Element.fromJson(json['_expression'] as Map<String, dynamic>),
      xpath: json['xpath'] == null ? null : FhirString.fromJson(json['xpath']),
      xpathElement: json['_xpath'] == null
          ? null
          : Element.fromJson(json['_xpath'] as Map<String, dynamic>),
      source: json['source'] == null
          ? null
          : FhirCanonical.fromJson(json['source']),
      sourceElement: json['_source'] == null
          ? null
          : Element.fromJson(json['_source'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionConstraintToJson(
    ElementDefinitionConstraint instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['key'] = instance.key.toJson();
  writeNotNull('_key', instance.keyElement?.toJson());
  writeNotNull('requirements', instance.requirements?.toJson());
  writeNotNull('_requirements', instance.requirementsElement?.toJson());
  val['severity'] = instance.severity.toJson();
  writeNotNull('_severity', instance.severityElement?.toJson());
  val['human'] = instance.human.toJson();
  writeNotNull('_human', instance.humanElement?.toJson());
  writeNotNull('expression', instance.expression?.toJson());
  writeNotNull('_expression', instance.expressionElement?.toJson());
  writeNotNull('xpath', instance.xpath?.toJson());
  writeNotNull('_xpath', instance.xpathElement?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('_source', instance.sourceElement?.toJson());
  return val;
}

ElementDefinitionBinding _$ElementDefinitionBindingFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionBinding(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      strength: FhirCode.fromJson(json['strength']),
      strengthElement: json['_strength'] == null
          ? null
          : Element.fromJson(json['_strength'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      valueSet: json['valueSet'] == null
          ? null
          : FhirCanonical.fromJson(json['valueSet']),
      valueSetElement: json['_valueSet'] == null
          ? null
          : Element.fromJson(json['_valueSet'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionBindingToJson(
    ElementDefinitionBinding instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['strength'] = instance.strength.toJson();
  writeNotNull('_strength', instance.strengthElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('valueSet', instance.valueSet?.toJson());
  writeNotNull('_valueSet', instance.valueSetElement?.toJson());
  return val;
}

ElementDefinitionMapping _$ElementDefinitionMappingFromJson(
        Map<String, dynamic> json) =>
    ElementDefinitionMapping(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identity: FhirId.fromJson(json['identity']),
      identityElement: json['_identity'] == null
          ? null
          : Element.fromJson(json['_identity'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['_language'] == null
          ? null
          : Element.fromJson(json['_language'] as Map<String, dynamic>),
      map: FhirString.fromJson(json['map']),
      mapElement: json['_map'] == null
          ? null
          : Element.fromJson(json['_map'] as Map<String, dynamic>),
      comment:
          json['comment'] == null ? null : FhirString.fromJson(json['comment']),
      commentElement: json['_comment'] == null
          ? null
          : Element.fromJson(json['_comment'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$ElementDefinitionMappingToJson(
    ElementDefinitionMapping instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  val['identity'] = instance.identity.toJson();
  writeNotNull('_identity', instance.identityElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('_language', instance.languageElement?.toJson());
  val['map'] = instance.map.toJson();
  writeNotNull('_map', instance.mapElement?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('_comment', instance.commentElement?.toJson());
  return val;
}