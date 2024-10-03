import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class StructureMapEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'StructureMap';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  @ToMany()
  List<StructureMapStructureEntity>? structure;

  List<String>? import_;

  @ToMany()
  List<StructureMapGroupEntity>? group;
}

class StructureMapStructureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? alias;

  @ToOne()
  PrimitiveElementEntity? aliasElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class StructureMapGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? extends_;

  @ToOne()
  PrimitiveElementEntity? extendsElement;

  String? typeMode;

  @ToOne()
  PrimitiveElementEntity? typeModeElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  @ToMany()
  List<StructureMapInputEntity>? input;

  @ToMany()
  List<StructureMapRuleEntity>? rule;
}

class StructureMapInputEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class StructureMapRuleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToMany()
  List<StructureMapSourceEntity>? source;

  @ToMany()
  List<StructureMapTargetEntity>? target;

  @ToMany()
  List<StructureMapRuleEntity>? rule;

  @ToMany()
  List<StructureMapDependentEntity>? dependent;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class StructureMapSourceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? context;

  @ToOne()
  PrimitiveElementEntity? contextElement;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? defaultValueBase64Binary;

  @ToOne()
  PrimitiveElementEntity? defaultValueBase64BinaryElement;

  bool? defaultValueBoolean;

  @ToOne()
  PrimitiveElementEntity? defaultValueBooleanElement;

  String? defaultValueCanonical;

  @ToOne()
  PrimitiveElementEntity? defaultValueCanonicalElement;

  String? defaultValueCode;

  @ToOne()
  PrimitiveElementEntity? defaultValueCodeElement;

  String? defaultValueDate;

  @ToOne()
  PrimitiveElementEntity? defaultValueDateElement;

  String? defaultValueDateTime;

  @ToOne()
  PrimitiveElementEntity? defaultValueDateTimeElement;

  double? defaultValueDecimal;

  @ToOne()
  PrimitiveElementEntity? defaultValueDecimalElement;

  String? defaultValueId;

  @ToOne()
  PrimitiveElementEntity? defaultValueIdElement;

  String? defaultValueInstant;

  @ToOne()
  PrimitiveElementEntity? defaultValueInstantElement;

  int? defaultValueInteger;

  @ToOne()
  PrimitiveElementEntity? defaultValueIntegerElement;

  String? defaultValueMarkdown;

  @ToOne()
  PrimitiveElementEntity? defaultValueMarkdownElement;

  String? defaultValueOid;

  @ToOne()
  PrimitiveElementEntity? defaultValueOidElement;

  int? defaultValuePositiveInt;

  @ToOne()
  PrimitiveElementEntity? defaultValuePositiveIntElement;

  String? defaultValueString;

  @ToOne()
  PrimitiveElementEntity? defaultValueStringElement;

  String? defaultValueTime;

  @ToOne()
  PrimitiveElementEntity? defaultValueTimeElement;

  int? defaultValueUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? defaultValueUnsignedIntElement;

  String? defaultValueUri;

  @ToOne()
  PrimitiveElementEntity? defaultValueUriElement;

  String? defaultValueUrl;

  @ToOne()
  PrimitiveElementEntity? defaultValueUrlElement;

  String? defaultValueUuid;

  @ToOne()
  PrimitiveElementEntity? defaultValueUuidElement;

  @ToOne()
  AddressEntity? defaultValueAddress;

  @ToOne()
  AgeEntity? defaultValueAge;

  @ToOne()
  AnnotationEntity? defaultValueAnnotation;

  @ToOne()
  AttachmentEntity? defaultValueAttachment;

  @ToOne()
  CodeableConceptEntity? defaultValueCodeableConcept;

  @ToOne()
  CodingEntity? defaultValueCoding;

  @ToOne()
  ContactPointEntity? defaultValueContactPoint;

  @ToOne()
  CountEntity? defaultValueCount;

  @ToOne()
  DistanceEntity? defaultValueDistance;

  @ToOne()
  FhirDurationEntity? defaultValueDuration;

  @ToOne()
  HumanNameEntity? defaultValueHumanName;

  @ToOne()
  IdentifierEntity? defaultValueIdentifier;

  @ToOne()
  MoneyEntity? defaultValueMoney;

  @ToOne()
  PeriodEntity? defaultValuePeriod;

  @ToOne()
  QuantityEntity? defaultValueQuantity;

  @ToOne()
  RangeEntity? defaultValueRange;

  @ToOne()
  RatioEntity? defaultValueRatio;

  @ToOne()
  ReferenceEntity? defaultValueReference;

  @ToOne()
  SampledDataEntity? defaultValueSampledData;

  @ToOne()
  SignatureEntity? defaultValueSignature;

  @ToOne()
  TimingEntity? defaultValueTiming;

  @ToOne()
  ContactDetailEntity? defaultValueContactDetail;

  @ToOne()
  ContributorEntity? defaultValueContributor;

  @ToOne()
  DataRequirementEntity? defaultValueDataRequirement;

  @ToOne()
  FhirExpressionEntity? defaultValueExpression;

  @ToOne()
  ParameterDefinitionEntity? defaultValueParameterDefinition;

  @ToOne()
  RelatedArtifactEntity? defaultValueRelatedArtifact;

  @ToOne()
  TriggerDefinitionEntity? defaultValueTriggerDefinition;

  @ToOne()
  UsageContextEntity? defaultValueUsageContext;

  @ToOne()
  DosageEntity? defaultValueDosage;

  @ToOne()
  FhirMetaEntity? defaultValueMeta;

  String? element;

  @ToOne()
  PrimitiveElementEntity? elementElement;

  String? listMode;

  @ToOne()
  PrimitiveElementEntity? listModeElement;

  String? variable;

  @ToOne()
  PrimitiveElementEntity? variableElement;

  String? condition;

  @ToOne()
  PrimitiveElementEntity? conditionElement;

  String? check;

  @ToOne()
  PrimitiveElementEntity? checkElement;

  String? logMessage;

  @ToOne()
  PrimitiveElementEntity? logMessageElement;
}

class StructureMapTargetEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? context;

  @ToOne()
  PrimitiveElementEntity? contextElement;

  String? contextType;

  @ToOne()
  PrimitiveElementEntity? contextTypeElement;

  String? element;

  @ToOne()
  PrimitiveElementEntity? elementElement;

  String? variable;

  @ToOne()
  PrimitiveElementEntity? variableElement;

  List<String>? listMode;

  @ToMany()
  List<PrimitiveElementEntity>? listModeElement;

  String? listRuleId;

  @ToOne()
  PrimitiveElementEntity? listRuleIdElement;

  String? transform;

  @ToOne()
  PrimitiveElementEntity? transformElement;

  @ToMany()
  List<StructureMapParameterEntity>? parameter;
}

class StructureMapParameterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? valueId;

  @ToOne()
  PrimitiveElementEntity? valueIdElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  double? valueDecimal;

  @ToOne()
  PrimitiveElementEntity? valueDecimalElement;
}

class StructureMapDependentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  List<String>? variable;

  @ToMany()
  List<PrimitiveElementEntity>? variableElement;
}
