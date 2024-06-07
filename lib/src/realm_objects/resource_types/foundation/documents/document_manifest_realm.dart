import 'package:realm/realm.dart';
@RealmModel()
class _DocumentManifestRealm {
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
  late _IdentifierRealm masterIdentifier;
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm type;
  late _ReferenceRealm subject;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late List<_ReferenceRealm> author;
  late List<_ReferenceRealm> recipient;
  late _FhirUriRealm source;
  late _PrimitiveElementRealm sourceElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_ReferenceRealm> content;
  late List<_DocumentManifestRelatedRealm> related;
}
@RealmModel()
class _DocumentManifestRelatedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late _ReferenceRealm ref;
}
