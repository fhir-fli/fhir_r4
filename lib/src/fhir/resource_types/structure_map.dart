import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class StructureMap extends DomainResource {
  final FhirUri url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final List<StructureMapStructure>? structure;
  final List<FhirCanonical>? import_;
  final List<Element>? importElement;
  final List<StructureMapGroup> group;

  StructureMap({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
this.urlElement,
    this.identifier,
    this.version,
this.versionElement,
    required this.name,
this.nameElement,
    this.title,
this.titleElement,
    required this.status,
this.statusElement,
    this.experimental,
this.experimentalElement,
    this.date,
this.dateElement,
    this.publisher,
this.publisherElement,
    this.contact,
    this.description,
this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
this.purposeElement,
    this.copyright,
this.copyrightElement,
    this.structure,
    this.import_,
this.importElement,
    required this.group,
  }) : super(resourceType: R4ResourceType.StructureMap);

@override
StructureMap clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapStructure extends BackboneElement {
  final FhirCanonical url;
  final Element? urlElement;
  final FhirCode mode;
  final Element? modeElement;
  final FhirString? alias;
  final Element? aliasElement;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
this.urlElement,
    required this.mode,
this.modeElement,
    this.alias,
this.aliasElement,
    this.documentation,
this.documentationElement,
  });

@override
StructureMapStructure clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapGroup extends BackboneElement {
  final FhirId name;
  final Element? nameElement;
  final FhirId? extends_;
  final Element? extendsElement;
  final FhirCode typeMode;
  final Element? typeModeElement;
  final FhirString? documentation;
  final Element? documentationElement;
  final List<StructureMapInput> input;
  final List<StructureMapRule> rule;

  StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    this.extends_,
this.extendsElement,
    required this.typeMode,
this.typeModeElement,
    this.documentation,
this.documentationElement,
    required this.input,
    required this.rule,
  });

@override
StructureMapGroup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapInput extends BackboneElement {
  final FhirId name;
  final Element? nameElement;
  final FhirString? type;
  final Element? typeElement;
  final FhirCode mode;
  final Element? modeElement;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    this.type,
this.typeElement,
    required this.mode,
this.modeElement,
    this.documentation,
this.documentationElement,
  });

@override
StructureMapInput clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapRule extends BackboneElement {
  final FhirId name;
  final Element? nameElement;
  final List<StructureMapSource> source;
  final List<StructureMapTarget>? target;
  final List<StructureMapRule>? rule;
  final List<StructureMapDependent>? dependent;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
this.documentationElement,
  });

@override
StructureMapRule clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapSource extends BackboneElement {
  final FhirId context;
  final Element? contextElement;
  final FhirInteger? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  final FhirString? type;
  final Element? typeElement;
  final FhirBase64Binary? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;
  final FhirBoolean? defaultValueBoolean;
  final Element? defaultValueBooleanElement;
  final FhirCanonical? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;
  final FhirCode? defaultValueCode;
  final Element? defaultValueCodeElement;
  final FhirDate? defaultValueDate;
  final Element? defaultValueDateElement;
  final FhirDateTime? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;
  final FhirDecimal? defaultValueDecimal;
  final Element? defaultValueDecimalElement;
  final FhirId? defaultValueId;
  final Element? defaultValueIdElement;
  final FhirInstant? defaultValueInstant;
  final Element? defaultValueInstantElement;
  final FhirInteger? defaultValueInteger;
  final Element? defaultValueIntegerElement;
  final FhirMarkdown? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;
  final FhirOid? defaultValueOid;
  final Element? defaultValueOidElement;
  final FhirPositiveInt? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;
  final FhirTime? defaultValueTime;
  final Element? defaultValueTimeElement;
  final FhirUnsignedInt? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;
  final FhirUri? defaultValueUri;
  final Element? defaultValueUriElement;
  final FhirUrl? defaultValueUrl;
  final Element? defaultValueUrlElement;
  final FhirUuid? defaultValueUuid;
  final Element? defaultValueUuidElement;
  final Address? defaultValueAddress;
  final Age? defaultValueAge;
  final Annotation? defaultValueAnnotation;
  final Attachment? defaultValueAttachment;
  final CodeableConcept? defaultValueCodeableConcept;
  final Coding? defaultValueCoding;
  final ContactPoint? defaultValueContactPoint;
  final Count? defaultValueCount;
  final Distance? defaultValueDistance;
  final FhirDuration? defaultValueDuration;
  final HumanName? defaultValueHumanName;
  final Identifier? defaultValueIdentifier;
  final Money? defaultValueMoney;
  final Period? defaultValuePeriod;
  final Quantity? defaultValueQuantity;
  final Range? defaultValueRange;
  final Ratio? defaultValueRatio;
  final Reference? defaultValueReference;
  final SampledData? defaultValueSampledData;
  final Signature? defaultValueSignature;
  final Timing? defaultValueTiming;
  final ContactDetail? defaultValueContactDetail;
  final Contributor? defaultValueContributor;
  final DataRequirement? defaultValueDataRequirement;
  final FhirExpression? defaultValueExpression;
  final ParameterDefinition? defaultValueParameterDefinition;
  final RelatedArtifact? defaultValueRelatedArtifact;
  final TriggerDefinition? defaultValueTriggerDefinition;
  final UsageContext? defaultValueUsageContext;
  final Dosage? defaultValueDosage;
  final FhirMeta? defaultValueMeta;
  final FhirString? element;
  final Element? elementElement;
  final FhirCode? listMode;
  final Element? listModeElement;
  final FhirId? variable;
  final Element? variableElement;
  final FhirString? condition;
  final Element? conditionElement;
  final FhirString? check;
  final Element? checkElement;
  final FhirString? logMessage;
  final Element? logMessageElement;

  StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
this.contextElement,
    this.min,
this.minElement,
    this.max,
this.maxElement,
    this.type,
this.typeElement,
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
this.elementElement,
    this.listMode,
this.listModeElement,
    this.variable,
this.variableElement,
    this.condition,
this.conditionElement,
    this.check,
this.checkElement,
    this.logMessage,
this.logMessageElement,
  });

@override
StructureMapSource clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapTarget extends BackboneElement {
  final FhirId? context;
  final Element? contextElement;
  final FhirCode? contextType;
  final Element? contextTypeElement;
  final FhirString? element;
  final Element? elementElement;
  final FhirId? variable;
  final Element? variableElement;
  final List<FhirCode>? listMode;
  final List<Element>? listModeElement;
  final FhirId? listRuleId;
  final Element? listRuleIdElement;
  final FhirCode? transform;
  final Element? transformElement;
  final List<StructureMapParameter>? parameter;

  StructureMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
this.contextElement,
    this.contextType,
this.contextTypeElement,
    this.element,
this.elementElement,
    this.variable,
this.variableElement,
    this.listMode,
this.listModeElement,
    this.listRuleId,
this.listRuleIdElement,
    this.transform,
this.transformElement,
    this.parameter,
  });

@override
StructureMapTarget clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapParameter extends BackboneElement {
  final FhirId valueId;
  final Element? valueIdElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;

  StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueId,
this.valueIdElement,
    required this.valueString,
this.valueStringElement,
    required this.valueBoolean,
this.valueBooleanElement,
    required this.valueInteger,
this.valueIntegerElement,
    required this.valueDecimal,
this.valueDecimalElement,
  });

@override
StructureMapParameter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapDependent extends BackboneElement {
  final FhirId name;
  final Element? nameElement;
  final List<FhirString> variable;
  final List<Element>? variableElement;

  StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    required this.variable,
this.variableElement,
  });

@override
StructureMapDependent clone() => throw UnimplementedError();
}

