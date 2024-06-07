import 'package:realm/realm.dart';
@RealmModel()
class _CompositionRealm {
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
  late _IdentifierRealm identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> category;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late List<_ReferenceRealm> author;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirCodeRealm confidentiality;
  late _PrimitiveElementRealm confidentialityElement;
  late List<_CompositionAttesterRealm> attester;
  late _ReferenceRealm custodian;
  late List<_CompositionRelatesToRealm> relatesTo;
  late List<_CompositionEventRealm> event;
  late List<_CompositionSectionRealm> section;
}
@RealmModel()
class _CompositionAttesterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late String time;
  late _PrimitiveElementRealm timeElement;
  late _ReferenceRealm party;
}
@RealmModel()
class _CompositionRelatesToRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _IdentifierRealm targetIdentifier;
  late _ReferenceRealm targetReference;
}
@RealmModel()
class _CompositionEventRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> code;
  late _PeriodRealm period;
  late List<_ReferenceRealm> detail;
}
@RealmModel()
class _CompositionSectionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _CodeableConceptRealm code;
  late List<_ReferenceRealm> author;
  late _ReferenceRealm focus;
  late _NarrativeRealm text;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _CodeableConceptRealm orderedBy;
  late List<_ReferenceRealm> entry;
  late _CodeableConceptRealm emptyReason;
  late List<_CompositionSectionRealm> section;
}
