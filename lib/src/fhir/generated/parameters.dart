import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Parameters {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final List<ParametersParameter> parameter;
}

@Data()
@JsonCodable()
class ParametersParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueCanonical;
  final PrimitiveElement valueCanonicalElement;
  final String valueCode;
  final PrimitiveElement valueCodeElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final String valueId;
  final PrimitiveElement valueIdElement;
  final String valueInstant;
  final PrimitiveElement valueInstantElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueMarkdown;
  final PrimitiveElement valueMarkdownElement;
  final String valueOid;
  final PrimitiveElement valueOidElement;
  final double valuePositiveInt;
  final PrimitiveElement valuePositiveIntElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final double valueUnsignedInt;
  final PrimitiveElement valueUnsignedIntElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final String valueUrl;
  final PrimitiveElement valueUrlElement;
  final String valueUuid;
  final PrimitiveElement valueUuidElement;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueDuration;
  final HumanName valueHumanName;
  final Identifier valueIdentifier;
  final Money valueMoney;
  final Period valuePeriod;
  final Quantity valueQuantity;
  final Range valueRange;
  final Ratio valueRatio;
  final Reference valueReference;
  final SampledData valueSampledData;
  final Signature valueSignature;
  final Timing valueTiming;
  final ContactDetail valueContactDetail;
  final Contributor valueContributor;
  final DataRequirement valueDataRequirement;
  final FhirExpression valueExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  final FhirMeta valueMeta;
  final Resource resource;
  final List<ParametersParameter> part_;
}


