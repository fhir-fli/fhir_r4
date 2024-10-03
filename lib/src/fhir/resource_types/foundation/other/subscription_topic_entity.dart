import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SubscriptionTopicEntity {
  @Id(assignable: true)
  int dbId = 0;
  @ToOne()
  R4ResourceTypeEntity? resourceType;

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;
  List<String>? derivedFrom;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;
  String? approvalDate;
  @ToOne()
  PrimitiveElementEntity? approvalDateElement;
  String? lastReviewDate;
  @ToOne()
  PrimitiveElementEntity? lastReviewDateElement;
  @ToOne()
  PeriodEntity? effectivePeriod;
  @ToMany()
  List<SubscriptionTopicResourceTriggerEntity>? resourceTrigger;
  @ToMany()
  List<SubscriptionTopicEventTriggerEntity>? eventTrigger;
  @ToMany()
  List<SubscriptionTopicCanFilterByEntity>? canFilterBy;
  @ToMany()
  List<SubscriptionTopicNotificationShapeEntity>? notificationShape;
}

class SubscriptionTopicResourceTriggerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  String? resource;
  @ToOne()
  PrimitiveElementEntity? resourceElement;
  List<String>? supportedInteraction;

  @ToMany()
  List<PrimitiveElementEntity>? supportedInteractionElement;
  @ToOne()
  SubscriptionTopicQueryCriteriaEntity? queryCriteria;
  String? fhirPathCriteria;

  @ToOne()
  PrimitiveElementEntity? fhirPathCriteriaElement;
}

class SubscriptionTopicQueryCriteriaEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? previous;
  @ToOne()
  PrimitiveElementEntity? previousElement;
  String? resultForCreate;
  @ToOne()
  PrimitiveElementEntity? resultForCreateElement;
  String? current;
  @ToOne()
  PrimitiveElementEntity? currentElement;
  String? resultForDelete;
  @ToOne()
  PrimitiveElementEntity? resultForDeleteElement;
  bool? requireBoth;
  @ToOne()
  PrimitiveElementEntity? requireBothElement;
}

class SubscriptionTopicEventTriggerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  @ToOne()
  CodeableConceptEntity? event;
  String? resource;
  @ToOne()
  PrimitiveElementEntity? resourceElement;
}

class SubscriptionTopicCanFilterByEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  String? resource;
  @ToOne()
  PrimitiveElementEntity? resourceElement;
  String? filterParameter;
  @ToOne()
  PrimitiveElementEntity? filterParameterElement;
  String? filterDefinition;

  @ToOne()
  PrimitiveElementEntity? filterDefinitionElement;
  List<String>? modifier;
  @ToMany()
  List<PrimitiveElementEntity>? modifierElement;
}

class SubscriptionTopicNotificationShapeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  String? resource;
  @ToOne()
  PrimitiveElementEntity? resourceElement;
  List<String>? include;
  @ToMany()
  List<PrimitiveElementEntity>? includeElement;
  List<String>? revInclude;
  @ToMany()
  List<PrimitiveElementEntity>? revIncludeElement;
}
