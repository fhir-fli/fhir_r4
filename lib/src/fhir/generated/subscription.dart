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
}


