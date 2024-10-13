// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxStructureMap {
  ObjectBoxStructureMap({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    List<ObjectBoxStructureMapStructure>? structure,
    this.import_,
    List<ObjectBoxElement>? importElement,
    List<ObjectBoxStructureMapGroup>? group,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.structure.addAll(structure ?? []);
    this.importElement.addAll(importElement ?? []);
    this.group.addAll(group ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapStructure> structure =
      ToMany<ObjectBoxStructureMapStructure>();
  List<String>? import_;
  ToMany<ObjectBoxElement> importElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapGroup> group =
      ToMany<ObjectBoxStructureMapGroup>();
}

@Entity()
class ObjectBoxStructureMapStructure {
  ObjectBoxStructureMapStructure({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.url,
    ObjectBoxElement? urlElement,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.alias,
    ObjectBoxElement? aliasElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.modeElement.target = modeElement;
    this.aliasElement.target = aliasElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? alias;
  ToOne<ObjectBoxElement> aliasElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapGroup {
  ObjectBoxStructureMapGroup({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.extends_,
    ObjectBoxElement? extendsElement,
    required this.typeMode,
    ObjectBoxElement? typeModeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    List<ObjectBoxStructureMapInput>? input,
    List<ObjectBoxStructureMapRule>? rule,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.extendsElement.target = extendsElement;
    this.typeModeElement.target = typeModeElement;
    this.documentationElement.target = documentationElement;
    this.input.addAll(input ?? []);
    this.rule.addAll(rule ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? extends_;
  ToOne<ObjectBoxElement> extendsElement = ToOne<ObjectBoxElement>();
  String typeMode;
  ToOne<ObjectBoxElement> typeModeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapInput> input =
      ToMany<ObjectBoxStructureMapInput>();
  ToMany<ObjectBoxStructureMapRule> rule = ToMany<ObjectBoxStructureMapRule>();
}

@Entity()
class ObjectBoxStructureMapInput {
  ObjectBoxStructureMapInput({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.type,
    ObjectBoxElement? typeElement,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.typeElement.target = typeElement;
    this.modeElement.target = modeElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapRule {
  ObjectBoxStructureMapRule({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    List<ObjectBoxStructureMapSource>? source,
    List<ObjectBoxStructureMapTarget>? target,
    List<ObjectBoxStructureMapRule>? rule,
    List<ObjectBoxStructureMapDependent>? dependent,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.source.addAll(source ?? []);
    this.target.addAll(target ?? []);
    this.rule.addAll(rule ?? []);
    this.dependent.addAll(dependent ?? []);
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapSource> source =
      ToMany<ObjectBoxStructureMapSource>();
  ToMany<ObjectBoxStructureMapTarget> target =
      ToMany<ObjectBoxStructureMapTarget>();
  ToMany<ObjectBoxStructureMapRule> rule = ToMany<ObjectBoxStructureMapRule>();
  ToMany<ObjectBoxStructureMapDependent> dependent =
      ToMany<ObjectBoxStructureMapDependent>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapSource {
  ObjectBoxStructureMapSource({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.context,
    ObjectBoxElement? contextElement,
    this.min,
    ObjectBoxElement? minElement,
    this.max,
    ObjectBoxElement? maxElement,
    this.type,
    ObjectBoxElement? typeElement,
    this.defaultValueBase64Binary,
    ObjectBoxElement? defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    ObjectBoxElement? defaultValueBooleanElement,
    this.defaultValueCanonical,
    ObjectBoxElement? defaultValueCanonicalElement,
    this.defaultValueCode,
    ObjectBoxElement? defaultValueCodeElement,
    this.defaultValueDate,
    ObjectBoxElement? defaultValueDateElement,
    this.defaultValueDateTime,
    ObjectBoxElement? defaultValueDateTimeElement,
    this.defaultValueDecimal,
    ObjectBoxElement? defaultValueDecimalElement,
    this.defaultValueId,
    ObjectBoxElement? defaultValueIdElement,
    this.defaultValueInstant,
    ObjectBoxElement? defaultValueInstantElement,
    this.defaultValueInteger,
    ObjectBoxElement? defaultValueIntegerElement,
    this.defaultValueMarkdown,
    ObjectBoxElement? defaultValueMarkdownElement,
    this.defaultValueOid,
    ObjectBoxElement? defaultValueOidElement,
    this.defaultValuePositiveInt,
    ObjectBoxElement? defaultValuePositiveIntElement,
    this.defaultValueString,
    ObjectBoxElement? defaultValueStringElement,
    this.defaultValueTime,
    ObjectBoxElement? defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    ObjectBoxElement? defaultValueUnsignedIntElement,
    this.defaultValueUri,
    ObjectBoxElement? defaultValueUriElement,
    this.defaultValueUrl,
    ObjectBoxElement? defaultValueUrlElement,
    this.defaultValueUuid,
    ObjectBoxElement? defaultValueUuidElement,
    ObjectBoxAddress? defaultValueAddress,
    ObjectBoxAge? defaultValueAge,
    ObjectBoxAnnotation? defaultValueAnnotation,
    ObjectBoxAttachment? defaultValueAttachment,
    ObjectBoxCodeableConcept? defaultValueCodeableConcept,
    ObjectBoxCoding? defaultValueCoding,
    ObjectBoxContactPoint? defaultValueContactPoint,
    ObjectBoxCount? defaultValueCount,
    ObjectBoxDistance? defaultValueDistance,
    ObjectBoxFhirDuration? defaultValueDuration,
    ObjectBoxHumanName? defaultValueHumanName,
    ObjectBoxIdentifier? defaultValueIdentifier,
    ObjectBoxMoney? defaultValueMoney,
    ObjectBoxPeriod? defaultValuePeriod,
    ObjectBoxQuantity? defaultValueQuantity,
    ObjectBoxRange? defaultValueRange,
    ObjectBoxRatio? defaultValueRatio,
    ObjectBoxReference? defaultValueReference,
    ObjectBoxSampledData? defaultValueSampledData,
    ObjectBoxSignature? defaultValueSignature,
    ObjectBoxTiming? defaultValueTiming,
    ObjectBoxContactDetail? defaultValueContactDetail,
    ObjectBoxContributor? defaultValueContributor,
    ObjectBoxDataRequirement? defaultValueDataRequirement,
    ObjectBoxFhirExpression? defaultValueExpression,
    ObjectBoxParameterDefinition? defaultValueParameterDefinition,
    ObjectBoxRelatedArtifact? defaultValueRelatedArtifact,
    ObjectBoxTriggerDefinition? defaultValueTriggerDefinition,
    ObjectBoxUsageContext? defaultValueUsageContext,
    ObjectBoxDosage? defaultValueDosage,
    ObjectBoxFhirMeta? defaultValueMeta,
    this.element,
    ObjectBoxElement? elementElement,
    this.listMode,
    ObjectBoxElement? listModeElement,
    this.variable,
    ObjectBoxElement? variableElement,
    this.condition,
    ObjectBoxElement? conditionElement,
    this.check,
    ObjectBoxElement? checkElement,
    this.logMessage,
    ObjectBoxElement? logMessageElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.contextElement.target = contextElement;
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
    this.typeElement.target = typeElement;
    this.defaultValueBase64BinaryElement.target =
        defaultValueBase64BinaryElement;
    this.defaultValueBooleanElement.target = defaultValueBooleanElement;
    this.defaultValueCanonicalElement.target = defaultValueCanonicalElement;
    this.defaultValueCodeElement.target = defaultValueCodeElement;
    this.defaultValueDateElement.target = defaultValueDateElement;
    this.defaultValueDateTimeElement.target = defaultValueDateTimeElement;
    this.defaultValueDecimalElement.target = defaultValueDecimalElement;
    this.defaultValueIdElement.target = defaultValueIdElement;
    this.defaultValueInstantElement.target = defaultValueInstantElement;
    this.defaultValueIntegerElement.target = defaultValueIntegerElement;
    this.defaultValueMarkdownElement.target = defaultValueMarkdownElement;
    this.defaultValueOidElement.target = defaultValueOidElement;
    this.defaultValuePositiveIntElement.target = defaultValuePositiveIntElement;
    this.defaultValueStringElement.target = defaultValueStringElement;
    this.defaultValueTimeElement.target = defaultValueTimeElement;
    this.defaultValueUnsignedIntElement.target = defaultValueUnsignedIntElement;
    this.defaultValueUriElement.target = defaultValueUriElement;
    this.defaultValueUrlElement.target = defaultValueUrlElement;
    this.defaultValueUuidElement.target = defaultValueUuidElement;
    this.defaultValueAddress.target = defaultValueAddress;
    this.defaultValueAge.target = defaultValueAge;
    this.defaultValueAnnotation.target = defaultValueAnnotation;
    this.defaultValueAttachment.target = defaultValueAttachment;
    this.defaultValueCodeableConcept.target = defaultValueCodeableConcept;
    this.defaultValueCoding.target = defaultValueCoding;
    this.defaultValueContactPoint.target = defaultValueContactPoint;
    this.defaultValueCount.target = defaultValueCount;
    this.defaultValueDistance.target = defaultValueDistance;
    this.defaultValueDuration.target = defaultValueDuration;
    this.defaultValueHumanName.target = defaultValueHumanName;
    this.defaultValueIdentifier.target = defaultValueIdentifier;
    this.defaultValueMoney.target = defaultValueMoney;
    this.defaultValuePeriod.target = defaultValuePeriod;
    this.defaultValueQuantity.target = defaultValueQuantity;
    this.defaultValueRange.target = defaultValueRange;
    this.defaultValueRatio.target = defaultValueRatio;
    this.defaultValueReference.target = defaultValueReference;
    this.defaultValueSampledData.target = defaultValueSampledData;
    this.defaultValueSignature.target = defaultValueSignature;
    this.defaultValueTiming.target = defaultValueTiming;
    this.defaultValueContactDetail.target = defaultValueContactDetail;
    this.defaultValueContributor.target = defaultValueContributor;
    this.defaultValueDataRequirement.target = defaultValueDataRequirement;
    this.defaultValueExpression.target = defaultValueExpression;
    this.defaultValueParameterDefinition.target =
        defaultValueParameterDefinition;
    this.defaultValueRelatedArtifact.target = defaultValueRelatedArtifact;
    this.defaultValueTriggerDefinition.target = defaultValueTriggerDefinition;
    this.defaultValueUsageContext.target = defaultValueUsageContext;
    this.defaultValueDosage.target = defaultValueDosage;
    this.defaultValueMeta.target = defaultValueMeta;
    this.elementElement.target = elementElement;
    this.listModeElement.target = listModeElement;
    this.variableElement.target = variableElement;
    this.conditionElement.target = conditionElement;
    this.checkElement.target = checkElement;
    this.logMessageElement.target = logMessageElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String context;
  ToOne<ObjectBoxElement> contextElement = ToOne<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? defaultValueBase64Binary;
  ToOne<ObjectBoxElement> defaultValueBase64BinaryElement =
      ToOne<ObjectBoxElement>();
  bool? defaultValueBoolean;
  ToOne<ObjectBoxElement> defaultValueBooleanElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCanonical;
  ToOne<ObjectBoxElement> defaultValueCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueCode;
  ToOne<ObjectBoxElement> defaultValueCodeElement = ToOne<ObjectBoxElement>();
  String? defaultValueDate;
  ToOne<ObjectBoxElement> defaultValueDateElement = ToOne<ObjectBoxElement>();
  String? defaultValueDateTime;
  ToOne<ObjectBoxElement> defaultValueDateTimeElement =
      ToOne<ObjectBoxElement>();
  double? defaultValueDecimal;
  ToOne<ObjectBoxElement> defaultValueDecimalElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueId;
  ToOne<ObjectBoxElement> defaultValueIdElement = ToOne<ObjectBoxElement>();
  String? defaultValueInstant;
  ToOne<ObjectBoxElement> defaultValueInstantElement =
      ToOne<ObjectBoxElement>();
  int? defaultValueInteger;
  ToOne<ObjectBoxElement> defaultValueIntegerElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueMarkdown;
  ToOne<ObjectBoxElement> defaultValueMarkdownElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueOid;
  ToOne<ObjectBoxElement> defaultValueOidElement = ToOne<ObjectBoxElement>();
  int? defaultValuePositiveInt;
  ToOne<ObjectBoxElement> defaultValuePositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueString;
  ToOne<ObjectBoxElement> defaultValueStringElement = ToOne<ObjectBoxElement>();
  String? defaultValueTime;
  ToOne<ObjectBoxElement> defaultValueTimeElement = ToOne<ObjectBoxElement>();
  int? defaultValueUnsignedInt;
  ToOne<ObjectBoxElement> defaultValueUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? defaultValueUri;
  ToOne<ObjectBoxElement> defaultValueUriElement = ToOne<ObjectBoxElement>();
  String? defaultValueUrl;
  ToOne<ObjectBoxElement> defaultValueUrlElement = ToOne<ObjectBoxElement>();
  String? defaultValueUuid;
  ToOne<ObjectBoxElement> defaultValueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress> defaultValueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge> defaultValueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation> defaultValueAnnotation =
      ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment> defaultValueAttachment =
      ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> defaultValueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCoding> defaultValueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint> defaultValueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount> defaultValueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance> defaultValueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration> defaultValueDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName> defaultValueHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier> defaultValueIdentifier =
      ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney> defaultValueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod> defaultValuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity> defaultValueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> defaultValueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> defaultValueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxReference> defaultValueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData> defaultValueSampledData =
      ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature> defaultValueSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming> defaultValueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail> defaultValueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor> defaultValueContributor =
      ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement> defaultValueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> defaultValueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition> defaultValueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact> defaultValueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition> defaultValueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext> defaultValueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage> defaultValueDosage = ToOne<ObjectBoxDosage>();
  ToOne<ObjectBoxFhirMeta> defaultValueMeta = ToOne<ObjectBoxFhirMeta>();
  String? element;
  ToOne<ObjectBoxElement> elementElement = ToOne<ObjectBoxElement>();
  String? listMode;
  ToOne<ObjectBoxElement> listModeElement = ToOne<ObjectBoxElement>();
  String? variable;
  ToOne<ObjectBoxElement> variableElement = ToOne<ObjectBoxElement>();
  String? condition;
  ToOne<ObjectBoxElement> conditionElement = ToOne<ObjectBoxElement>();
  String? check;
  ToOne<ObjectBoxElement> checkElement = ToOne<ObjectBoxElement>();
  String? logMessage;
  ToOne<ObjectBoxElement> logMessageElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapTarget {
  ObjectBoxStructureMapTarget({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.context,
    ObjectBoxElement? contextElement,
    this.contextType,
    ObjectBoxElement? contextTypeElement,
    this.element,
    ObjectBoxElement? elementElement,
    this.variable,
    ObjectBoxElement? variableElement,
    this.listMode,
    List<ObjectBoxElement>? listModeElement,
    this.listRuleId,
    ObjectBoxElement? listRuleIdElement,
    this.transform,
    ObjectBoxElement? transformElement,
    List<ObjectBoxStructureMapParameter>? parameter,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.contextElement.target = contextElement;
    this.contextTypeElement.target = contextTypeElement;
    this.elementElement.target = elementElement;
    this.variableElement.target = variableElement;
    this.listModeElement.addAll(listModeElement ?? []);
    this.listRuleIdElement.target = listRuleIdElement;
    this.transformElement.target = transformElement;
    this.parameter.addAll(parameter ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? context;
  ToOne<ObjectBoxElement> contextElement = ToOne<ObjectBoxElement>();
  String? contextType;
  ToOne<ObjectBoxElement> contextTypeElement = ToOne<ObjectBoxElement>();
  String? element;
  ToOne<ObjectBoxElement> elementElement = ToOne<ObjectBoxElement>();
  String? variable;
  ToOne<ObjectBoxElement> variableElement = ToOne<ObjectBoxElement>();
  List<String>? listMode;
  ToMany<ObjectBoxElement> listModeElement = ToMany<ObjectBoxElement>();
  String? listRuleId;
  ToOne<ObjectBoxElement> listRuleIdElement = ToOne<ObjectBoxElement>();
  String? transform;
  ToOne<ObjectBoxElement> transformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureMapParameter> parameter =
      ToMany<ObjectBoxStructureMapParameter>();
}

@Entity()
class ObjectBoxStructureMapParameter {
  ObjectBoxStructureMapParameter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.valueId,
    ObjectBoxElement? valueIdElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.valueIdElement.target = valueIdElement;
    this.valueStringElement.target = valueStringElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueDecimalElement.target = valueDecimalElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? valueId;
  ToOne<ObjectBoxElement> valueIdElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureMapDependent {
  ObjectBoxStructureMapDependent({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    required this.variable,
    List<ObjectBoxElement>? variableElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.variableElement.addAll(variableElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  List<String> variable;
  ToMany<ObjectBoxElement> variableElement = ToMany<ObjectBoxElement>();
}
