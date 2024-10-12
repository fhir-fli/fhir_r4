// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubscriptionTopic {
  ObjectBoxSubscriptionTopic({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.title,
    this.titleElement,
    this.derivedFrom,
    this.derivedFromElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.resourceTrigger,
    this.eventTrigger,
    this.canFilterBy,
    this.notificationShape,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  List<String>? derivedFrom;
  ToMany<ObjectBoxElement>? derivedFromElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement>? approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement>? lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxSubscriptionTopicResourceTrigger>? resourceTrigger =
      ToMany<ObjectBoxSubscriptionTopicResourceTrigger>();
  ToMany<ObjectBoxSubscriptionTopicEventTrigger>? eventTrigger =
      ToMany<ObjectBoxSubscriptionTopicEventTrigger>();
  ToMany<ObjectBoxSubscriptionTopicCanFilterBy>? canFilterBy =
      ToMany<ObjectBoxSubscriptionTopicCanFilterBy>();
  ToMany<ObjectBoxSubscriptionTopicNotificationShape>? notificationShape =
      ToMany<ObjectBoxSubscriptionTopicNotificationShape>();
}

@Entity()
class ObjectBoxSubscriptionTopicResourceTrigger {
  ObjectBoxSubscriptionTopicResourceTrigger({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    required this.resource,
    this.resourceElement,
    this.supportedInteraction,
    this.supportedInteractionElement,
    this.queryCriteria,
    this.fhirPathCriteria,
    this.fhirPathCriteriaElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
  List<String>? supportedInteraction;
  ToMany<ObjectBoxElement>? supportedInteractionElement =
      ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxSubscriptionTopicQueryCriteria>? queryCriteria =
      ToOne<ObjectBoxSubscriptionTopicQueryCriteria>();
  String? fhirPathCriteria;
  ToOne<ObjectBoxElement>? fhirPathCriteriaElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicQueryCriteria {
  ObjectBoxSubscriptionTopicQueryCriteria({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.previous,
    this.previousElement,
    this.resultForCreate,
    this.resultForCreateElement,
    this.current,
    this.currentElement,
    this.resultForDelete,
    this.resultForDeleteElement,
    this.requireBoth,
    this.requireBothElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? previous;
  ToOne<ObjectBoxElement>? previousElement = ToOne<ObjectBoxElement>();
  String? resultForCreate;
  ToOne<ObjectBoxElement>? resultForCreateElement = ToOne<ObjectBoxElement>();
  String? current;
  ToOne<ObjectBoxElement>? currentElement = ToOne<ObjectBoxElement>();
  String? resultForDelete;
  ToOne<ObjectBoxElement>? resultForDeleteElement = ToOne<ObjectBoxElement>();
  bool? requireBoth;
  ToOne<ObjectBoxElement>? requireBothElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicEventTrigger {
  ObjectBoxSubscriptionTopicEventTrigger({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    required this.event,
    required this.resource,
    this.resourceElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> event = ToOne<ObjectBoxCodeableConcept>();
  String resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicCanFilterBy {
  ObjectBoxSubscriptionTopicCanFilterBy({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.resource,
    this.resourceElement,
    required this.filterParameter,
    this.filterParameterElement,
    this.filterDefinition,
    this.filterDefinitionElement,
    this.modifier,
    this.modifierElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
  String filterParameter;
  ToOne<ObjectBoxElement>? filterParameterElement = ToOne<ObjectBoxElement>();
  String? filterDefinition;
  ToOne<ObjectBoxElement>? filterDefinitionElement = ToOne<ObjectBoxElement>();
  List<String>? modifier;
  ToMany<ObjectBoxElement>? modifierElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicNotificationShape {
  ObjectBoxSubscriptionTopicNotificationShape({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.resource,
    this.resourceElement,
    this.include,
    this.includeElement,
    this.revInclude,
    this.revIncludeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
  List<String>? include;
  ToMany<ObjectBoxElement>? includeElement = ToMany<ObjectBoxElement>();
  List<String>? revInclude;
  ToMany<ObjectBoxElement>? revIncludeElement = ToMany<ObjectBoxElement>();
}
