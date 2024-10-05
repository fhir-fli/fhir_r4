import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class StructureMap extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.status,
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
    required this.group,
  }): super(resourceType: R4ResourceType.StructureMap);

@override
StructureMap clone() => this;

}


@Data()
@JsonCodable()
class StructureMapStructure {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCanonical url;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirString? alias;
  final Element? aliasElement;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapStructure({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.mode,
    this.modeElement,
    this.alias,
    this.aliasElement,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class StructureMapGroup {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? name;
  final Element? nameElement;
  final FhirId? extends_;
  final Element? extendsElement;
  final FhirCode? typeMode;
  final Element? typeModeElement;
  final FhirString? documentation;
  final Element? documentationElement;
  final List<StructureMapInput> input;
  final List<StructureMapRule> rule;

  StructureMapGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.extends_,
    this.extendsElement,
    this.typeMode,
    this.typeModeElement,
    this.documentation,
    this.documentationElement,
    required this.input,
    required this.rule,
  });

}


@Data()
@JsonCodable()
class StructureMapInput {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? name;
  final Element? nameElement;
  final FhirString? type;
  final Element? typeElement;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapInput({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.type,
    this.typeElement,
    this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class StructureMapRule {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? name;
  final Element? nameElement;
  final List<StructureMapSource> source;
  final List<StructureMapTarget>? target;
  final List<StructureMapRule>? rule;
  final List<StructureMapDependent>? dependent;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapRule({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class StructureMapSource {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? context;
  final Element? contextElement;
  final FhirInteger? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  final FhirString? type;
  final Element? typeElement;
  final FhirString? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;
  final bool? defaultValueBoolean;
  final Element? defaultValueBooleanElement;
  final FhirString? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;
  final FhirString? defaultValueCode;
  final Element? defaultValueCodeElement;
  final FhirString? defaultValueDate;
  final Element? defaultValueDateElement;
  final FhirString? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;
  final double? defaultValueDecimal;
  final Element? defaultValueDecimalElement;
  final FhirString? defaultValueId;
  final Element? defaultValueIdElement;
  final FhirString? defaultValueInstant;
  final Element? defaultValueInstantElement;
  final double? defaultValueInteger;
  final Element? defaultValueIntegerElement;
  final FhirString? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;
  final FhirString? defaultValueOid;
  final Element? defaultValueOidElement;
  final double? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;
  final FhirString? defaultValueTime;
  final Element? defaultValueTimeElement;
  final double? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;
  final FhirString? defaultValueUri;
  final Element? defaultValueUriElement;
  final FhirString? defaultValueUrl;
  final Element? defaultValueUrlElement;
  final FhirString? defaultValueUuid;
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
    this.id,
    this.extension_,
    this.modifierExtension,
    this.context,
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

}


@Data()
@JsonCodable()
class StructureMapTarget {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class StructureMapParameter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? valueId;
  final Element? valueIdElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;

  StructureMapParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueId,
    this.valueIdElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
  });

}


@Data()
@JsonCodable()
class StructureMapDependent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? name;
  final Element? nameElement;
  final List<FhirString>? variable;
  final List<Element>? variableElement;

  StructureMapDependent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.variable,
    this.variableElement,
  });

}



