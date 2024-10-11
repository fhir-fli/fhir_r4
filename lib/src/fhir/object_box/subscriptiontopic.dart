import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class SubscriptionTopic extends Resource {
  SubscriptionTopic({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    this.title,
    this.derivedFrom,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.resourceTrigger,
    this.eventTrigger,
    this.canFilterBy,
    this.notificationShape,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? title;
  List<String>? derivedFrom;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<SubscriptionTopicResourceTrigger>? resourceTrigger =
      ToMany<SubscriptionTopicResourceTrigger>();
  ToMany<SubscriptionTopicEventTrigger>? eventTrigger =
      ToMany<SubscriptionTopicEventTrigger>();
  ToMany<SubscriptionTopicCanFilterBy>? canFilterBy =
      ToMany<SubscriptionTopicCanFilterBy>();
  ToMany<SubscriptionTopicNotificationShape>? notificationShape =
      ToMany<SubscriptionTopicNotificationShape>();
}

@Entity()
class SubscriptionTopicResourceTrigger {
  SubscriptionTopicResourceTrigger({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    required this.resource,
    this.supportedInteraction,
    this.queryCriteria,
    this.fhirPathCriteria,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  String resource;
  List<String>? supportedInteraction;
  ToOne<SubscriptionTopicQueryCriteria>? queryCriteria =
      ToOne<SubscriptionTopicQueryCriteria>();
  String? fhirPathCriteria;
}

@Entity()
class SubscriptionTopicQueryCriteria {
  SubscriptionTopicQueryCriteria({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.previous,
    this.resultForCreate,
    this.current,
    this.resultForDelete,
    this.requireBoth,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? previous;
  String? resultForCreate;
  String? current;
  String? resultForDelete;
  bool? requireBoth;
}

@Entity()
class SubscriptionTopicEventTrigger {
  SubscriptionTopicEventTrigger({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    required this.event,
    required this.resource,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<CodeableConcept> event = ToOne<CodeableConcept>();
  String resource;
}

@Entity()
class SubscriptionTopicCanFilterBy {
  SubscriptionTopicCanFilterBy({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.resource,
    required this.filterParameter,
    this.filterDefinition,
    this.modifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  String? resource;
  String filterParameter;
  String? filterDefinition;
  List<String>? modifier;
}

@Entity()
class SubscriptionTopicNotificationShape {
  SubscriptionTopicNotificationShape({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.resource,
    this.include,
    this.revInclude,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String resource;
  List<String>? include;
  List<String>? revInclude;
}
