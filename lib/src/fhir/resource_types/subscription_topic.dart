import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionTopic] /// Describes a stream of resource state changes or events and annotated with
/// labels useful to filter projections from this topic.
class SubscriptionTopic extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this subscription topic when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// subscription topic is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the subscription topic
  /// is stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [identifier] /// Business identifiers assigned to this subscription topic by the performer
  /// and/or other systems. These identifiers remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the subscription
  /// topic when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the Topic author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions are orderable.
  final FhirString? version;
  final Element? versionElement;

  /// [title] /// A short, descriptive, user-friendly title for the SubscriptionTopic, for
  /// example, "admission".
  final FhirString? title;
  final Element? titleElement;

  /// [derivedFrom] /// The canonical URL pointing to another FHIR-defined SubscriptionTopic that
  /// is adhered to in whole or in part by this SubscriptionTopic.
  final List<FhirCanonical>? derivedFrom;
  final List<Element>? derivedFromElement;

  /// [status] /// The current state of the SubscriptionTopic.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A flag to indicate that this TopSubscriptionTopicic is authored for testing
  /// purposes (or education/evaluation/marketing), and is not intended to be
  /// used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// For draft definitions, indicates the date of initial creation. For active
  /// definitions, represents the date of activation. For withdrawn definitions,
  /// indicates the date of withdrawal.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// Helps establish the "authority/credibility" of the SubscriptionTopic. May
  /// also allow for contact.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the Topic from the consumer's
  /// perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These terms may be used to assist with indexing
  /// and searching of code system definitions.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A jurisdiction in which the Topic is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explains why this Topic is needed and why it has been designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the SubscriptionTopic and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the SubscriptionTopic.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the asset content was approved by the publisher. Approval
  /// happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the asset content was last reviewed. Review happens
  /// periodically after that, but doesn't change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the SubscriptionTopic content was or is planned to
  /// be effective.
  final Period? effectivePeriod;

  /// [resourceTrigger] /// A definition of a resource-based event that triggers a notification based
  /// on the SubscriptionTopic. The criteria may be just a human readable
  /// description and/or a full FHIR search string or FHIRPath expression.
  /// Multiple triggers are considered OR joined (e.g., a resource update
  /// matching ANY of the definitions will trigger a notification).
  final List<SubscriptionTopicResourceTrigger>? resourceTrigger;

  /// [eventTrigger] /// Event definition which can be used to trigger the SubscriptionTopic.
  final List<SubscriptionTopicEventTrigger>? eventTrigger;

  /// [canFilterBy] /// List of properties by which Subscriptions on the SubscriptionTopic can be
  /// filtered. May be defined Search Parameters (e.g., Encounter.patient) or
  /// parameters defined within this SubscriptionTopic context (e.g., hub.event).
  final List<SubscriptionTopicCanFilterBy>? canFilterBy;

  /// [notificationShape] /// List of properties to describe the shape (e.g., resources) included in
  /// notifications from this Subscription Topic.
  final List<SubscriptionTopicNotificationShape>? notificationShape;
  @override
  SubscriptionTopic clone() => throw UnimplementedError();
  SubscriptionTopic copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? title,
    Element? titleElement,
    List<FhirCanonical>? derivedFrom,
    List<Element>? derivedFromElement,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    List<SubscriptionTopicResourceTrigger>? resourceTrigger,
    List<SubscriptionTopicEventTrigger>? eventTrigger,
    List<SubscriptionTopicCanFilterBy>? canFilterBy,
    List<SubscriptionTopicNotificationShape>? notificationShape,
  }) {
    return SubscriptionTopic(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      derivedFromElement: derivedFromElement ?? this.derivedFromElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      resourceTrigger: resourceTrigger ?? this.resourceTrigger,
      eventTrigger: eventTrigger ?? this.eventTrigger,
      canFilterBy: canFilterBy ?? this.canFilterBy,
      notificationShape: notificationShape ?? this.notificationShape,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionTopicResourceTrigger] /// A definition of a resource-based event that triggers a notification based
/// on the SubscriptionTopic. The criteria may be just a human readable
/// description and/or a full FHIR search string or FHIRPath expression.
/// Multiple triggers are considered OR joined (e.g., a resource update
/// matching ANY of the definitions will trigger a notification).
class SubscriptionTopicResourceTrigger extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// The human readable description of this resource trigger for the
  /// SubscriptionTopic - for example, "An Encounter enters the 'in-progress'
  /// state".
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [resource] /// URL of the Resource that is the type used in this resource trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition).
  /// For example, "Patient" maps to
  /// http://hl7.org/fhir/StructureDefinition/Patient. For more information, see
  /// <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  final FhirUri resource;
  final Element? resourceElement;

  /// [supportedInteraction] /// The FHIR RESTful interaction which can be used to trigger a notification
  /// for the SubscriptionTopic. Multiple values are considered OR joined (e.g.,
  /// CREATE or UPDATE).
  final List<FhirCode>? supportedInteraction;
  final List<Element>? supportedInteractionElement;

  /// [queryCriteria] /// The FHIR query based rules that the server should use to determine when to
  /// trigger a notification for this subscription topic.
  final SubscriptionTopicQueryCriteria? queryCriteria;

  /// [fhirPathCriteria] /// The FHIRPath based rules that the server should use to determine when to
  /// trigger a notification for this topic.
  final FhirString? fhirPathCriteria;
  final Element? fhirPathCriteriaElement;
  @override
  SubscriptionTopicResourceTrigger clone() => throw UnimplementedError();
  SubscriptionTopicResourceTrigger copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    FhirUri? resource,
    Element? resourceElement,
    List<FhirCode>? supportedInteraction,
    List<Element>? supportedInteractionElement,
    SubscriptionTopicQueryCriteria? queryCriteria,
    FhirString? fhirPathCriteria,
    Element? fhirPathCriteriaElement,
  }) {
    return SubscriptionTopicResourceTrigger(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
      supportedInteraction: supportedInteraction ?? this.supportedInteraction,
      supportedInteractionElement:
          supportedInteractionElement ?? this.supportedInteractionElement,
      queryCriteria: queryCriteria ?? this.queryCriteria,
      fhirPathCriteria: fhirPathCriteria ?? this.fhirPathCriteria,
      fhirPathCriteriaElement:
          fhirPathCriteriaElement ?? this.fhirPathCriteriaElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionTopicQueryCriteria] /// The FHIR query based rules that the server should use to determine when to
/// trigger a notification for this subscription topic.
class SubscriptionTopicQueryCriteria extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [previous] /// The FHIR query based rules are applied to the previous resource state
  /// (e.g., state before an update).
  final FhirString? previous;
  final Element? previousElement;

  /// [resultForCreate] /// For "create" interactions, should the "previous" criteria count as an
  /// automatic pass or an automatic fail.
  final FhirCode? resultForCreate;
  final Element? resultForCreateElement;

  /// [current] /// The FHIR query based rules are applied to the current resource state (e.g.,
  /// state after an update).
  final FhirString? current;
  final Element? currentElement;

  /// [resultForDelete] /// For "delete" interactions, should the "current" criteria count as an
  /// automatic pass or an automatic fail.
  final FhirCode? resultForDelete;
  final Element? resultForDeleteElement;

  /// [requireBoth] /// If set to true, both current and previous criteria must evaluate true to
  /// trigger a notification for this topic. Otherwise a notification for this
  /// topic will be triggered if either one evaluates to true.
  final FhirBoolean? requireBoth;
  final Element? requireBothElement;
  @override
  SubscriptionTopicQueryCriteria clone() => throw UnimplementedError();
  SubscriptionTopicQueryCriteria copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? previous,
    Element? previousElement,
    FhirCode? resultForCreate,
    Element? resultForCreateElement,
    FhirString? current,
    Element? currentElement,
    FhirCode? resultForDelete,
    Element? resultForDeleteElement,
    FhirBoolean? requireBoth,
    Element? requireBothElement,
  }) {
    return SubscriptionTopicQueryCriteria(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      previous: previous ?? this.previous,
      previousElement: previousElement ?? this.previousElement,
      resultForCreate: resultForCreate ?? this.resultForCreate,
      resultForCreateElement:
          resultForCreateElement ?? this.resultForCreateElement,
      current: current ?? this.current,
      currentElement: currentElement ?? this.currentElement,
      resultForDelete: resultForDelete ?? this.resultForDelete,
      resultForDeleteElement:
          resultForDeleteElement ?? this.resultForDeleteElement,
      requireBoth: requireBoth ?? this.requireBoth,
      requireBothElement: requireBothElement ?? this.requireBothElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionTopicEventTrigger] /// Event definition which can be used to trigger the SubscriptionTopic.
class SubscriptionTopicEventTrigger extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// The human readable description of an event to trigger a notification for
  /// the SubscriptionTopic - for example, "Patient Admission, as defined in
  /// HL7v2 via message ADT^A01". Multiple values are considered OR joined (e.g.,
  /// matching any single event listed).
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [event] /// A well-defined event which can be used to trigger notifications from the
  /// SubscriptionTopic.
  final CodeableConcept event;

  /// [resource] /// URL of the Resource that is the focus type used in this event trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition).
  /// For example, "Patient" maps to
  /// http://hl7.org/fhir/StructureDefinition/Patient. For more information, see
  /// <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  final FhirUri resource;
  final Element? resourceElement;
  @override
  SubscriptionTopicEventTrigger clone() => throw UnimplementedError();
  SubscriptionTopicEventTrigger copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    CodeableConcept? event,
    FhirUri? resource,
    Element? resourceElement,
  }) {
    return SubscriptionTopicEventTrigger(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      event: event ?? this.event,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionTopicCanFilterBy] /// List of properties by which Subscriptions on the SubscriptionTopic can be
/// filtered. May be defined Search Parameters (e.g., Encounter.patient) or
/// parameters defined within this SubscriptionTopic context (e.g., hub.event).
class SubscriptionTopicCanFilterBy extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of how this filtering parameter is intended to be used.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [resource] /// URL of the Resource that is the type used in this filter. This is the
  /// "focus" of the topic (or one of them if there are more than one). It will
  /// be the same, a generality, or a specificity of
  /// SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  final FhirUri? resource;
  final Element? resourceElement;

  /// [filterParameter] /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or topic-defined
  /// parameter (like "hub.event") which is a label for the filter.
  final FhirString filterParameter;
  final Element? filterParameterElement;

  /// [filterDefinition] /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or the
  /// officially-defined URI for a shared filter concept (like
  /// "http://example.org/concepts/shared-common-event").
  final FhirUri? filterDefinition;
  final Element? filterDefinitionElement;

  /// [modifier] /// Allowable operators to apply when determining matches (Search Modifiers).
  /// If the filterParameter is a SearchParameter, this list of modifiers SHALL
  /// be a strict subset of the modifiers defined on that SearchParameter.
  final List<FhirCode>? modifier;
  final List<Element>? modifierElement;
  @override
  SubscriptionTopicCanFilterBy clone() => throw UnimplementedError();
  SubscriptionTopicCanFilterBy copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    FhirUri? resource,
    Element? resourceElement,
    FhirString? filterParameter,
    Element? filterParameterElement,
    FhirUri? filterDefinition,
    Element? filterDefinitionElement,
    List<FhirCode>? modifier,
    List<Element>? modifierElement,
  }) {
    return SubscriptionTopicCanFilterBy(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
      filterParameter: filterParameter ?? this.filterParameter,
      filterParameterElement:
          filterParameterElement ?? this.filterParameterElement,
      filterDefinition: filterDefinition ?? this.filterDefinition,
      filterDefinitionElement:
          filterDefinitionElement ?? this.filterDefinitionElement,
      modifier: modifier ?? this.modifier,
      modifierElement: modifierElement ?? this.modifierElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionTopicNotificationShape] /// List of properties to describe the shape (e.g., resources) included in
/// notifications from this Subscription Topic.
class SubscriptionTopicNotificationShape extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [resource] /// URL of the Resource that is the type used in this shape. This is the
  /// "focus" of the topic (or one of them if there are more than one) and the
  /// root resource for this shape definition. It will be the same, a generality,
  /// or a specificity of SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  final FhirUri resource;
  final Element? resourceElement;

  /// [include] /// Search-style _include directives, rooted in the resource for this shape.
  /// Servers SHOULD include resources listed here, if they exist and the user is
  /// authorized to receive them. Clients SHOULD be prepared to receive these
  /// additional resources, but SHALL function properly without them.
  final List<FhirString>? include;
  final List<Element>? includeElement;

  /// [revInclude] /// Search-style _revinclude directives, rooted in the resource for this shape.
  /// Servers SHOULD include resources listed here, if they exist and the user is
  /// authorized to receive them. Clients SHOULD be prepared to receive these
  /// additional resources, but SHALL function properly without them.
  final List<FhirString>? revInclude;
  final List<Element>? revIncludeElement;
  @override
  SubscriptionTopicNotificationShape clone() => throw UnimplementedError();
  SubscriptionTopicNotificationShape copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? resource,
    Element? resourceElement,
    List<FhirString>? include,
    List<Element>? includeElement,
    List<FhirString>? revInclude,
    List<Element>? revIncludeElement,
  }) {
    return SubscriptionTopicNotificationShape(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
      include: include ?? this.include,
      includeElement: includeElement ?? this.includeElement,
      revInclude: revInclude ?? this.revInclude,
      revIncludeElement: revIncludeElement ?? this.revIncludeElement,
    );
  }
}
