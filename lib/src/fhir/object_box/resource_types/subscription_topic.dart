// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubscriptionTopic {
  ObjectBoxSubscriptionTopic({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.derivedFrom,
    List<ObjectBoxElement>? derivedFromElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxSubscriptionTopicResourceTrigger>? resourceTrigger,
    List<ObjectBoxSubscriptionTopicEventTrigger>? eventTrigger,
    List<ObjectBoxSubscriptionTopicCanFilterBy>? canFilterBy,
    List<ObjectBoxSubscriptionTopicNotificationShape>? notificationShape,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.titleElement.target = titleElement;
    this.derivedFromElement.addAll(derivedFromElement ?? []);
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.effectivePeriod.target = effectivePeriod;
    this.resourceTrigger.addAll(resourceTrigger ?? []);
    this.eventTrigger.addAll(eventTrigger ?? []);
    this.canFilterBy.addAll(canFilterBy ?? []);
    this.notificationShape.addAll(notificationShape ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  List<String>? derivedFrom;
  ToMany<ObjectBoxElement> derivedFromElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxSubscriptionTopicResourceTrigger> resourceTrigger =
      ToMany<ObjectBoxSubscriptionTopicResourceTrigger>();
  ToMany<ObjectBoxSubscriptionTopicEventTrigger> eventTrigger =
      ToMany<ObjectBoxSubscriptionTopicEventTrigger>();
  ToMany<ObjectBoxSubscriptionTopicCanFilterBy> canFilterBy =
      ToMany<ObjectBoxSubscriptionTopicCanFilterBy>();
  ToMany<ObjectBoxSubscriptionTopicNotificationShape> notificationShape =
      ToMany<ObjectBoxSubscriptionTopicNotificationShape>();
}

@Entity()
class ObjectBoxSubscriptionTopicResourceTrigger {
  ObjectBoxSubscriptionTopicResourceTrigger({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    required this.resource,
    ObjectBoxElement? resourceElement,
    this.supportedInteraction,
    List<ObjectBoxElement>? supportedInteractionElement,
    ObjectBoxSubscriptionTopicQueryCriteria? queryCriteria,
    this.fhirPathCriteria,
    ObjectBoxElement? fhirPathCriteriaElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.resourceElement.target = resourceElement;
    this.supportedInteractionElement.addAll(supportedInteractionElement ?? []);
    this.queryCriteria.target = queryCriteria;
    this.fhirPathCriteriaElement.target = fhirPathCriteriaElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
  List<String>? supportedInteraction;
  ToMany<ObjectBoxElement> supportedInteractionElement =
      ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxSubscriptionTopicQueryCriteria> queryCriteria =
      ToOne<ObjectBoxSubscriptionTopicQueryCriteria>();
  String? fhirPathCriteria;
  ToOne<ObjectBoxElement> fhirPathCriteriaElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicQueryCriteria {
  ObjectBoxSubscriptionTopicQueryCriteria({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.previous,
    ObjectBoxElement? previousElement,
    this.resultForCreate,
    ObjectBoxElement? resultForCreateElement,
    this.current,
    ObjectBoxElement? currentElement,
    this.resultForDelete,
    ObjectBoxElement? resultForDeleteElement,
    this.requireBoth,
    ObjectBoxElement? requireBothElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.previousElement.target = previousElement;
    this.resultForCreateElement.target = resultForCreateElement;
    this.currentElement.target = currentElement;
    this.resultForDeleteElement.target = resultForDeleteElement;
    this.requireBothElement.target = requireBothElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? previous;
  ToOne<ObjectBoxElement> previousElement = ToOne<ObjectBoxElement>();
  String? resultForCreate;
  ToOne<ObjectBoxElement> resultForCreateElement = ToOne<ObjectBoxElement>();
  String? current;
  ToOne<ObjectBoxElement> currentElement = ToOne<ObjectBoxElement>();
  String? resultForDelete;
  ToOne<ObjectBoxElement> resultForDeleteElement = ToOne<ObjectBoxElement>();
  bool? requireBoth;
  ToOne<ObjectBoxElement> requireBothElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicEventTrigger {
  ObjectBoxSubscriptionTopicEventTrigger({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? event,
    required this.resource,
    ObjectBoxElement? resourceElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.event.target = event;
    this.resourceElement.target = resourceElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> event = ToOne<ObjectBoxCodeableConcept>();
  String resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicCanFilterBy {
  ObjectBoxSubscriptionTopicCanFilterBy({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.resource,
    ObjectBoxElement? resourceElement,
    required this.filterParameter,
    ObjectBoxElement? filterParameterElement,
    this.filterDefinition,
    ObjectBoxElement? filterDefinitionElement,
    this.modifier,
    List<ObjectBoxElement>? modifierElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.resourceElement.target = resourceElement;
    this.filterParameterElement.target = filterParameterElement;
    this.filterDefinitionElement.target = filterDefinitionElement;
    this.modifierElement.addAll(modifierElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
  String filterParameter;
  ToOne<ObjectBoxElement> filterParameterElement = ToOne<ObjectBoxElement>();
  String? filterDefinition;
  ToOne<ObjectBoxElement> filterDefinitionElement = ToOne<ObjectBoxElement>();
  List<String>? modifier;
  ToMany<ObjectBoxElement> modifierElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxSubscriptionTopicNotificationShape {
  ObjectBoxSubscriptionTopicNotificationShape({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.resource,
    ObjectBoxElement? resourceElement,
    this.include,
    List<ObjectBoxElement>? includeElement,
    this.revInclude,
    List<ObjectBoxElement>? revIncludeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.resourceElement.target = resourceElement;
    this.includeElement.addAll(includeElement ?? []);
    this.revIncludeElement.addAll(revIncludeElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
  List<String>? include;
  ToMany<ObjectBoxElement> includeElement = ToMany<ObjectBoxElement>();
  List<String>? revInclude;
  ToMany<ObjectBoxElement> revIncludeElement = ToMany<ObjectBoxElement>();
}
