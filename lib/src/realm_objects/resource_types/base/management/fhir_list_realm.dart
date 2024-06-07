import 'package:realm/realm.dart';
@RealmModel()
class _FhirListRealm {
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
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm source;
  late _CodeableConceptRealm orderedBy;
  late List<_AnnotationRealm> note;
  late List<_FhirListEntryRealm> entry;
  late _CodeableConceptRealm emptyReason;
}
@RealmModel()
class _FhirListEntryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm flag;
  late _FhirBooleanRealm deleted;
  late _PrimitiveElementRealm deletedElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm item;
}
