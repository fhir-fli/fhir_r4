import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapSource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId context;
  final PrimitiveElement Context;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String type;
  final PrimitiveElement Type;
  final String defaultValueBase64Binary;
  final PrimitiveElement DefaultValueBase64Binary;
  final bool defaultValueBoolean;
  final PrimitiveElement DefaultValueBoolean;
  final String defaultValueCanonical;
  final PrimitiveElement DefaultValueCanonical;
  final String defaultValueCode;
  final PrimitiveElement DefaultValueCode;
  final String defaultValueDate;
  final PrimitiveElement DefaultValueDate;
  final String defaultValueDateTime;
  final PrimitiveElement DefaultValueDateTime;
  final double defaultValueDecimal;
  final PrimitiveElement DefaultValueDecimal;
  final String defaultValueId;
  final PrimitiveElement DefaultValueId;
  final String defaultValueInstant;
  final PrimitiveElement DefaultValueInstant;
  final double defaultValueInteger;
  final PrimitiveElement DefaultValueInteger;
  final String defaultValueMarkdown;
  final PrimitiveElement DefaultValueMarkdown;
  final String defaultValueOid;
  final PrimitiveElement DefaultValueOid;
  final double defaultValuePositiveInt;
  final PrimitiveElement DefaultValuePositiveInt;
  final String defaultValueString;
  final PrimitiveElement DefaultValueString;
  final String defaultValueTime;
  final PrimitiveElement DefaultValueTime;
  final double defaultValueUnsignedInt;
  final PrimitiveElement DefaultValueUnsignedInt;
  final String defaultValueUri;
  final PrimitiveElement DefaultValueUri;
  final String defaultValueUrl;
  final PrimitiveElement DefaultValueUrl;
  final String defaultValueUuid;
  final PrimitiveElement DefaultValueUuid;
  final Address defaultValueAddress;
  final Age defaultValueAge;
  final Annotation defaultValueAnnotation;
  final Attachment defaultValueAttachment;
  final CodeableConcept defaultValueCodeableConcept;
  final Coding defaultValueCoding;
  final ContactPoint defaultValueContactPoint;
  final Count defaultValueCount;
  final Distance defaultValueDistance;
  final FhirDuration defaultValueDuration;
  final HumanName defaultValueHumanName;
  final Identifier defaultValueIdentifier;
  final Money defaultValueMoney;
  final Period defaultValuePeriod;
  final Quantity defaultValueQuantity;
  final Range defaultValueRange;
  final Ratio defaultValueRatio;
  final Reference defaultValueReference;
  final SampledData defaultValueSampledData;
  final Signature defaultValueSignature;
  final Timing defaultValueTiming;
  final ContactDetail defaultValueContactDetail;
  final Contributor defaultValueContributor;
  final DataRequirement defaultValueDataRequirement;
  final FhirExpression defaultValueExpression;
  final ParameterDefinition defaultValueParameterDefinition;
  final RelatedArtifact defaultValueRelatedArtifact;
  final TriggerDefinition defaultValueTriggerDefinition;
  final UsageContext defaultValueUsageContext;
  final Dosage defaultValueDosage;
  final FhirMeta defaultValueMeta;
  final String element;
  final PrimitiveElement Element;
  final FhirCode listMode;
  final PrimitiveElement ListMode;
  final FhirId variable;
  final PrimitiveElement Variable;
  final String condition;
  final PrimitiveElement Condition;
  final String check;
  final PrimitiveElement Check;
  final String logMessage;
  final PrimitiveElement LogMessage;
  const StructureMapSource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.context,
    this.Context,
    this.min,
    this.Min,
    this.max,
    this.Max,
    this.type,
    this.Type,
    this.defaultValueBase64Binary,
    this.DefaultValueBase64Binary,
    this.defaultValueBoolean,
    this.DefaultValueBoolean,
    this.defaultValueCanonical,
    this.DefaultValueCanonical,
    this.defaultValueCode,
    this.DefaultValueCode,
    this.defaultValueDate,
    this.DefaultValueDate,
    this.defaultValueDateTime,
    this.DefaultValueDateTime,
    this.defaultValueDecimal,
    this.DefaultValueDecimal,
    this.defaultValueId,
    this.DefaultValueId,
    this.defaultValueInstant,
    this.DefaultValueInstant,
    this.defaultValueInteger,
    this.DefaultValueInteger,
    this.defaultValueMarkdown,
    this.DefaultValueMarkdown,
    this.defaultValueOid,
    this.DefaultValueOid,
    this.defaultValuePositiveInt,
    this.DefaultValuePositiveInt,
    this.defaultValueString,
    this.DefaultValueString,
    this.defaultValueTime,
    this.DefaultValueTime,
    this.defaultValueUnsignedInt,
    this.DefaultValueUnsignedInt,
    this.defaultValueUri,
    this.DefaultValueUri,
    this.defaultValueUrl,
    this.DefaultValueUrl,
    this.defaultValueUuid,
    this.DefaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
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
    this.defaultValueMeta,
    this.element,
    this.Element,
    this.listMode,
    this.ListMode,
    this.variable,
    this.Variable,
    this.condition,
    this.Condition,
    this.check,
    this.Check,
    this.logMessage,
    this.LogMessage,
  });
}
