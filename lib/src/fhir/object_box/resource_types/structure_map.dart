// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxStructureMap {
  ObjectBoxStructureMap({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapStructure>? structure =
      ToMany<ObjectBoxStructureMapStructure>();
  List<String>? import_;
  ToMany<ObjectBoxElement>? importElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapGroup> group =
      ToMany<ObjectBoxStructureMapGroup>();
}

@Entity()
class ObjectBoxStructureMapStructure {
  ObjectBoxStructureMapStructure({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String? alias;
  ToOne<ObjectBoxElement>? aliasElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapGroup {
  ObjectBoxStructureMapGroup({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? extends_;
  ToOne<ObjectBoxElement>? extendsElement = ToOne<ObjectBoxElement>();
  String typeMode;
  ToOne<ObjectBoxElement>? typeModeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapInput> input =
      ToMany<ObjectBoxStructureMapInput>();
  ToMany<ObjectBoxStructureMapRule> rule = ToMany<ObjectBoxStructureMapRule>();
}

@Entity()
class ObjectBoxStructureMapInput {
  ObjectBoxStructureMapInput({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapRule {
  ObjectBoxStructureMapRule({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapSource> source =
      ToMany<ObjectBoxStructureMapSource>();
  ToMany<ObjectBoxStructureMapTarget>? target =
      ToMany<ObjectBoxStructureMapTarget>();
  ToMany<ObjectBoxStructureMapRule>? rule = ToMany<ObjectBoxStructureMapRule>();
  ToMany<ObjectBoxStructureMapDependent>? dependent =
      ToMany<ObjectBoxStructureMapDependent>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapSource {
  ObjectBoxStructureMapSource({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String context;
  ToOne<ObjectBoxElement>? contextElement = ToOne<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement>? minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement>? maxElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? defaultValueBase64Binary;
  ToOne<ObjectBoxElement>? defaultValueBase64BinaryElement =
      ToOne<ObjectBoxElement>();
  bool? defaultValueBoolean;
  ToOne<ObjectBoxElement>? defaultValueBooleanElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCanonical;
  ToOne<ObjectBoxElement>? defaultValueCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCode;
  ToOne<ObjectBoxElement>? defaultValueCodeElement = ToOne<ObjectBoxElement>();
  String? defaultValueDate;
  ToOne<ObjectBoxElement>? defaultValueDateElement = ToOne<ObjectBoxElement>();
  String? defaultValueDateTime;
  ToOne<ObjectBoxElement>? defaultValueDateTimeElement =
      ToOne<ObjectBoxElement>();
  double? defaultValueDecimal;
  ToOne<ObjectBoxElement>? defaultValueDecimalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueId;
  ToOne<ObjectBoxElement>? defaultValueIdElement = ToOne<ObjectBoxElement>();
  String? defaultValueInstant;
  ToOne<ObjectBoxElement>? defaultValueInstantElement =
      ToOne<ObjectBoxElement>();
  int? defaultValueInteger;
  ToOne<ObjectBoxElement>? defaultValueIntegerElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueMarkdown;
  ToOne<ObjectBoxElement>? defaultValueMarkdownElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueOid;
  ToOne<ObjectBoxElement>? defaultValueOidElement = ToOne<ObjectBoxElement>();
  int? defaultValuePositiveInt;
  ToOne<ObjectBoxElement>? defaultValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueString;
  ToOne<ObjectBoxElement>? defaultValueStringElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueTime;
  ToOne<ObjectBoxElement>? defaultValueTimeElement = ToOne<ObjectBoxElement>();
  int? defaultValueUnsignedInt;
  ToOne<ObjectBoxElement>? defaultValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueUri;
  ToOne<ObjectBoxElement>? defaultValueUriElement = ToOne<ObjectBoxElement>();
  String? defaultValueUrl;
  ToOne<ObjectBoxElement>? defaultValueUrlElement = ToOne<ObjectBoxElement>();
  String? defaultValueUuid;
  ToOne<ObjectBoxElement>? defaultValueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress>? defaultValueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge>? defaultValueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation>? defaultValueAnnotation =
      ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment>? defaultValueAttachment =
      ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? defaultValueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCoding>? defaultValueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint>? defaultValueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount>? defaultValueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance>? defaultValueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration>? defaultValueDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName>? defaultValueHumanName =
      ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier>? defaultValueIdentifier =
      ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney>? defaultValueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod>? defaultValuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity>? defaultValueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? defaultValueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? defaultValueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxReference>? defaultValueReference =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData>? defaultValueSampledData =
      ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature>? defaultValueSignature =
      ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming>? defaultValueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail>? defaultValueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor>? defaultValueContributor =
      ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement>? defaultValueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? defaultValueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition>? defaultValueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact>? defaultValueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition>? defaultValueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext>? defaultValueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage>? defaultValueDosage = ToOne<ObjectBoxDosage>();
  ToOne<ObjectBoxFhirMeta>? defaultValueMeta = ToOne<ObjectBoxFhirMeta>();
  String? element;
  ToOne<ObjectBoxElement>? elementElement = ToOne<ObjectBoxElement>();
  String? listMode;
  ToOne<ObjectBoxElement>? listModeElement = ToOne<ObjectBoxElement>();
  String? variable;
  ToOne<ObjectBoxElement>? variableElement = ToOne<ObjectBoxElement>();
  String? condition;
  ToOne<ObjectBoxElement>? conditionElement = ToOne<ObjectBoxElement>();
  String? check;
  ToOne<ObjectBoxElement>? checkElement = ToOne<ObjectBoxElement>();
  String? logMessage;
  ToOne<ObjectBoxElement>? logMessageElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapTarget {
  ObjectBoxStructureMapTarget({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? context;
  ToOne<ObjectBoxElement>? contextElement = ToOne<ObjectBoxElement>();
  String? contextType;
  ToOne<ObjectBoxElement>? contextTypeElement = ToOne<ObjectBoxElement>();
  String? element;
  ToOne<ObjectBoxElement>? elementElement = ToOne<ObjectBoxElement>();
  String? variable;
  ToOne<ObjectBoxElement>? variableElement = ToOne<ObjectBoxElement>();
  List<String>? listMode;
  ToMany<ObjectBoxElement>? listModeElement = ToMany<ObjectBoxElement>();
  String? listRuleId;
  ToOne<ObjectBoxElement>? listRuleIdElement = ToOne<ObjectBoxElement>();
  String? transform;
  ToOne<ObjectBoxElement>? transformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapParameter>? parameter =
      ToMany<ObjectBoxStructureMapParameter>();
}

@Entity()
class ObjectBoxStructureMapParameter {
  ObjectBoxStructureMapParameter({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? valueId;
  ToOne<ObjectBoxElement>? valueIdElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement>? valueDecimalElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapDependent {
  ObjectBoxStructureMapDependent({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  List<String> variable;
  ToMany<ObjectBoxElement>? variableElement = ToMany<ObjectBoxElement>();
}
