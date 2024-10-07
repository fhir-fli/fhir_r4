import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Parameters] /// This resource is a non-persisted resource used to pass information into and
/// back from an [operation](operations.html). It has no other use, and there
/// is no RESTful endpoint associated with it.
class Parameters extends DomainResource {
  Parameters({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    this.parameter,
  }) : super(resourceType: R4ResourceType.Parameters);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [parameter] /// A parameter passed to or received from the operation.
  final List<ParametersParameter>? parameter;
  @override
  Parameters clone() => throw UnimplementedError();
  Parameters copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    List<ParametersParameter>? parameter,
  }) {
    return Parameters(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      parameter: parameter ?? this.parameter,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ParametersParameter] /// A parameter passed to or received from the operation.
class ParametersParameter extends BackboneElement {
  ParametersParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
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
    this.valueMeta,
    this.resource,
    this.part_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the parameter (reference to the operation definition).
  final FhirString name;
  final Element? nameElement;

  /// [valueBase64Binary] /// Conveys the content if the parameter is a data type.
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// Conveys the content if the parameter is a data type.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueCanonical] /// Conveys the content if the parameter is a data type.
  final FhirCanonical? valueCanonical;
  final Element? valueCanonicalElement;

  /// [valueCode] /// Conveys the content if the parameter is a data type.
  final FhirCode? valueCode;
  final Element? valueCodeElement;

  /// [valueDate] /// Conveys the content if the parameter is a data type.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// Conveys the content if the parameter is a data type.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// Conveys the content if the parameter is a data type.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueId] /// Conveys the content if the parameter is a data type.
  final FhirId? valueId;
  final Element? valueIdElement;

  /// [valueInstant] /// Conveys the content if the parameter is a data type.
  final FhirInstant? valueInstant;
  final Element? valueInstantElement;

  /// [valueInteger] /// Conveys the content if the parameter is a data type.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// Conveys the content if the parameter is a data type.
  final FhirMarkdown? valueMarkdown;
  final Element? valueMarkdownElement;

  /// [valueOid] /// Conveys the content if the parameter is a data type.
  final FhirOid? valueOid;
  final Element? valueOidElement;

  /// [valuePositiveInt] /// Conveys the content if the parameter is a data type.
  final FhirPositiveInt? valuePositiveInt;
  final Element? valuePositiveIntElement;

  /// [valueString] /// Conveys the content if the parameter is a data type.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueTime] /// Conveys the content if the parameter is a data type.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// Conveys the content if the parameter is a data type.
  final FhirUnsignedInt? valueUnsignedInt;
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// Conveys the content if the parameter is a data type.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueUrl] /// Conveys the content if the parameter is a data type.
  final FhirUrl? valueUrl;
  final Element? valueUrlElement;

  /// [valueUuid] /// Conveys the content if the parameter is a data type.
  final FhirUuid? valueUuid;
  final Element? valueUuidElement;

  /// [valueAddress] /// Conveys the content if the parameter is a data type.
  final Address? valueAddress;

  /// [valueAge] /// Conveys the content if the parameter is a data type.
  final Age? valueAge;

  /// [valueAnnotation] /// Conveys the content if the parameter is a data type.
  final Annotation? valueAnnotation;

  /// [valueAttachment] /// Conveys the content if the parameter is a data type.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept] /// Conveys the content if the parameter is a data type.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding] /// Conveys the content if the parameter is a data type.
  final Coding? valueCoding;

  /// [valueContactPoint] /// Conveys the content if the parameter is a data type.
  final ContactPoint? valueContactPoint;

  /// [valueCount] /// Conveys the content if the parameter is a data type.
  final Count? valueCount;

  /// [valueDistance] /// Conveys the content if the parameter is a data type.
  final Distance? valueDistance;

  /// [valueDuration] /// Conveys the content if the parameter is a data type.
  final FhirDuration? valueDuration;

  /// [valueHumanName] /// Conveys the content if the parameter is a data type.
  final HumanName? valueHumanName;

  /// [valueIdentifier] /// Conveys the content if the parameter is a data type.
  final Identifier? valueIdentifier;

  /// [valueMoney] /// Conveys the content if the parameter is a data type.
  final Money? valueMoney;

  /// [valuePeriod] /// Conveys the content if the parameter is a data type.
  final Period? valuePeriod;

  /// [valueQuantity] /// Conveys the content if the parameter is a data type.
  final Quantity? valueQuantity;

  /// [valueRange] /// Conveys the content if the parameter is a data type.
  final Range? valueRange;

  /// [valueRatio] /// Conveys the content if the parameter is a data type.
  final Ratio? valueRatio;

  /// [valueReference] /// Conveys the content if the parameter is a data type.
  final Reference? valueReference;

  /// [valueSampledData] /// Conveys the content if the parameter is a data type.
  final SampledData? valueSampledData;

  /// [valueSignature] /// Conveys the content if the parameter is a data type.
  final Signature? valueSignature;

  /// [valueTiming] /// Conveys the content if the parameter is a data type.
  final Timing? valueTiming;

  /// [valueContactDetail] /// Conveys the content if the parameter is a data type.
  final ContactDetail? valueContactDetail;

  /// [valueContributor] /// Conveys the content if the parameter is a data type.
  final Contributor? valueContributor;

  /// [valueDataRequirement] /// Conveys the content if the parameter is a data type.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression] /// Conveys the content if the parameter is a data type.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition] /// Conveys the content if the parameter is a data type.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact] /// Conveys the content if the parameter is a data type.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition] /// Conveys the content if the parameter is a data type.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext] /// Conveys the content if the parameter is a data type.
  final UsageContext? valueUsageContext;

  /// [valueDosage] /// Conveys the content if the parameter is a data type.
  final Dosage? valueDosage;

  /// [valueMeta] /// Conveys the content if the parameter is a data type.
  final FhirMeta? valueMeta;

  /// [resource] /// If the parameter is a whole resource.
  final Resource? resource;

  /// [part_] /// A named part of a multi-part parameter.
  final List<ParametersParameter>? part_;
  @override
  ParametersParameter clone() => throw UnimplementedError();
  ParametersParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirCanonical? valueCanonical,
    Element? valueCanonicalElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirId? valueId,
    Element? valueIdElement,
    FhirInstant? valueInstant,
    Element? valueInstantElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirMarkdown? valueMarkdown,
    Element? valueMarkdownElement,
    FhirOid? valueOid,
    Element? valueOidElement,
    FhirPositiveInt? valuePositiveInt,
    Element? valuePositiveIntElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirUnsignedInt? valueUnsignedInt,
    Element? valueUnsignedIntElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirUrl? valueUrl,
    Element? valueUrlElement,
    FhirUuid? valueUuid,
    Element? valueUuidElement,
    Address? valueAddress,
    Age? valueAge,
    Annotation? valueAnnotation,
    Attachment? valueAttachment,
    CodeableConcept? valueCodeableConcept,
    Coding? valueCoding,
    ContactPoint? valueContactPoint,
    Count? valueCount,
    Distance? valueDistance,
    FhirDuration? valueDuration,
    HumanName? valueHumanName,
    Identifier? valueIdentifier,
    Money? valueMoney,
    Period? valuePeriod,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    Reference? valueReference,
    SampledData? valueSampledData,
    Signature? valueSignature,
    Timing? valueTiming,
    ContactDetail? valueContactDetail,
    Contributor? valueContributor,
    DataRequirement? valueDataRequirement,
    FhirExpression? valueExpression,
    ParameterDefinition? valueParameterDefinition,
    RelatedArtifact? valueRelatedArtifact,
    TriggerDefinition? valueTriggerDefinition,
    UsageContext? valueUsageContext,
    Dosage? valueDosage,
    FhirMeta? valueMeta,
    Resource? resource,
    List<ParametersParameter>? part_,
  }) {
    return ParametersParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCanonicalElement:
          valueCanonicalElement ?? this.valueCanonicalElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInstantElement: valueInstantElement ?? this.valueInstantElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueMarkdownElement: valueMarkdownElement ?? this.valueMarkdownElement,
      valueOid: valueOid ?? this.valueOid,
      valueOidElement: valueOidElement ?? this.valueOidElement,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valuePositiveIntElement:
          valuePositiveIntElement ?? this.valuePositiveIntElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUnsignedIntElement:
          valueUnsignedIntElement ?? this.valueUnsignedIntElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUrlElement: valueUrlElement ?? this.valueUrlElement,
      valueUuid: valueUuid ?? this.valueUuid,
      valueUuidElement: valueUuidElement ?? this.valueUuidElement,
      valueAddress: valueAddress ?? this.valueAddress,
      valueAge: valueAge ?? this.valueAge,
      valueAnnotation: valueAnnotation ?? this.valueAnnotation,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueCoding: valueCoding ?? this.valueCoding,
      valueContactPoint: valueContactPoint ?? this.valueContactPoint,
      valueCount: valueCount ?? this.valueCount,
      valueDistance: valueDistance ?? this.valueDistance,
      valueDuration: valueDuration ?? this.valueDuration,
      valueHumanName: valueHumanName ?? this.valueHumanName,
      valueIdentifier: valueIdentifier ?? this.valueIdentifier,
      valueMoney: valueMoney ?? this.valueMoney,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueReference: valueReference ?? this.valueReference,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueSignature: valueSignature ?? this.valueSignature,
      valueTiming: valueTiming ?? this.valueTiming,
      valueContactDetail: valueContactDetail ?? this.valueContactDetail,
      valueContributor: valueContributor ?? this.valueContributor,
      valueDataRequirement: valueDataRequirement ?? this.valueDataRequirement,
      valueExpression: valueExpression ?? this.valueExpression,
      valueParameterDefinition:
          valueParameterDefinition ?? this.valueParameterDefinition,
      valueRelatedArtifact: valueRelatedArtifact ?? this.valueRelatedArtifact,
      valueTriggerDefinition:
          valueTriggerDefinition ?? this.valueTriggerDefinition,
      valueUsageContext: valueUsageContext ?? this.valueUsageContext,
      valueDosage: valueDosage ?? this.valueDosage,
      valueMeta: valueMeta ?? this.valueMeta,
      resource: resource ?? this.resource,
      part_: part_ ?? this.part_,
    );
  }
}
