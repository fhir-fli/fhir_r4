import 'package:realm/realm.dart';
@RealmModel()
class _SubscriptionRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_ContactPointRealm> contact;
  late _FhirInstantRealm end;
  late _PrimitiveElementRealm endElement;
  late String reason;
  late _PrimitiveElementRealm reasonElement;
  late String criteria;
  late _PrimitiveElementRealm criteriaElement;
  late String error;
  late _PrimitiveElementRealm errorElement;
  late _SubscriptionChannelRealm channel;
}
@RealmModel()
class _SubscriptionChannelRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirUrlRealm endpoint;
  late _PrimitiveElementRealm endpointElement;
  late _FhirCodeRealm payload;
  late _PrimitiveElementRealm payloadElement;
  late String header;
  late List<_PrimitiveElementRealm> headerElement;
}
