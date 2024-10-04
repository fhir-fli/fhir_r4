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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<ContactPoint> contact;
  final FhirInstant end;
  final PrimitiveElement End;
  final String reason;
  final PrimitiveElement Reason;
  final String criteria;
  final PrimitiveElement Criteria;
  final String error;
  final PrimitiveElement Error;
  final SubscriptionChannel channel;
}

@Data()
@JsonCodable()
class SubscriptionChannel {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirUrl endpoint;
  final PrimitiveElement Endpoint;
  final FhirCode payload;
  final PrimitiveElement Payload;
  final List<String> header;
  final List<PrimitiveElement> Header;
}

@Data()
@JsonCodable()
class SubscriptionStatus {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode type;
  final PrimitiveElement Type;
  final String eventsSinceSubscriptionStart;
  final PrimitiveElement EventsSinceSubscriptionStart;
  final List<SubscriptionStatusNotificationEvent> notificationEvent;
  final Reference subscription;
  final FhirCanonical topic;
  final List<CodeableConcept> error;
}

@Data()
@JsonCodable()
class SubscriptionStatusNotificationEvent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String eventNumber;
  final PrimitiveElement EventNumber;
  final FhirInstant timestamp;
  final PrimitiveElement Timestamp;
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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String title;
  final PrimitiveElement Title;
  final List<FhirCanonical> derivedFrom;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirUri resource;
  final PrimitiveElement Resource;
  final List<FhirCode> supportedInteraction;
  final List<PrimitiveElement> SupportedInteraction;
  final SubscriptionTopicQueryCriteria queryCriteria;
  final String fhirPathCriteria;
  final PrimitiveElement FhirPathCriteria;
}

@Data()
@JsonCodable()
class SubscriptionTopicQueryCriteria {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String previous;
  final PrimitiveElement Previous;
  final FhirCode resultForCreate;
  final PrimitiveElement ResultForCreate;
  final String current;
  final PrimitiveElement Current;
  final FhirCode resultForDelete;
  final PrimitiveElement ResultForDelete;
  final FhirBoolean requireBoth;
  final PrimitiveElement RequireBoth;
}

@Data()
@JsonCodable()
class SubscriptionTopicEventTrigger {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final CodeableConcept event;
  final FhirUri resource;
  final PrimitiveElement Resource;
}

@Data()
@JsonCodable()
class SubscriptionTopicCanFilterBy {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirUri resource;
  final PrimitiveElement Resource;
  final String filterParameter;
  final PrimitiveElement FilterParameter;
  final FhirUri filterDefinition;
  final PrimitiveElement FilterDefinition;
  final List<FhirCode> modifier;
  final List<PrimitiveElement> Modifier;
}

@Data()
@JsonCodable()
class SubscriptionTopicNotificationShape {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri resource;
  final PrimitiveElement Resource;
  final List<String> include;
  final List<PrimitiveElement> Include;
  final List<String> revInclude;
  final List<PrimitiveElement> RevInclude;
}


