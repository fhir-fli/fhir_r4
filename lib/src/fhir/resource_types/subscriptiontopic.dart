import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SubscriptionTopic extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirCanonical>? derivedFrom;
  final FhirCode? status;
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.title,
    this.titleElement,
    this.derivedFrom,
    this.status,
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
  }): super(resourceType: R4ResourceType.SubscriptionTopic);

@override
SubscriptionTopic clone() => this;

}


@Data()
@JsonCodable()
class SubscriptionTopicResourceTrigger {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirUri? resource;
  final Element? resourceElement;
  final List<FhirCode>? supportedInteraction;
  final List<Element>? supportedInteractionElement;
  final SubscriptionTopicQueryCriteria? queryCriteria;
  final FhirString? fhirPathCriteria;
  final Element? fhirPathCriteriaElement;

  SubscriptionTopicResourceTrigger({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.resource,
    this.resourceElement,
    this.supportedInteraction,
    this.supportedInteractionElement,
    this.queryCriteria,
    this.fhirPathCriteria,
    this.fhirPathCriteriaElement,
  });

}


@Data()
@JsonCodable()
class SubscriptionTopicQueryCriteria {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

}


@Data()
@JsonCodable()
class SubscriptionTopicEventTrigger {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final CodeableConcept event;
  final FhirUri? resource;
  final Element? resourceElement;

  SubscriptionTopicEventTrigger({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    required this.event,
    this.resource,
    this.resourceElement,
  });

}


@Data()
@JsonCodable()
class SubscriptionTopicCanFilterBy {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirUri? resource;
  final Element? resourceElement;
  final FhirString? filterParameter;
  final Element? filterParameterElement;
  final FhirUri? filterDefinition;
  final Element? filterDefinitionElement;
  final List<FhirCode>? modifier;
  final List<Element>? modifierElement;

  SubscriptionTopicCanFilterBy({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.resource,
    this.resourceElement,
    this.filterParameter,
    this.filterParameterElement,
    this.filterDefinition,
    this.filterDefinitionElement,
    this.modifier,
    this.modifierElement,
  });

}


@Data()
@JsonCodable()
class SubscriptionTopicNotificationShape {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? resource;
  final Element? resourceElement;
  final List<FhirString>? include;
  final List<Element>? includeElement;
  final List<FhirString>? revInclude;
  final List<Element>? revIncludeElement;

  SubscriptionTopicNotificationShape({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.resource,
    this.resourceElement,
    this.include,
    this.includeElement,
    this.revInclude,
    this.revIncludeElement,
  });

}



