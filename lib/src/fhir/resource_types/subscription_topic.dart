import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SubscriptionTopic extends DomainResource {
  final FhirUri url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirCanonical>? derivedFrom;
  final List<Element>? derivedFromElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final List<SubscriptionTopicResourceTrigger>? resourceTrigger;
  final List<SubscriptionTopicEventTrigger>? eventTrigger;
  final List<SubscriptionTopicCanFilterBy>? canFilterBy;
  final List<SubscriptionTopicNotificationShape>? notificationShape;

  SubscriptionTopic({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.SubscriptionTopic);

@override
SubscriptionTopic clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionTopicResourceTrigger extends BackboneElement {
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirUri resource;
  final Element? resourceElement;
  final List<FhirCode>? supportedInteraction;
  final List<Element>? supportedInteractionElement;
  final SubscriptionTopicQueryCriteria? queryCriteria;
  final FhirString? fhirPathCriteria;
  final Element? fhirPathCriteriaElement;

  SubscriptionTopicResourceTrigger({
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
SubscriptionTopicResourceTrigger clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionTopicQueryCriteria extends BackboneElement {
  final FhirString? previous;
  final Element? previousElement;
  final FhirCode? resultForCreate;
  final Element? resultForCreateElement;
  final FhirString? current;
  final Element? currentElement;
  final FhirCode? resultForDelete;
  final Element? resultForDeleteElement;
  final FhirBoolean? requireBoth;
  final Element? requireBothElement;

  SubscriptionTopicQueryCriteria({
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
SubscriptionTopicQueryCriteria clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionTopicEventTrigger extends BackboneElement {
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final CodeableConcept event;
  final FhirUri resource;
  final Element? resourceElement;

  SubscriptionTopicEventTrigger({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    required this.event,
    required this.resource,
this.resourceElement,
  });

@override
SubscriptionTopicEventTrigger clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionTopicCanFilterBy extends BackboneElement {
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirUri? resource;
  final Element? resourceElement;
  final FhirString filterParameter;
  final Element? filterParameterElement;
  final FhirUri? filterDefinition;
  final Element? filterDefinitionElement;
  final List<FhirCode>? modifier;
  final List<Element>? modifierElement;

  SubscriptionTopicCanFilterBy({
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
SubscriptionTopicCanFilterBy clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionTopicNotificationShape extends BackboneElement {
  final FhirUri resource;
  final Element? resourceElement;
  final List<FhirString>? include;
  final List<Element>? includeElement;
  final List<FhirString>? revInclude;
  final List<Element>? revIncludeElement;

  SubscriptionTopicNotificationShape({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resource,
this.resourceElement,
    this.include,
this.includeElement,
    this.revInclude,
this.revIncludeElement,
  });

@override
SubscriptionTopicNotificationShape clone() => throw UnimplementedError();
}

