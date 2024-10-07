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
  final List<BackboneElement>? structure;
  final List<FhirCanonical>? import_;
  final List<Element>? importElement;
  final List<BackboneElement> group;
  final List<BackboneElement> input;
  final List<BackboneElement> rule;
  final List<BackboneElement> source;
  final List<BackboneElement>? target;
  final List<BackboneElement>? parameter;
  final List<BackboneElement>? dependent;

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
    required this.input,
    required this.rule,
    required this.source,
    this.target,
    this.parameter,
    this.dependent,
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
  final List<dynamic>? rule;
  final FhirString? documentation;
  final Element? documentationElement;

  StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    this.rule,
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
  final FhirBase64Binary? defaultValueFhirBase64Binary;
  final Element? defaultValueFhirBase64BinaryElement;
  final FhirBoolean? defaultValueFhirBoolean;
  final Element? defaultValueFhirBooleanElement;
  final FhirCanonical? defaultValueFhirCanonical;
  final Element? defaultValueFhirCanonicalElement;
  final FhirCode? defaultValueFhirCode;
  final Element? defaultValueFhirCodeElement;
  final FhirDate? defaultValueFhirDate;
  final Element? defaultValueFhirDateElement;
  final FhirDateTime? defaultValueFhirDateTime;
  final Element? defaultValueFhirDateTimeElement;
  final FhirDecimal? defaultValueFhirDecimal;
  final Element? defaultValueFhirDecimalElement;
  final FhirId? defaultValueFhirId;
  final Element? defaultValueFhirIdElement;
  final FhirInstant? defaultValueFhirInstant;
  final Element? defaultValueFhirInstantElement;
  final FhirInteger? defaultValueFhirInteger;
  final Element? defaultValueFhirIntegerElement;
  final FhirMarkdown? defaultValueFhirMarkdown;
  final Element? defaultValueFhirMarkdownElement;
  final FhirOid? defaultValueFhirOid;
  final Element? defaultValueFhirOidElement;
  final FhirPositiveInt? defaultValueFhirPositiveInt;
  final Element? defaultValueFhirPositiveIntElement;
  final FhirString? defaultValueFhirString;
  final Element? defaultValueFhirStringElement;
  final FhirTime? defaultValueFhirTime;
  final Element? defaultValueFhirTimeElement;
  final FhirUnsignedInt? defaultValueFhirUnsignedInt;
  final Element? defaultValueFhirUnsignedIntElement;
  final FhirUri? defaultValueFhirUri;
  final Element? defaultValueFhirUriElement;
  final FhirUrl? defaultValueFhirUrl;
  final Element? defaultValueFhirUrlElement;
  final FhirUuid? defaultValueFhirUuid;
  final Element? defaultValueFhirUuidElement;
  final Address? defaultValueAddress;
  final Age? defaultValueAge;
  final Annotation? defaultValueAnnotation;
  final Attachment? defaultValueAttachment;
  final CodeableConcept? defaultValueCodeableConcept;
  final Coding? defaultValueCoding;
  final ContactPoint? defaultValueContactPoint;
  final Count? defaultValueCount;
  final Distance? defaultValueDistance;
  final FhirDuration? defaultValueFhirDuration;
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
  final FhirExpression? defaultValueFhirExpression;
  final ParameterDefinition? defaultValueParameterDefinition;
  final RelatedArtifact? defaultValueRelatedArtifact;
  final TriggerDefinition? defaultValueTriggerDefinition;
  final UsageContext? defaultValueUsageContext;
  final Dosage? defaultValueDosage;
  final FhirMeta? defaultValueFhirMeta;
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
    this.defaultValueFhirBase64Binary,
this.defaultValueFhirBase64BinaryElement,
    this.defaultValueFhirBoolean,
this.defaultValueFhirBooleanElement,
    this.defaultValueFhirCanonical,
this.defaultValueFhirCanonicalElement,
    this.defaultValueFhirCode,
this.defaultValueFhirCodeElement,
    this.defaultValueFhirDate,
this.defaultValueFhirDateElement,
    this.defaultValueFhirDateTime,
this.defaultValueFhirDateTimeElement,
    this.defaultValueFhirDecimal,
this.defaultValueFhirDecimalElement,
    this.defaultValueFhirId,
this.defaultValueFhirIdElement,
    this.defaultValueFhirInstant,
this.defaultValueFhirInstantElement,
    this.defaultValueFhirInteger,
this.defaultValueFhirIntegerElement,
    this.defaultValueFhirMarkdown,
this.defaultValueFhirMarkdownElement,
    this.defaultValueFhirOid,
this.defaultValueFhirOidElement,
    this.defaultValueFhirPositiveInt,
this.defaultValueFhirPositiveIntElement,
    this.defaultValueFhirString,
this.defaultValueFhirStringElement,
    this.defaultValueFhirTime,
this.defaultValueFhirTimeElement,
    this.defaultValueFhirUnsignedInt,
this.defaultValueFhirUnsignedIntElement,
    this.defaultValueFhirUri,
this.defaultValueFhirUriElement,
    this.defaultValueFhirUrl,
this.defaultValueFhirUrlElement,
    this.defaultValueFhirUuid,
this.defaultValueFhirUuidElement,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueFhirDuration,
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
    this.defaultValueFhirExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueFhirMeta,
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
  });

@override
StructureMapTarget clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class StructureMapParameter extends BackboneElement {
  final FhirId valueFhirId;
  final Element? valueFhirIdElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirDecimal valueFhirDecimal;
  final Element? valueFhirDecimalElement;

  StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueFhirId,
this.valueFhirIdElement,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirDecimal,
this.valueFhirDecimalElement,
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

