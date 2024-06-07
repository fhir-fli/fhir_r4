import 'package:realm/realm.dart';
@RealmModel()
class _TerminologyCapabilitiesRealm {
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
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late _TerminologyCapabilitiesSoftwareRealm software;
  late _TerminologyCapabilitiesImplementationRealm implementation;
  late _FhirBooleanRealm lockedDate;
  late _PrimitiveElementRealm lockedDateElement;
  late List<_TerminologyCapabilitiesCodeSystemRealm> codeSystem;
  late _TerminologyCapabilitiesExpansionRealm expansion;
  late _FhirCodeRealm codeSearch;
  late _PrimitiveElementRealm codeSearchElement;
  late _TerminologyCapabilitiesValidateCodeRealm validateCode;
  late _TerminologyCapabilitiesTranslationRealm translation;
  late _TerminologyCapabilitiesClosureRealm closure;
}
@RealmModel()
class _TerminologyCapabilitiesSoftwareRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
}
@RealmModel()
class _TerminologyCapabilitiesImplementationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirUrlRealm url;
  late _PrimitiveElementRealm urlElement;
}
@RealmModel()
class _TerminologyCapabilitiesCodeSystemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCanonicalRealm uri;
  late List<_TerminologyCapabilitiesVersionRealm> version;
  late _FhirBooleanRealm subsumption;
  late _PrimitiveElementRealm subsumptionElement;
}
@RealmModel()
class _TerminologyCapabilitiesVersionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String code;
  late _PrimitiveElementRealm codeElement;
  late _FhirBooleanRealm isDefault;
  late _PrimitiveElementRealm isDefaultElement;
  late _FhirBooleanRealm compositional;
  late _PrimitiveElementRealm compositionalElement;
  late List<_FhirCodeRealm> language;
  late List<_PrimitiveElementRealm> languageElement;
  late List<_TerminologyCapabilitiesFilterRealm> filter;
  late List<_FhirCodeRealm> property;
  late List<_PrimitiveElementRealm> propertyElement;
}
@RealmModel()
class _TerminologyCapabilitiesFilterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late List<_FhirCodeRealm> op;
  late List<_PrimitiveElementRealm> opElement;
}
@RealmModel()
class _TerminologyCapabilitiesExpansionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm hierarchical;
  late _PrimitiveElementRealm hierarchicalElement;
  late _FhirBooleanRealm paging;
  late _PrimitiveElementRealm pagingElement;
  late _FhirBooleanRealm incomplete;
  late _PrimitiveElementRealm incompleteElement;
  late List<_TerminologyCapabilitiesParameterRealm> parameter;
  late _FhirMarkdownRealm textFilter;
  late _PrimitiveElementRealm textFilterElement;
}
@RealmModel()
class _TerminologyCapabilitiesParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm name;
  late _PrimitiveElementRealm nameElement;
  late String documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _TerminologyCapabilitiesValidateCodeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm translations;
  late _PrimitiveElementRealm translationsElement;
}
@RealmModel()
class _TerminologyCapabilitiesTranslationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm needsMap;
  late _PrimitiveElementRealm needsMapElement;
}
@RealmModel()
class _TerminologyCapabilitiesClosureRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm translation;
  late _PrimitiveElementRealm translationElement;
}
