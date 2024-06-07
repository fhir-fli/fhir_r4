import 'package:realm/realm.dart';
@RealmModel()
class _StructureDefinitionRealm {
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
  late List<_CodingRealm> keyword;
  late _FhirCodeRealm fhirVersion;
  late _PrimitiveElementRealm fhirVersionElement;
  late List<_StructureDefinitionMappingRealm> mapping;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late _FhirBooleanRealm abstract_;
  late _PrimitiveElementRealm abstractElement;
  late List<_StructureDefinitionContextRealm> context;
  late String contextInvariant;
  late List<_PrimitiveElementRealm> contextInvariantElement;
  late _FhirUriRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirCanonicalRealm baseDefinition;
  late _PrimitiveElementRealm baseDefinitionElement;
  late _FhirCodeRealm derivation;
  late _PrimitiveElementRealm derivationElement;
  late _StructureDefinitionSnapshotRealm snapshot;
  late _StructureDefinitionDifferentialRealm differential;
}
@RealmModel()
class _StructureDefinitionMappingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm identity;
  late _PrimitiveElementRealm identityElement;
  late _FhirUriRealm uri;
  late _PrimitiveElementRealm uriElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
}
@RealmModel()
class _StructureDefinitionContextRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String expression;
  late _PrimitiveElementRealm expressionElement;
}
@RealmModel()
class _StructureDefinitionSnapshotRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ElementDefinitionRealm> element;
}
@RealmModel()
class _StructureDefinitionDifferentialRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ElementDefinitionRealm> element;
}
