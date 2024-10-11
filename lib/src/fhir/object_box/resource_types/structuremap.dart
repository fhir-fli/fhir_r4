import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class StructureMap extends Resource {
  StructureMap({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    required this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.structure,
    this.import_,
    required this.group,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String name;
  String? title;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  ToMany<StructureMapStructure>? structure = ToMany<StructureMapStructure>();
  List<String>? import_;
  ToMany<StructureMapGroup> group = ToMany<StructureMapGroup>();
}

@Entity()
class StructureMapStructure {
  StructureMapStructure({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.url,
    required this.mode,
    this.alias,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  String mode;
  String? alias;
  String? documentation;
}

@Entity()
class StructureMapGroup {
  StructureMapGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.extends_,
    required this.typeMode,
    this.documentation,
    required this.input,
    required this.rule,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? extends_;
  String typeMode;
  String? documentation;
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
    this.type,
    required this.mode,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? type;
  String mode;
  String? documentation;
}

@Entity()
class StructureMapRule {
  StructureMapRule({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToMany<StructureMapSource> source = ToMany<StructureMapSource>();
  ToMany<StructureMapTarget>? target = ToMany<StructureMapTarget>();
  ToMany<StructureMapRule>? rule = ToMany<StructureMapRule>();
  ToMany<StructureMapDependent>? dependent = ToMany<StructureMapDependent>();
  String? documentation;
}

@Entity()
class StructureMapSource {
  StructureMapSource({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.context,
    this.min,
    this.max,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.defaultValueCanonical,
    this.defaultValueCode,
    this.defaultValueDate,
    this.defaultValueDateTime,
    this.defaultValueDecimal,
    this.defaultValueId,
    this.defaultValueInstant,
    this.defaultValueInteger,
    this.defaultValueMarkdown,
    this.defaultValueOid,
    this.defaultValuePositiveInt,
    this.defaultValueString,
    this.defaultValueTime,
    this.defaultValueUnsignedInt,
    this.defaultValueUri,
    this.defaultValueUrl,
    this.defaultValueUuid,
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
    this.listMode,
    this.variable,
    this.condition,
    this.check,
    this.logMessage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String context;
  int? min;
  String? max;
  String? type;
  String? defaultValueBase64Binary;
  bool? defaultValueBoolean;
  String? defaultValueCanonical;
  String? defaultValueCode;
  String? defaultValueDate;
  String? defaultValueDateTime;
  double? defaultValueDecimal;
  String? defaultValueId;
  String? defaultValueInstant;
  int? defaultValueInteger;
  String? defaultValueMarkdown;
  String? defaultValueOid;
  int? defaultValuePositiveInt;
  String? defaultValueString;
  String? defaultValueTime;
  int? defaultValueUnsignedInt;
  String? defaultValueUri;
  String? defaultValueUrl;
  String? defaultValueUuid;
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
  String? listMode;
  String? variable;
  String? condition;
  String? check;
  String? logMessage;
}

@Entity()
class StructureMapTarget {
  StructureMapTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.context,
    this.contextType,
    this.element,
    this.variable,
    this.listMode,
    this.listRuleId,
    this.transform,
    this.parameter,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? context;
  String? contextType;
  String? element;
  String? variable;
  List<String>? listMode;
  String? listRuleId;
  String? transform;
  ToMany<StructureMapParameter>? parameter = ToMany<StructureMapParameter>();
}

@Entity()
class StructureMapParameter {
  StructureMapParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueId,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueDecimal,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? valueId;
  String? valueString;
  bool? valueBoolean;
  int? valueInteger;
  double? valueDecimal;
}

@Entity()
class StructureMapDependent {
  StructureMapDependent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    required this.variable,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  List<String> variable;
}
