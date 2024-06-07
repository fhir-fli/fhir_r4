import 'package:realm/realm.dart';
@RealmModel()
class _OperationDefinitionRealm {
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
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
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
  late _FhirBooleanRealm affectsState;
  late _PrimitiveElementRealm affectsStateElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _FhirMarkdownRealm comment;
  late _PrimitiveElementRealm commentElement;
  late _FhirCanonicalRealm base;
  late List<_FhirCodeRealm> resource;
  late List<_PrimitiveElementRealm> resourceElement;
  late _FhirBooleanRealm system;
  late _PrimitiveElementRealm systemElement;
  late _FhirBooleanRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirBooleanRealm instance;
  late _PrimitiveElementRealm instanceElement;
  late _FhirCanonicalRealm inputProfile;
  late _FhirCanonicalRealm outputProfile;
  late List<_OperationDefinitionParameterRealm> parameter;
  late List<_OperationDefinitionOverloadRealm> overload;
}
@RealmModel()
class _OperationDefinitionParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCodeRealm use;
  late _PrimitiveElementRealm useElement;
  late _FhirIntegerRealm min;
  late _PrimitiveElementRealm minElement;
  late String max;
  late _PrimitiveElementRealm maxElement;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late List<_FhirCanonicalRealm> targetProfile;
  late _FhirCodeRealm searchType;
  late _PrimitiveElementRealm searchTypeElement;
  late _OperationDefinitionBindingRealm binding;
  late List<_OperationDefinitionReferencedFromRealm> referencedFrom;
  late List<_OperationDefinitionParameterRealm> part_;
}
@RealmModel()
class _OperationDefinitionBindingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm strength;
  late _PrimitiveElementRealm strengthElement;
  late _FhirCanonicalRealm valueSet;
}
@RealmModel()
class _OperationDefinitionReferencedFromRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String source;
  late _PrimitiveElementRealm sourceElement;
  late String sourceId;
  late _PrimitiveElementRealm sourceIdElement;
}
@RealmModel()
class _OperationDefinitionOverloadRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String parameterName;
  late List<_PrimitiveElementRealm> parameterNameElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
}
