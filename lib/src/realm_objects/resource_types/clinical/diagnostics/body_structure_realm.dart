import 'package:realm/realm.dart';
@RealmModel()
class _BodyStructureRealm {
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
  late _FhirBooleanRealm active;
  late _PrimitiveElementRealm activeElement;
  late _CodeableConceptRealm morphology;
  late _CodeableConceptRealm location;
  late List<_CodeableConceptRealm> locationQualifier;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AttachmentRealm> image;
  late _ReferenceRealm patient;
}
