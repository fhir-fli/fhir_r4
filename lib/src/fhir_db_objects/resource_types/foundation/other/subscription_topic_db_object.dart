import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class SubscriptionTopicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> derivedFrom =
      ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<SubscriptionTopicResourceTriggerDbObject> resourceTrigger =
      ToMany<SubscriptionTopicResourceTriggerDbObject>();
  final ToMany<SubscriptionTopicEventTriggerDbObject> eventTrigger =
      ToMany<SubscriptionTopicEventTriggerDbObject>();
  final ToMany<SubscriptionTopicCanFilterByDbObject> canFilterBy =
      ToMany<SubscriptionTopicCanFilterByDbObject>();
  final ToMany<SubscriptionTopicNotificationShapeDbObject> notificationShape =
      ToMany<SubscriptionTopicNotificationShapeDbObject>();
  SubscriptionTopicDbObject({required this.id});
}

@Entity()
class SubscriptionTopicResourceTriggerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> resource = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> supportedInteraction =
      ToMany<FhirCodeDbObject>();
  final ToMany<ElementDbObject> supportedInteractionElement =
      ToMany<ElementDbObject>();
  final ToOne<SubscriptionTopicQueryCriteriaDbObject> queryCriteria =
      ToOne<SubscriptionTopicQueryCriteriaDbObject>();
  final ToOne<StringDbObject> fhirPathCriteria = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> fhirPathCriteriaElement =
      ToOne<PrimitiveElementDbObject>();
  SubscriptionTopicResourceTriggerDbObject({required this.id});
}

@Entity()
class SubscriptionTopicQueryCriteriaDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> previous = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> previousElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> resultForCreate = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resultForCreateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> current = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> currentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> resultForDelete = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resultForDeleteElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> requireBoth = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> requireBothElement =
      ToOne<PrimitiveElementDbObject>();
  SubscriptionTopicQueryCriteriaDbObject({required this.id});
}

@Entity()
class SubscriptionTopicEventTriggerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> event = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> resource = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceElement =
      ToOne<PrimitiveElementDbObject>();
  SubscriptionTopicEventTriggerDbObject({required this.id});
}

@Entity()
class SubscriptionTopicCanFilterByDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> resource = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> filterParameter = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> filterParameterElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> filterDefinition = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> filterDefinitionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> modifier = ToMany<FhirCodeDbObject>();
  final ToMany<ElementDbObject> modifierElement = ToMany<ElementDbObject>();
  SubscriptionTopicCanFilterByDbObject({required this.id});
}

@Entity()
class SubscriptionTopicNotificationShapeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> resource = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> include = ToOne<StringDbObject>();
  final ToMany<ElementDbObject> includeElement = ToMany<ElementDbObject>();
  final ToOne<StringDbObject> revInclude = ToOne<StringDbObject>();
  final ToMany<ElementDbObject> revIncludeElement = ToMany<ElementDbObject>();
  SubscriptionTopicNotificationShapeDbObject({required this.id});
}
