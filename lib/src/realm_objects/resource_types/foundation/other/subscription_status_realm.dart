import 'package:realm/realm.dart';
@RealmModel()
class _SubscriptionStatusRealm {
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
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirInteger64Realm eventsSinceSubscriptionStart;
  late _PrimitiveElementRealm eventsSinceSubscriptionStartElement;
  late List<_SubscriptionStatusNotificationEventRealm> notificationEvent;
  late _ReferenceRealm subscription;
  late _FhirCanonicalRealm topic;
  late List<_CodeableConceptRealm> error;
}
@RealmModel()
class _SubscriptionStatusNotificationEventRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirInteger64Realm eventNumber;
  late _PrimitiveElementRealm eventNumberElement;
  late _FhirInstantRealm timestamp;
  late _PrimitiveElementRealm timestampElement;
  late _ReferenceRealm focus;
  late List<_ReferenceRealm> additionalContext;
}
