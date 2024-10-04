import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class StructureDefinition {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final List<Coding> keyword;
  final FhirCode fhirVersion;
  final PrimitiveElement fhirVersionElement;
  final List<StructureDefinitionMapping> mapping;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final FhirBoolean abstract_;
  final PrimitiveElement abstractElement;
  final List<StructureDefinitionContext> context;
  final List<String> contextInvariant;
  final List<PrimitiveElement> contextInvariantElement;
  final FhirUri type;
  final PrimitiveElement typeElement;
  final FhirCanonical baseDefinition;
  final FhirCode derivation;
  final PrimitiveElement derivationElement;
  final StructureDefinitionSnapshot snapshot;
  final StructureDefinitionDifferential differential;
  const StructureDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.keyword,
    required this.fhirVersion,
    required this.fhirVersionElement,
    required this.mapping,
    required this.kind,
    required this.kindElement,
    required this.abstract_,
    required this.abstractElement,
    required this.context,
    required this.contextInvariant,
    required this.contextInvariantElement,
    required this.type,
    required this.typeElement,
    required this.baseDefinition,
    required this.derivation,
    required this.derivationElement,
    required this.snapshot,
    required this.differential,
  });
}

@Data()
@JsonCodable()
class StructureDefinitionMapping {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId identity;
  final PrimitiveElement identityElement;
  final FhirUri uri;
  final PrimitiveElement uriElement;
  final String name;
  final PrimitiveElement nameElement;
  final String comment;
  final PrimitiveElement commentElement;
  const StructureDefinitionMapping({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identity,
    required this.identityElement,
    required this.uri,
    required this.uriElement,
    required this.name,
    required this.nameElement,
    required this.comment,
    required this.commentElement,
  });
}

@Data()
@JsonCodable()
class StructureDefinitionContext {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String expression;
  final PrimitiveElement expressionElement;
  const StructureDefinitionContext({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.expression,
    required this.expressionElement,
  });
}

@Data()
@JsonCodable()
class StructureDefinitionSnapshot {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ElementDefinition> element;
  const StructureDefinitionSnapshot({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.element,
  });
}

@Data()
@JsonCodable()
class StructureDefinitionDifferential {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ElementDefinition> element;
  const StructureDefinitionDifferential({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.element,
  });
}

@Data()
@JsonCodable()
class StructureMap {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final List<StructureMapStructure> structure;
  final List<FhirCanonical> import_;
  final List<StructureMapGroup> group;
  const StructureMap({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.structure,
    required this.import_,
    required this.group,
  });
}

@Data()
@JsonCodable()
class StructureMapStructure {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical url;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final String alias;
  final PrimitiveElement aliasElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  const StructureMapStructure({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.mode,
    required this.modeElement,
    required this.alias,
    required this.aliasElement,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class StructureMapGroup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement nameElement;
  final FhirId extends_;
  final PrimitiveElement extendsElement;
  final FhirCode typeMode;
  final PrimitiveElement typeModeElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  final List<StructureMapInput> input;
  final List<StructureMapRule> rule;
  const StructureMapGroup({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.extends_,
    required this.extendsElement,
    required this.typeMode,
    required this.typeModeElement,
    required this.documentation,
    required this.documentationElement,
    required this.input,
    required this.rule,
  });
}

@Data()
@JsonCodable()
class StructureMapInput {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement nameElement;
  final String type;
  final PrimitiveElement typeElement;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  const StructureMapInput({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.type,
    required this.typeElement,
    required this.mode,
    required this.modeElement,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class StructureMapRule {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement nameElement;
  final List<StructureMapSource> source;
  final List<StructureMapTarget> target;
  final List<StructureMapRule> rule;
  final List<StructureMapDependent> dependent;
  final String documentation;
  final PrimitiveElement documentationElement;
  const StructureMapRule({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.source,
    required this.target,
    required this.rule,
    required this.dependent,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class StructureMapSource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId context;
  final PrimitiveElement contextElement;
  final FhirInteger min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  final String type;
  final PrimitiveElement typeElement;
  final String defaultValueBase64Binary;
  final PrimitiveElement defaultValueBase64BinaryElement;
  final bool defaultValueBoolean;
  final PrimitiveElement defaultValueBooleanElement;
  final String defaultValueCanonical;
  final PrimitiveElement defaultValueCanonicalElement;
  final String defaultValueCode;
  final PrimitiveElement defaultValueCodeElement;
  final String defaultValueDate;
  final PrimitiveElement defaultValueDateElement;
  final String defaultValueDateTime;
  final PrimitiveElement defaultValueDateTimeElement;
  final double defaultValueDecimal;
  final PrimitiveElement defaultValueDecimalElement;
  final String defaultValueId;
  final PrimitiveElement defaultValueIdElement;
  final String defaultValueInstant;
  final PrimitiveElement defaultValueInstantElement;
  final double defaultValueInteger;
  final PrimitiveElement defaultValueIntegerElement;
  final String defaultValueMarkdown;
  final PrimitiveElement defaultValueMarkdownElement;
  final String defaultValueOid;
  final PrimitiveElement defaultValueOidElement;
  final double defaultValuePositiveInt;
  final PrimitiveElement defaultValuePositiveIntElement;
  final String defaultValueString;
  final PrimitiveElement defaultValueStringElement;
  final String defaultValueTime;
  final PrimitiveElement defaultValueTimeElement;
  final double defaultValueUnsignedInt;
  final PrimitiveElement defaultValueUnsignedIntElement;
  final String defaultValueUri;
  final PrimitiveElement defaultValueUriElement;
  final String defaultValueUrl;
  final PrimitiveElement defaultValueUrlElement;
  final String defaultValueUuid;
  final PrimitiveElement defaultValueUuidElement;
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
  final PrimitiveElement elementElement;
  final FhirCode listMode;
  final PrimitiveElement listModeElement;
  final FhirId variable;
  final PrimitiveElement variableElement;
  final String condition;
  final PrimitiveElement conditionElement;
  final String check;
  final PrimitiveElement checkElement;
  final String logMessage;
  final PrimitiveElement logMessageElement;
  const StructureMapSource({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.context,
    required this.contextElement,
    required this.min,
    required this.minElement,
    required this.max,
    required this.maxElement,
    required this.type,
    required this.typeElement,
    required this.defaultValueBase64Binary,
    required this.defaultValueBase64BinaryElement,
    required this.defaultValueBoolean,
    required this.defaultValueBooleanElement,
    required this.defaultValueCanonical,
    required this.defaultValueCanonicalElement,
    required this.defaultValueCode,
    required this.defaultValueCodeElement,
    required this.defaultValueDate,
    required this.defaultValueDateElement,
    required this.defaultValueDateTime,
    required this.defaultValueDateTimeElement,
    required this.defaultValueDecimal,
    required this.defaultValueDecimalElement,
    required this.defaultValueId,
    required this.defaultValueIdElement,
    required this.defaultValueInstant,
    required this.defaultValueInstantElement,
    required this.defaultValueInteger,
    required this.defaultValueIntegerElement,
    required this.defaultValueMarkdown,
    required this.defaultValueMarkdownElement,
    required this.defaultValueOid,
    required this.defaultValueOidElement,
    required this.defaultValuePositiveInt,
    required this.defaultValuePositiveIntElement,
    required this.defaultValueString,
    required this.defaultValueStringElement,
    required this.defaultValueTime,
    required this.defaultValueTimeElement,
    required this.defaultValueUnsignedInt,
    required this.defaultValueUnsignedIntElement,
    required this.defaultValueUri,
    required this.defaultValueUriElement,
    required this.defaultValueUrl,
    required this.defaultValueUrlElement,
    required this.defaultValueUuid,
    required this.defaultValueUuidElement,
    required this.defaultValueAddress,
    required this.defaultValueAge,
    required this.defaultValueAnnotation,
    required this.defaultValueAttachment,
    required this.defaultValueCodeableConcept,
    required this.defaultValueCoding,
    required this.defaultValueContactPoint,
    required this.defaultValueCount,
    required this.defaultValueDistance,
    required this.defaultValueDuration,
    required this.defaultValueHumanName,
    required this.defaultValueIdentifier,
    required this.defaultValueMoney,
    required this.defaultValuePeriod,
    required this.defaultValueQuantity,
    required this.defaultValueRange,
    required this.defaultValueRatio,
    required this.defaultValueReference,
    required this.defaultValueSampledData,
    required this.defaultValueSignature,
    required this.defaultValueTiming,
    required this.defaultValueContactDetail,
    required this.defaultValueContributor,
    required this.defaultValueDataRequirement,
    required this.defaultValueExpression,
    required this.defaultValueParameterDefinition,
    required this.defaultValueRelatedArtifact,
    required this.defaultValueTriggerDefinition,
    required this.defaultValueUsageContext,
    required this.defaultValueDosage,
    required this.defaultValueMeta,
    required this.element,
    required this.elementElement,
    required this.listMode,
    required this.listModeElement,
    required this.variable,
    required this.variableElement,
    required this.condition,
    required this.conditionElement,
    required this.check,
    required this.checkElement,
    required this.logMessage,
    required this.logMessageElement,
  });
}

@Data()
@JsonCodable()
class StructureMapTarget {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId context;
  final PrimitiveElement contextElement;
  final FhirCode contextType;
  final PrimitiveElement contextTypeElement;
  final String element;
  final PrimitiveElement elementElement;
  final FhirId variable;
  final PrimitiveElement variableElement;
  final List<FhirCode> listMode;
  final List<PrimitiveElement> listModeElement;
  final FhirId listRuleId;
  final PrimitiveElement listRuleIdElement;
  final FhirCode transform;
  final PrimitiveElement transformElement;
  final List<StructureMapParameter> parameter;
  const StructureMapTarget({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.context,
    required this.contextElement,
    required this.contextType,
    required this.contextTypeElement,
    required this.element,
    required this.elementElement,
    required this.variable,
    required this.variableElement,
    required this.listMode,
    required this.listModeElement,
    required this.listRuleId,
    required this.listRuleIdElement,
    required this.transform,
    required this.transformElement,
    required this.parameter,
  });
}

@Data()
@JsonCodable()
class StructureMapParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String valueId;
  final PrimitiveElement valueIdElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  const StructureMapParameter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.valueId,
    required this.valueIdElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
  });
}

@Data()
@JsonCodable()
class StructureMapDependent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId name;
  final PrimitiveElement nameElement;
  final List<String> variable;
  final List<PrimitiveElement> variableElement;
  const StructureMapDependent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.variable,
    required this.variableElement,
  });
}


