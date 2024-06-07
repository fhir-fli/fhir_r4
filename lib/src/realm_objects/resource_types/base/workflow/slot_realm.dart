import 'package:realm/realm.dart';
@RealmModel()
class _SlotRealm {
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
  late List<_CodeableConceptRealm> serviceCategory;
  late List<_CodeableConceptRealm> serviceType;
  late List<_CodeableConceptRealm> specialty;
  late _CodeableConceptRealm appointmentType;
  late _ReferenceRealm schedule;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirInstantRealm start;
  late _PrimitiveElementRealm startElement;
  late _FhirInstantRealm end;
  late _PrimitiveElementRealm endElement;
  late _FhirBooleanRealm overbooked;
  late _PrimitiveElementRealm overbookedElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
}
