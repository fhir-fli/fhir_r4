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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final List<ParametersParameter> parameter;
}

@Data()
@JsonCodable()
class ParametersParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String valueBase64Binary;
  final PrimitiveElement ValueBase64Binary;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final String valueCanonical;
  final PrimitiveElement ValueCanonical;
  final String valueCode;
  final PrimitiveElement ValueCode;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  final String valueId;
  final PrimitiveElement ValueId;
  final String valueInstant;
  final PrimitiveElement ValueInstant;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final String valueMarkdown;
  final PrimitiveElement ValueMarkdown;
  final String valueOid;
  final PrimitiveElement ValueOid;
  final double valuePositiveInt;
  final PrimitiveElement ValuePositiveInt;
  final String valueString;
  final PrimitiveElement ValueString;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final double valueUnsignedInt;
  final PrimitiveElement ValueUnsignedInt;
  final String valueUri;
  final PrimitiveElement ValueUri;
  final String valueUrl;
  final PrimitiveElement ValueUrl;
  final String valueUuid;
  final PrimitiveElement ValueUuid;
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
  final ResourceList resource;
  final List<ParametersParameter> part;
}


