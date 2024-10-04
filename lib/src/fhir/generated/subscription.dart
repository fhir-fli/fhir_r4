import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Subscription {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<ContactPoint> contact;
  final FhirInstant end;
  final PrimitiveElement endElement;
  final String reason;
  final PrimitiveElement reasonElement;
  final String criteria;
  final PrimitiveElement criteriaElement;
  final String error;
  final PrimitiveElement errorElement;
  final SubscriptionChannel channel;
  const Subscription({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.status,
    required this.statusElement,
    required this.contact,
    required this.end,
    required this.endElement,
    required this.reason,
    required this.reasonElement,
    required this.criteria,
    required this.criteriaElement,
    required this.error,
    required this.errorElement,
    required this.channel,
  });
}

@Data()
@JsonCodable()
class SubscriptionChannel {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirUrl endpoint;
  final PrimitiveElement endpointElement;
  final FhirCode payload;
  final PrimitiveElement payloadElement;
  final List<String> header;
  final List<PrimitiveElement> headerElement;
  const SubscriptionChannel({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.endpoint,
    required this.endpointElement,
    required this.payload,
    required this.payloadElement,
    required this.header,
    required this.headerElement,
  });
}

@Data()
@JsonCodable()
class SubscriptionStatus {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String eventsSinceSubscriptionStart;
  final PrimitiveElement eventsSinceSubscriptionStartElement;
  final List<SubscriptionStatusNotificationEvent> notificationEvent;
  final Reference subscription;
  final FhirCanonical topic;
  final List<CodeableConcept> error;
  const SubscriptionStatus({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.status,
    required this.statusElement,
    required this.type,
    required this.typeElement,
    required this.eventsSinceSubscriptionStart,
    required this.eventsSinceSubscriptionStartElement,
    required this.notificationEvent,
    required this.subscription,
    required this.topic,
    required this.error,
  });
}

@Data()
@JsonCodable()
class SubscriptionStatusNotificationEvent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String eventNumber;
  final PrimitiveElement eventNumberElement;
  final FhirInstant timestamp;
  final PrimitiveElement timestampElement;
  final Reference focus;
  final List<Reference> additionalContext;
  const SubscriptionStatusNotificationEvent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.eventNumber,
    required this.eventNumberElement,
    required this.timestamp,
    required this.timestampElement,
    required this.focus,
    required this.additionalContext,
  });
}

@Data()
@JsonCodable()
class SubscriptionTopic {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String title;
  final PrimitiveElement titleElement;
  final List<FhirCanonical> derivedFrom;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final Period effectivePeriod;
  final List<SubscriptionTopicResourceTrigger> resourceTrigger;
  final List<SubscriptionTopicEventTrigger> eventTrigger;
  final List<SubscriptionTopicCanFilterBy> canFilterBy;
  final List<SubscriptionTopicNotificationShape> notificationShape;
  const SubscriptionTopic({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.title,
    required this.titleElement,
    required this.derivedFrom,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.approvalDate,
    required this.approvalDateElement,
    required this.lastReviewDate,
    required this.lastReviewDateElement,
    required this.effectivePeriod,
    required this.resourceTrigger,
    required this.eventTrigger,
    required this.canFilterBy,
    required this.notificationShape,
  });
}

@Data()
@JsonCodable()
class SubscriptionTopicResourceTrigger {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final FhirUri resource;
  final PrimitiveElement resourceElement;
  final List<FhirCode> supportedInteraction;
  final List<PrimitiveElement> supportedInteractionElement;
  final SubscriptionTopicQueryCriteria queryCriteria;
  final String fhirPathCriteria;
  final PrimitiveElement fhirPathCriteriaElement;
  const SubscriptionTopicResourceTrigger({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.resource,
    required this.resourceElement,
    required this.supportedInteraction,
    required this.supportedInteractionElement,
    required this.queryCriteria,
    required this.fhirPathCriteria,
    required this.fhirPathCriteriaElement,
  });
}

@Data()
@JsonCodable()
class SubscriptionTopicQueryCriteria {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String previous;
  final PrimitiveElement previousElement;
  final FhirCode resultForCreate;
  final PrimitiveElement resultForCreateElement;
  final String current;
  final PrimitiveElement currentElement;
  final FhirCode resultForDelete;
  final PrimitiveElement resultForDeleteElement;
  final FhirBoolean requireBoth;
  final PrimitiveElement requireBothElement;
  const SubscriptionTopicQueryCriteria({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.previous,
    required this.previousElement,
    required this.resultForCreate,
    required this.resultForCreateElement,
    required this.current,
    required this.currentElement,
    required this.resultForDelete,
    required this.resultForDeleteElement,
    required this.requireBoth,
    required this.requireBothElement,
  });
}

@Data()
@JsonCodable()
class SubscriptionTopicEventTrigger {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept event;
  final FhirUri resource;
  final PrimitiveElement resourceElement;
  const SubscriptionTopicEventTrigger({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.event,
    required this.resource,
    required this.resourceElement,
  });
}

@Data()
@JsonCodable()
class SubscriptionTopicCanFilterBy {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final FhirUri resource;
  final PrimitiveElement resourceElement;
  final String filterParameter;
  final PrimitiveElement filterParameterElement;
  final FhirUri filterDefinition;
  final PrimitiveElement filterDefinitionElement;
  final List<FhirCode> modifier;
  final List<PrimitiveElement> modifierElement;
  const SubscriptionTopicCanFilterBy({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.resource,
    required this.resourceElement,
    required this.filterParameter,
    required this.filterParameterElement,
    required this.filterDefinition,
    required this.filterDefinitionElement,
    required this.modifier,
    required this.modifierElement,
  });
}

@Data()
@JsonCodable()
class SubscriptionTopicNotificationShape {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri resource;
  final PrimitiveElement resourceElement;
  final List<String> include;
  final List<PrimitiveElement> includeElement;
  final List<String> revInclude;
  final List<PrimitiveElement> revIncludeElement;
  const SubscriptionTopicNotificationShape({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.resource,
    required this.resourceElement,
    required this.include,
    required this.includeElement,
    required this.revInclude,
    required this.revIncludeElement,
  });
}


