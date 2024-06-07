import 'package:realm/realm.dart';
@RealmModel()
class _StructureMapRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late List<_StructureMapStructureRealm> structure;
  late List<_FhirCanonicalRealm> import_;
  late List<_StructureMapGroupRealm> group;
}
@RealmModel()
class _StructureMapStructureRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCanonicalRealm url;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late String alias;
  late _PrimitiveElementRealm aliasElement;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _StructureMapGroupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm name;
  late _PrimitiveElementRealm nameElement;
  late _FhirIdRealm extends_;
  late _PrimitiveElementRealm extendsElement;
  late _FhirCodeRealm typeMode;
  late _PrimitiveElementRealm typeModeElement;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
  late List<_StructureMapInputRealm> input;
  late List<_StructureMapRuleRealm> rule;
}
@RealmModel()
class _StructureMapInputRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm name;
  late _PrimitiveElementRealm nameElement;
  late String type;
  late _PrimitiveElementRealm typeElement;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _StructureMapRuleRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm name;
  late _PrimitiveElementRealm nameElement;
  late List<_StructureMapSourceRealm> source;
  late List<_StructureMapTargetRealm> target;
  late List<_StructureMapRuleRealm> rule;
  late List<_StructureMapDependentRealm> dependent;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _StructureMapSourceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm context;
  late _PrimitiveElementRealm contextElement;
  late _FhirIntegerRealm min;
  late _PrimitiveElementRealm minElement;
  late String max;
  late _PrimitiveElementRealm maxElement;
  late String type;
  late _PrimitiveElementRealm typeElement;
  late _FhirBase64BinaryRealm defaultValueBase64Binary;
  late _PrimitiveElementRealm defaultValueBase64BinaryElement;
  late _FhirBooleanRealm defaultValueBoolean;
  late _PrimitiveElementRealm defaultValueBooleanElement;
  late _FhirCanonicalRealm defaultValueCanonical;
  late _PrimitiveElementRealm defaultValueCanonicalElement;
  late _FhirCodeRealm defaultValueCode;
  late _PrimitiveElementRealm defaultValueCodeElement;
  late _FhirDateRealm defaultValueDate;
  late _PrimitiveElementRealm defaultValueDateElement;
  late String defaultValueDateTime;
  late _PrimitiveElementRealm defaultValueDateTimeElement;
  late _FhirDecimalRealm defaultValueDecimal;
  late _PrimitiveElementRealm defaultValueDecimalElement;
  late _FhirIdRealm defaultValueId;
  late _PrimitiveElementRealm defaultValueIdElement;
  late _FhirInstantRealm defaultValueInstant;
  late _PrimitiveElementRealm defaultValueInstantElement;
  late _FhirIntegerRealm defaultValueInteger;
  late _PrimitiveElementRealm defaultValueIntegerElement;
  late _FhirMarkdownRealm defaultValueMarkdown;
  late _PrimitiveElementRealm defaultValueMarkdownElement;
  late _FhirOidRealm defaultValueOid;
  late _PrimitiveElementRealm defaultValueOidElement;
  late _FhirPositiveIntRealm defaultValuePositiveInt;
  late _PrimitiveElementRealm defaultValuePositiveIntElement;
  late String defaultValueString;
  late _PrimitiveElementRealm defaultValueStringElement;
  late _FhirTimeRealm defaultValueTime;
  late _PrimitiveElementRealm defaultValueTimeElement;
  late _FhirUnsignedIntRealm defaultValueUnsignedInt;
  late _PrimitiveElementRealm defaultValueUnsignedIntElement;
  late _FhirUriRealm defaultValueUri;
  late _PrimitiveElementRealm defaultValueUriElement;
  late _FhirUrlRealm defaultValueUrl;
  late _PrimitiveElementRealm defaultValueUrlElement;
  late _FhirUuidRealm defaultValueUuid;
  late _PrimitiveElementRealm defaultValueUuidElement;
  late _AddressRealm defaultValueAddress;
  late _AgeRealm defaultValueAge;
  late _AnnotationRealm defaultValueAnnotation;
  late _AttachmentRealm defaultValueAttachment;
  late _CodeableConceptRealm defaultValueCodeableConcept;
  late _CodingRealm defaultValueCoding;
  late _ContactPointRealm defaultValueContactPoint;
  late _CountRealm defaultValueCount;
  late _DistanceRealm defaultValueDistance;
  late _FhirDurationRealm defaultValueDuration;
  late _HumanNameRealm defaultValueHumanName;
  late _IdentifierRealm defaultValueIdentifier;
  late _MoneyRealm defaultValueMoney;
  late _PeriodRealm defaultValuePeriod;
  late _QuantityRealm defaultValueQuantity;
  late _RangeRealm defaultValueRange;
  late _RatioRealm defaultValueRatio;
  late _ReferenceRealm defaultValueReference;
  late _SampledDataRealm defaultValueSampledData;
  late _SignatureRealm defaultValueSignature;
  late _TimingRealm defaultValueTiming;
  late _ContactDetailRealm defaultValueContactDetail;
  late _ContributorRealm defaultValueContributor;
  late _DataRequirementRealm defaultValueDataRequirement;
  late _FhirExpressionRealm defaultValueExpression;
  late _ParameterDefinitionRealm defaultValueParameterDefinition;
  late _RelatedArtifactRealm defaultValueRelatedArtifact;
  late _TriggerDefinitionRealm defaultValueTriggerDefinition;
  late _UsageContextRealm defaultValueUsageContext;
  late _DosageRealm defaultValueDosage;
  late _FhirMetaRealm defaultValueMeta;
  late String element;
  late _PrimitiveElementRealm elementElement;
  late _FhirCodeRealm listMode;
  late _PrimitiveElementRealm listModeElement;
  late _FhirIdRealm variable;
  late _PrimitiveElementRealm variableElement;
  late String condition;
  late _PrimitiveElementRealm conditionElement;
  late String check;
  late _PrimitiveElementRealm checkElement;
  late String logMessage;
  late _PrimitiveElementRealm logMessageElement;
}
@RealmModel()
class _StructureMapTargetRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm context;
  late _PrimitiveElementRealm contextElement;
  late _FhirCodeRealm contextType;
  late _PrimitiveElementRealm contextTypeElement;
  late String element;
  late _PrimitiveElementRealm elementElement;
  late _FhirIdRealm variable;
  late _PrimitiveElementRealm variableElement;
  late List<_FhirCodeRealm> listMode;
  late List<_PrimitiveElementRealm> listModeElement;
  late _FhirIdRealm listRuleId;
  late _PrimitiveElementRealm listRuleIdElement;
  late _FhirCodeRealm transform;
  late _PrimitiveElementRealm transformElement;
  late List<_StructureMapParameterRealm> parameter;
}
@RealmModel()
class _StructureMapParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm valueId;
  late _PrimitiveElementRealm valueIdElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _FhirIntegerRealm valueInteger;
  late _PrimitiveElementRealm valueIntegerElement;
  late _FhirDecimalRealm valueDecimal;
  late _PrimitiveElementRealm valueDecimalElement;
}
@RealmModel()
class _StructureMapDependentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm name;
  late _PrimitiveElementRealm nameElement;
  late String variable;
  late List<_PrimitiveElementRealm> variableElement;
}
