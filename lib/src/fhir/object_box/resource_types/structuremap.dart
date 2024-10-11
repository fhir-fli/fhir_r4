import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class StructureMap extends Resource {
  StructureMap({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  ToMany<StructureMapStructure>? structure = ToMany<StructureMapStructure>();
  List<String>? import_;
  ToMany<Element>? importElement = ToMany<Element>();
  ToMany<StructureMapGroup> group = ToMany<StructureMapGroup>();
}

@Entity()
class StructureMapStructure {
  StructureMapStructure({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.urlElement,
    required this.mode,
    this.modeElement,
    this.alias,
    this.aliasElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String mode;
  ToOne<Element>? modeElement = ToOne<Element>();
  String? alias;
  ToOne<Element>? aliasElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class StructureMapGroup {
  StructureMapGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? extends_;
  ToOne<Element>? extendsElement = ToOne<Element>();
  String typeMode;
  ToOne<Element>? typeModeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
  ToMany<StructureMapInput> input = ToMany<StructureMapInput>();
  ToMany<StructureMapRule> rule = ToMany<StructureMapRule>();
}

@Entity()
class StructureMapInput {
  StructureMapInput({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.typeElement,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String mode;
  ToOne<Element>? modeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class StructureMapRule {
  StructureMapRule({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  ToMany<StructureMapSource> source = ToMany<StructureMapSource>();
  ToMany<StructureMapTarget>? target = ToMany<StructureMapTarget>();
  ToMany<StructureMapRule>? rule = ToMany<StructureMapRule>();
  ToMany<StructureMapDependent>? dependent = ToMany<StructureMapDependent>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class StructureMapSource {
  StructureMapSource({
    this.id,
    this.extension_,
    this.modifierExtension,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String context;
  ToOne<Element>? contextElement = ToOne<Element>();
  int? min;
  ToOne<Element>? minElement = ToOne<Element>();
  String? max;
  ToOne<Element>? maxElement = ToOne<Element>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? defaultValueBase64Binary;
  ToOne<Element>? defaultValueBase64BinaryElement = ToOne<Element>();
  bool? defaultValueBoolean;
  ToOne<Element>? defaultValueBooleanElement = ToOne<Element>();
  String? defaultValueCanonical;
  ToOne<Element>? defaultValueCanonicalElement = ToOne<Element>();
  String? defaultValueCode;
  ToOne<Element>? defaultValueCodeElement = ToOne<Element>();
  String? defaultValueDate;
  ToOne<Element>? defaultValueDateElement = ToOne<Element>();
  String? defaultValueDateTime;
  ToOne<Element>? defaultValueDateTimeElement = ToOne<Element>();
  double? defaultValueDecimal;
  ToOne<Element>? defaultValueDecimalElement = ToOne<Element>();
  String? defaultValueId;
  ToOne<Element>? defaultValueIdElement = ToOne<Element>();
  String? defaultValueInstant;
  ToOne<Element>? defaultValueInstantElement = ToOne<Element>();
  int? defaultValueInteger;
  ToOne<Element>? defaultValueIntegerElement = ToOne<Element>();
  String? defaultValueMarkdown;
  ToOne<Element>? defaultValueMarkdownElement = ToOne<Element>();
  String? defaultValueOid;
  ToOne<Element>? defaultValueOidElement = ToOne<Element>();
  int? defaultValuePositiveInt;
  ToOne<Element>? defaultValuePositiveIntElement = ToOne<Element>();
  String? defaultValueString;
  ToOne<Element>? defaultValueStringElement = ToOne<Element>();
  String? defaultValueTime;
  ToOne<Element>? defaultValueTimeElement = ToOne<Element>();
  int? defaultValueUnsignedInt;
  ToOne<Element>? defaultValueUnsignedIntElement = ToOne<Element>();
  String? defaultValueUri;
  ToOne<Element>? defaultValueUriElement = ToOne<Element>();
  String? defaultValueUrl;
  ToOne<Element>? defaultValueUrlElement = ToOne<Element>();
  String? defaultValueUuid;
  ToOne<Element>? defaultValueUuidElement = ToOne<Element>();
  ToOne<Address>? defaultValueAddress = ToOne<Address>();
  ToOne<Age>? defaultValueAge = ToOne<Age>();
  ToOne<Annotation>? defaultValueAnnotation = ToOne<Annotation>();
  ToOne<Attachment>? defaultValueAttachment = ToOne<Attachment>();
  ToOne<CodeableConcept>? defaultValueCodeableConcept =
      ToOne<CodeableConcept>();
  ToOne<Coding>? defaultValueCoding = ToOne<Coding>();
  ToOne<ContactPoint>? defaultValueContactPoint = ToOne<ContactPoint>();
  ToOne<Count>? defaultValueCount = ToOne<Count>();
  ToOne<Distance>? defaultValueDistance = ToOne<Distance>();
  ToOne<FhirDuration>? defaultValueDuration = ToOne<FhirDuration>();
  ToOne<HumanName>? defaultValueHumanName = ToOne<HumanName>();
  ToOne<Identifier>? defaultValueIdentifier = ToOne<Identifier>();
  ToOne<Money>? defaultValueMoney = ToOne<Money>();
  ToOne<Period>? defaultValuePeriod = ToOne<Period>();
  ToOne<Quantity>? defaultValueQuantity = ToOne<Quantity>();
  ToOne<Range>? defaultValueRange = ToOne<Range>();
  ToOne<Ratio>? defaultValueRatio = ToOne<Ratio>();
  ToOne<Reference>? defaultValueReference = ToOne<Reference>();
  ToOne<SampledData>? defaultValueSampledData = ToOne<SampledData>();
  ToOne<Signature>? defaultValueSignature = ToOne<Signature>();
  ToOne<Timing>? defaultValueTiming = ToOne<Timing>();
  ToOne<ContactDetail>? defaultValueContactDetail = ToOne<ContactDetail>();
  ToOne<Contributor>? defaultValueContributor = ToOne<Contributor>();
  ToOne<DataRequirement>? defaultValueDataRequirement =
      ToOne<DataRequirement>();
  ToOne<FhirExpression>? defaultValueExpression = ToOne<FhirExpression>();
  ToOne<ParameterDefinition>? defaultValueParameterDefinition =
      ToOne<ParameterDefinition>();
  ToOne<RelatedArtifact>? defaultValueRelatedArtifact =
      ToOne<RelatedArtifact>();
  ToOne<TriggerDefinition>? defaultValueTriggerDefinition =
      ToOne<TriggerDefinition>();
  ToOne<UsageContext>? defaultValueUsageContext = ToOne<UsageContext>();
  ToOne<Dosage>? defaultValueDosage = ToOne<Dosage>();
  ToOne<FhirMeta>? defaultValueMeta = ToOne<FhirMeta>();
  String? element;
  ToOne<Element>? elementElement = ToOne<Element>();
  String? listMode;
  ToOne<Element>? listModeElement = ToOne<Element>();
  String? variable;
  ToOne<Element>? variableElement = ToOne<Element>();
  String? condition;
  ToOne<Element>? conditionElement = ToOne<Element>();
  String? check;
  ToOne<Element>? checkElement = ToOne<Element>();
  String? logMessage;
  ToOne<Element>? logMessageElement = ToOne<Element>();
}

@Entity()
class StructureMapTarget {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? context;
  ToOne<Element>? contextElement = ToOne<Element>();
  String? contextType;
  ToOne<Element>? contextTypeElement = ToOne<Element>();
  String? element;
  ToOne<Element>? elementElement = ToOne<Element>();
  String? variable;
  ToOne<Element>? variableElement = ToOne<Element>();
  List<String>? listMode;
  ToMany<Element>? listModeElement = ToMany<Element>();
  String? listRuleId;
  ToOne<Element>? listRuleIdElement = ToOne<Element>();
  String? transform;
  ToOne<Element>? transformElement = ToOne<Element>();
  ToMany<StructureMapParameter>? parameter = ToMany<StructureMapParameter>();
}

@Entity()
class StructureMapParameter {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? valueId;
  ToOne<Element>? valueIdElement = ToOne<Element>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  int? valueInteger;
  ToOne<Element>? valueIntegerElement = ToOne<Element>();
  double? valueDecimal;
  ToOne<Element>? valueDecimalElement = ToOne<Element>();
}

@Entity()
class StructureMapDependent {
  StructureMapDependent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    required this.variable,
    this.variableElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  List<String> variable;
  ToMany<Element>? variableElement = ToMany<Element>();
}
