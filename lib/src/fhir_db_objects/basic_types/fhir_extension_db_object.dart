import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';
import '../fhir_db_objects.dart';

@Entity()
class FhirExtensionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
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

  FhirExtensionDbObject({required this.id});

  // Convert to FHIR FhirExtension
  FhirExtension toFhir() {
    return FhirExtension(
      id: fhirId.target?.value,
      extension_:
          extension_.map((FhirExtensionDbObject e) => e.toFhir()).toList(),
      url: url.target?.value != null ? FhirUri(url.target!.value) : null,
      valueBase64Binary: valueBase64Binary.target?.value != null
          ? FhirBase64Binary(valueBase64Binary.target!.value)
          : null,
      valueBoolean: valueBoolean.target?.value != null
          ? FhirBoolean(valueBoolean.target!.value)
          : null,
      valueCanonical: valueCanonical.target?.value != null
          ? FhirCanonical(valueCanonical.target!.value)
          : null,
      valueCode: valueCode.target?.value != null
          ? FhirCode(valueCode.target!.value)
          : null,
      valueDate: valueDate.target?.value != null
          ? FhirDate(valueDate.target!.value)
          : null,
      valueDateTime: valueDateTime.target?.value != null
          ? FhirDateTime(valueDateTime.target!.value)
          : null,
      valueDecimal: valueDecimal.target?.value != null
          ? FhirDecimal(valueDecimal.target!.value)
          : null,
      valueId:
          valueId.target?.value != null ? FhirId(valueId.target!.value) : null,
      valueInstant: valueInstant.target?.value != null
          ? FhirInstant(valueInstant.target!.value)
          : null,
      valueInteger: valueInteger.target?.value != null
          ? FhirInteger(valueInteger.target!.value)
          : null,
      valueMarkdown: valueMarkdown.target?.value != null
          ? FhirMarkdown(valueMarkdown.target!.value)
          : null,
      valueOid: valueOid.target?.value != null
          ? FhirOid(valueOid.target!.value)
          : null,
      valuePositiveInt: valuePositiveInt.target?.value != null
          ? FhirPositiveInt(valuePositiveInt.target!.value)
          : null,
      valueString:
          valueString.target?.value != null ? valueString.target!.value : null,
      valueTime: valueTime.target?.value != null
          ? FhirTime(valueTime.target!.value)
          : null,
      valueUnsignedInt: valueUnsignedInt.target?.value != null
          ? FhirUnsignedInt(valueUnsignedInt.target!.value)
          : null,
      valueUri: valueUri.target?.value != null
          ? FhirUri(valueUri.target!.value)
          : null,
      valueUrl: valueUrl.target?.value != null
          ? FhirUrl(valueUrl.target!.value)
          : null,
      valueUuid: valueUuid.target?.value != null
          ? FhirUuid(valueUuid.target!.value)
          : null,
      valueAddress: valueAddress.target?.toFhir(),
      valueAge: valueAge.target?.toFhir(),
      valueAnnotation: valueAnnotation.target?.toFhir(),
      valueAttachment: valueAttachment.target?.toFhir(),
      valueCodeableConcept: valueCodeableConcept.target?.toFhir(),
      valueCodeableReference: valueCodeableReference.target?.toFhir(),
      valueCoding: valueCoding.target?.toFhir(),
      valueContactPoint: valueContactPoint.target?.toFhir(),
      valueCount: valueCount.target?.toFhir(),
      valueDistance: valueDistance.target?.toFhir(),
      valueDuration: valueDuration.target?.toFhir(),
      valueHumanName: valueHumanName.target?.toFhir(),
      valueIdentifier: valueIdentifier.target?.toFhir(),
      valueMoney: valueMoney.target?.toFhir(),
      valuePeriod: valuePeriod.target?.toFhir(),
      valueQuantity: valueQuantity.target?.toFhir(),
      valueRange: valueRange.target?.toFhir(),
      valueRatio: valueRatio.target?.toFhir(),
      valueRatioRange: valueRatioRange.target?.toFhir(),
      valueReference: valueReference.target?.toFhir(),
      valueSampledData: valueSampledData.target?.toFhir(),
      valueSignature: valueSignature.target?.toFhir(),
      valueTiming: valueTiming.target?.toFhir(),
      valueContactDetail: valueContactDetail.target?.toFhir(),
      valueContributor: valueContributor.target?.toFhir(),
      valueDataRequirement: valueDataRequirement.target?.toFhir(),
      valueExpression: valueExpression.target?.toFhir(),
      valueParameterDefinition: valueParameterDefinition.target?.toFhir(),
      valueRelatedArtifact: valueRelatedArtifact.target?.toFhir(),
      valueTriggerDefinition: valueTriggerDefinition.target?.toFhir(),
      valueUsageContext: valueUsageContext.target?.toFhir(),
      valueDosage: valueDosage.target?.toFhir(),
    );
  }

  // Convert from FHIR FhirExtension
  factory FhirExtensionDbObject.fromFhir(FhirExtension fhirExtension) {
    final FhirExtensionDbObject extensionDbObject =
        FhirExtensionDbObject(id: 0, fhirId: fhirExtension.id);

    if (fhirExtension.extension_ != null) {
      extensionDbObject.extension_.addAll(
        fhirExtension.extension_!
            .map((FhirExtension e) => FhirExtensionDbObject.fromFhir(e)),
      );
    }

    if (fhirExtension.url != null) {
      extensionDbObject.url.target =
          FhirUriDbObject(value: fhirExtension.url!.value);
    }

    if (fhirExtension.valueBase64Binary != null) {
      extensionDbObject.valueBase64Binary.target = FhirBase64BinaryDbObject(
          value: fhirExtension.valueBase64Binary!.value);
    }

    if (fhirExtension.valueBoolean != null) {
      extensionDbObject.valueBoolean.target =
          FhirBooleanDbObject(value: fhirExtension.valueBoolean!.value);
    }

    if (fhirExtension.valueCanonical != null) {
      extensionDbObject.valueCanonical.target =
          FhirCanonicalDbObject(value: fhirExtension.valueCanonical!.value);
    }

    if (fhirExtension.valueCode != null) {
      extensionDbObject.valueCode.target =
          FhirCodeDbObject(value: fhirExtension.valueCode!.value);
    }

    if (fhirExtension.valueDate != null) {
      extensionDbObject.valueDate.target =
          FhirDateDbObject(value: fhirExtension.valueDate!.value);
    }

    if (fhirExtension.valueDateTime != null) {
      extensionDbObject.valueDateTime.target =
          FhirDateTimeDbObject(value: fhirExtension.valueDateTime!.value);
    }

    if (fhirExtension.valueDecimal != null) {
      extensionDbObject.valueDecimal.target =
          FhirDecimalDbObject(value: fhirExtension.valueDecimal!.value);
    }

    if (fhirExtension.valueId != null) {
      extensionDbObject.valueId.target =
          FhirIdDbObject(value: fhirExtension.valueId!.value);
    }

    if (fhirExtension.valueInstant != null) {
      extensionDbObject.valueInstant.target =
          FhirInstantDbObject(value: fhirExtension.valueInstant!.value);
    }

    if (fhirExtension.valueInteger != null) {
      extensionDbObject.valueInteger.target =
          FhirIntegerDbObject(value: fhirExtension.valueInteger!.value);
    }

    if (fhirExtension.valueMarkdown != null) {
      extensionDbObject.valueMarkdown.target =
          FhirMarkdownDbObject(value: fhirExtension.valueMarkdown!.value);
    }

    if (fhirExtension.valueOid != null) {
      extensionDbObject.valueOid.target =
          FhirOidDbObject(value: fhirExtension.valueOid!.value);
    }

    if (fhirExtension.valuePositiveInt != null) {
      extensionDbObject.valuePositiveInt.target =
          FhirPositiveIntDbObject(value: fhirExtension.valuePositiveInt!.value);
    }

    if (fhirExtension.valueString != null) {
      extensionDbObject.valueString.target =
          StringDbObject(value: fhirExtension.valueString!);
    }

    if (fhirExtension.valueTime != null) {
      extensionDbObject.valueTime.target =
          FhirTimeDbObject(value: fhirExtension.valueTime!.value);
    }

    if (fhirExtension.valueUnsignedInt != null) {
      extensionDbObject.valueUnsignedInt.target =
          FhirUnsignedIntDbObject(value: fhirExtension.valueUnsignedInt!.value);
    }

    if (fhirExtension.valueUri != null) {
      extensionDbObject.valueUri.target =
          FhirUriDbObject(value: fhirExtension.valueUri!.value);
    }

    if (fhirExtension.valueUrl != null) {
      extensionDbObject.valueUrl.target =
          FhirUrlDbObject(value: fhirExtension.valueUrl!.value);
    }

    if (fhirExtension.valueUuid != null) {
      extensionDbObject.valueUuid.target =
          FhirUuidDbObject(value: fhirExtension.valueUuid!.value);
    }

    if (fhirExtension.valueAddress != null) {
      extensionDbObject.valueAddress.target =
          AddressDbObject.fromFhir(fhirExtension.valueAddress!);
    }

    if (fhirExtension.valueAge != null) {
      extensionDbObject.valueAge.target =
          AgeDbObject.fromFhir(fhirExtension.valueAge!);
    }

    if (fhirExtension.valueAnnotation != null) {
      extensionDbObject.valueAnnotation.target =
          AnnotationDbObject.fromFhir(fhirExtension.valueAnnotation!);
    }

    if (fhirExtension.valueAttachment != null) {
      extensionDbObject.valueAttachment.target =
          AttachmentDbObject.fromFhir(fhirExtension.valueAttachment!);
    }

    if (fhirExtension.valueCodeableConcept != null) {
      extensionDbObject.valueCodeableConcept.target =
          CodeableConceptDbObject.fromFhir(fhirExtension.valueCodeableConcept!);
    }

    if (fhirExtension.valueCodeableReference != null) {
      extensionDbObject.valueCodeableReference.target =
          CodeableReferenceDbObject.fromFhir(
              fhirExtension.valueCodeableReference!);
    }

    if (fhirExtension.valueCoding != null) {
      extensionDbObject.valueCoding.target =
          CodingDbObject.fromFhir(fhirExtension.valueCoding!);
    }

    if (fhirExtension.valueContactPoint != null) {
      extensionDbObject.valueContactPoint.target =
          ContactPointDbObject.fromFhir(fhirExtension.valueContactPoint!);
    }

    if (fhirExtension.valueCount != null) {
      extensionDbObject.valueCount.target =
          CountDbObject.fromFhir(fhirExtension.valueCount!);
    }

    if (fhirExtension.valueDistance != null) {
      extensionDbObject.valueDistance.target =
          DistanceDbObject.fromFhir(fhirExtension.valueDistance!);
    }

    if (fhirExtension.valueDuration != null) {
      extensionDbObject.valueDuration.target =
          FhirDurationDbObject.fromFhir(fhirExtension.valueDuration!);
    }

    if (fhirExtension.valueHumanName != null) {
      extensionDbObject.valueHumanName.target =
          HumanNameDbObject.fromFhir(fhirExtension.valueHumanName!);
    }

    if (fhirExtension.valueIdentifier != null) {
      extensionDbObject.valueIdentifier.target =
          IdentifierDbObject.fromFhir(fhirExtension.valueIdentifier!);
    }

    if (fhirExtension.valueMoney != null) {
      extensionDbObject.valueMoney.target =
          MoneyDbObject.fromFhir(fhirExtension.valueMoney!);
    }

    if (fhirExtension.valuePeriod != null) {
      extensionDbObject.valuePeriod.target =
          PeriodDbObject.fromFhir(fhirExtension.valuePeriod!);
    }

    if (fhirExtension.valueQuantity != null) {
      extensionDbObject.valueQuantity.target =
          QuantityDbObject.fromFhir(fhirExtension.valueQuantity!);
    }

    if (fhirExtension.valueRange != null) {
      extensionDbObject.valueRange.target =
          RangeDbObject.fromFhir(fhirExtension.valueRange!);
    }

    if (fhirExtension.valueRatio != null) {
      extensionDbObject.valueRatio.target =
          RatioDbObject.fromFhir(fhirExtension.valueRatio!);
    }

    if (fhirExtension.valueRatioRange != null) {
      extensionDbObject.valueRatioRange.target =
          RatioRangeDbObject.fromFhir(fhirExtension.valueRatioRange!);
    }

    if (fhirExtension.valueReference != null) {
      extensionDbObject.valueReference.target =
          ReferenceDbObject.fromFhir(fhirExtension.valueReference!);
    }

    if (fhirExtension.valueSampledData != null) {
      extensionDbObject.valueSampledData.target =
          SampledDataDbObject.fromFhir(fhirExtension.valueSampledData!);
    }

    if (fhirExtension.valueSignature != null) {
      extensionDbObject.valueSignature.target =
          SignatureDbObject.fromFhir(fhirExtension.valueSignature!);
    }

    if (fhirExtension.valueTiming != null) {
      extensionDbObject.valueTiming.target =
          TimingDbObject.fromFhir(fhirExtension.valueTiming!);
    }

    if (fhirExtension.valueContactDetail != null) {
      extensionDbObject.valueContactDetail.target =
          ContactDetailDbObject.fromFhir(fhirExtension.valueContactDetail!);
    }

    if (fhirExtension.valueContributor != null) {
      extensionDbObject.valueContributor.target =
          ContributorDbObject.fromFhir(fhirExtension.valueContributor!);
    }

    if (fhirExtension.valueDataRequirement != null) {
      extensionDbObject.valueDataRequirement.target =
          DataRequirementDbObject.fromFhir(fhirExtension.valueDataRequirement!);
    }

    if (fhirExtension.valueExpression != null) {
      extensionDbObject.valueExpression.target =
          ExpressionDbObject.fromFhir(fhirExtension.valueExpression!);
    }

    if (fhirExtension.valueParameterDefinition != null) {
      extensionDbObject.valueParameterDefinition.target =
          ParameterDefinitionDbObject.fromFhir(
              fhirExtension.valueParameterDefinition!);
    }

    if (fhirExtension.valueRelatedArtifact != null) {
      extensionDbObject.valueRelatedArtifact.target =
          RelatedArtifactDbObject.fromFhir(fhirExtension.valueRelatedArtifact!);
    }

    if (fhirExtension.valueTriggerDefinition != null) {
      extensionDbObject.valueTriggerDefinition.target =
          TriggerDefinitionDbObject.fromFhir(
              fhirExtension.valueTriggerDefinition!);
    }

    if (fhirExtension.valueUsageContext != null) {
      extensionDbObject.valueUsageContext.target =
          UsageContextDbObject.fromFhir(fhirExtension.valueUsageContext!);
    }

    if (fhirExtension.valueDosage != null) {
      extensionDbObject.valueDosage.target =
          DosageDbObject.fromFhir(fhirExtension.valueDosage!);
    }

    return extensionDbObject;
  }
}
