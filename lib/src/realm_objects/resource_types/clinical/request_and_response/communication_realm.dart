import 'package:realm/realm.dart';
@RealmModel()
class _CommunicationRealm {
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
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> partOf;
  late List<_ReferenceRealm> inResponseTo;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm statusReason;
  late List<_CodeableConceptRealm> category;
  late _FhirCodeRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late List<_CodeableConceptRealm> medium;
  late _ReferenceRealm subject;
  late _CodeableConceptRealm topic;
  late List<_ReferenceRealm> about;
  late _ReferenceRealm encounter;
  late String sent;
  late _PrimitiveElementRealm sentElement;
  late String received;
  late _PrimitiveElementRealm receivedElement;
  late List<_ReferenceRealm> recipient;
  late _ReferenceRealm sender;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_CommunicationPayloadRealm> payload;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _CommunicationPayloadRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String contentString;
  late _PrimitiveElementRealm contentStringElement;
  late _AttachmentRealm contentAttachment;
  late _ReferenceRealm contentReference;
}
