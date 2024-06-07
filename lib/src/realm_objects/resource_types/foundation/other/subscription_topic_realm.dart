import 'package:realm/realm.dart';
@RealmModel()
class _SubscriptionTopicRealm {
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
  late String title;
  late _PrimitiveElementRealm titleElement;
  late List<_FhirCanonicalRealm> derivedFrom;
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
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late _PeriodRealm effectivePeriod;
  late List<_SubscriptionTopicResourceTriggerRealm> resourceTrigger;
  late List<_SubscriptionTopicEventTriggerRealm> eventTrigger;
  late List<_SubscriptionTopicCanFilterByRealm> canFilterBy;
  late List<_SubscriptionTopicNotificationShapeRealm> notificationShape;
}
@RealmModel()
class _SubscriptionTopicResourceTriggerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirUriRealm resource;
  late _PrimitiveElementRealm resourceElement;
  late List<_FhirCodeRealm> supportedInteraction;
  late List<_ElementRealm> supportedInteractionElement;
  late _SubscriptionTopicQueryCriteriaRealm queryCriteria;
  late String fhirPathCriteria;
  late _PrimitiveElementRealm fhirPathCriteriaElement;
}
@RealmModel()
class _SubscriptionTopicQueryCriteriaRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String previous;
  late _PrimitiveElementRealm previousElement;
  late _FhirCodeRealm resultForCreate;
  late _PrimitiveElementRealm resultForCreateElement;
  late String current;
  late _PrimitiveElementRealm currentElement;
  late _FhirCodeRealm resultForDelete;
  late _PrimitiveElementRealm resultForDeleteElement;
  late _FhirBooleanRealm requireBoth;
  late _PrimitiveElementRealm requireBothElement;
}
@RealmModel()
class _SubscriptionTopicEventTriggerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm event;
  late _FhirUriRealm resource;
  late _PrimitiveElementRealm resourceElement;
}
@RealmModel()
class _SubscriptionTopicCanFilterByRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirUriRealm resource;
  late _PrimitiveElementRealm resourceElement;
  late String filterParameter;
  late _PrimitiveElementRealm filterParameterElement;
  late _FhirUriRealm filterDefinition;
  late _PrimitiveElementRealm filterDefinitionElement;
  late List<_FhirCodeRealm> modifier;
  late List<_ElementRealm> modifierElement;
}
@RealmModel()
class _SubscriptionTopicNotificationShapeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm resource;
  late _PrimitiveElementRealm resourceElement;
  late String include;
  late List<_ElementRealm> includeElement;
  late String revInclude;
  late List<_ElementRealm> revIncludeElement;
}
