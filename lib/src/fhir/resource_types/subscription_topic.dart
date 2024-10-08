import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'subscription_topic.g.dart';

/// [SubscriptionTopic] /// Describes a stream of resource state changes or events and annotated with
/// labels useful to filter projections from this topic.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.SubscriptionTopic,
            fhirType: 'SubscriptionTopic');
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
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// Business identifiers assigned to this subscription topic by the performer
  /// and/or other systems. These identifiers remain constant as the resource is
  /// updated and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the subscription
  /// topic when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the Topic author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions are orderable.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [title] /// A short, descriptive, user-friendly title for the SubscriptionTopic, for
  /// example, "admission".
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [derivedFrom] /// The canonical URL pointing to another FHIR-defined SubscriptionTopic that
  /// is adhered to in whole or in part by this SubscriptionTopic.
  @JsonKey(name: 'derivedFrom')
  final List<FhirCanonical>? derivedFrom;
  @JsonKey(name: '_derivedFrom')
  final List<Element>? derivedFromElement;

  /// [status] /// The current state of the SubscriptionTopic.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A flag to indicate that this TopSubscriptionTopicic is authored for testing
  /// purposes (or education/evaluation/marketing), and is not intended to be
  /// used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// For draft definitions, indicates the date of initial creation. For active
  /// definitions, represents the date of activation. For withdrawn definitions,
  /// indicates the date of withdrawal.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// Helps establish the "authority/credibility" of the SubscriptionTopic. May
  /// also allow for contact.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the Topic from the consumer's
  /// perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These terms may be used to assist with indexing
  /// and searching of code system definitions.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A jurisdiction in which the Topic is intended to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explains why this Topic is needed and why it has been designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the SubscriptionTopic and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the SubscriptionTopic.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the asset content was approved by the publisher. Approval
  /// happens once when the content is officially approved for usage.
  @JsonKey(name: 'approvalDate')
  final FhirDate? approvalDate;
  @JsonKey(name: '_approvalDate')
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the asset content was last reviewed. Review happens
  /// periodically after that, but doesn't change the original approval date.
  @JsonKey(name: 'lastReviewDate')
  final FhirDate? lastReviewDate;
  @JsonKey(name: '_lastReviewDate')
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the SubscriptionTopic content was or is planned to
  /// be effective.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [resourceTrigger] /// A definition of a resource-based event that triggers a notification based
  /// on the SubscriptionTopic. The criteria may be just a human readable
  /// description and/or a full FHIR search string or FHIRPath expression.
  /// Multiple triggers are considered OR joined (e.g., a resource update
  /// matching ANY of the definitions will trigger a notification).
  @JsonKey(name: 'resourceTrigger')
  final List<SubscriptionTopicResourceTrigger>? resourceTrigger;

  /// [eventTrigger] /// Event definition which can be used to trigger the SubscriptionTopic.
  @JsonKey(name: 'eventTrigger')
  final List<SubscriptionTopicEventTrigger>? eventTrigger;

  /// [canFilterBy] /// List of properties by which Subscriptions on the SubscriptionTopic can be
  /// filtered. May be defined Search Parameters (e.g., Encounter.patient) or
  /// parameters defined within this SubscriptionTopic context (e.g., hub.event).
  @JsonKey(name: 'canFilterBy')
  final List<SubscriptionTopicCanFilterBy>? canFilterBy;

  /// [notificationShape] /// List of properties to describe the shape (e.g., resources) included in
  /// notifications from this Subscription Topic.
  @JsonKey(name: 'notificationShape')
  final List<SubscriptionTopicNotificationShape>? notificationShape;
  factory SubscriptionTopic.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionTopicToJson(this);

  @override
  SubscriptionTopic clone() => throw UnimplementedError();
  @override
  SubscriptionTopic copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    PublicationStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionTopic.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionTopic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionTopic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionTopicResourceTrigger] /// A definition of a resource-based event that triggers a notification based
/// on the SubscriptionTopic. The criteria may be just a human readable
/// description and/or a full FHIR search string or FHIRPath expression.
/// Multiple triggers are considered OR joined (e.g., a resource update
/// matching ANY of the definitions will trigger a notification).
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubscriptionTopicResourceTrigger');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// The human readable description of this resource trigger for the
  /// SubscriptionTopic - for example, "An Encounter enters the 'in-progress'
  /// state".
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [resource] /// URL of the Resource that is the type used in this resource trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition).
  /// For example, "Patient" maps to
  /// http://hl7.org/fhir/StructureDefinition/Patient. For more information, see
  /// <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  @JsonKey(name: 'resource')
  final FHIRDefinedType resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;

  /// [supportedInteraction] /// The FHIR RESTful interaction which can be used to trigger a notification
  /// for the SubscriptionTopic. Multiple values are considered OR joined (e.g.,
  /// CREATE or UPDATE).
  @JsonKey(name: 'supportedInteraction')
  final List<InteractionTrigger>? supportedInteraction;
  @JsonKey(name: '_supportedInteraction')
  final List<Element>? supportedInteractionElement;

  /// [queryCriteria] /// The FHIR query based rules that the server should use to determine when to
  /// trigger a notification for this subscription topic.
  @JsonKey(name: 'queryCriteria')
  final SubscriptionTopicQueryCriteria? queryCriteria;

  /// [fhirPathCriteria] /// The FHIRPath based rules that the server should use to determine when to
  /// trigger a notification for this topic.
  @JsonKey(name: 'fhirPathCriteria')
  final FhirString? fhirPathCriteria;
  @JsonKey(name: '_fhirPathCriteria')
  final Element? fhirPathCriteriaElement;
  factory SubscriptionTopicResourceTrigger.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionTopicResourceTriggerFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionTopicResourceTriggerToJson(this);

  @override
  SubscriptionTopicResourceTrigger clone() => throw UnimplementedError();
  @override
  SubscriptionTopicResourceTrigger copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    FHIRDefinedType? resource,
    Element? resourceElement,
    List<InteractionTrigger>? supportedInteraction,
    List<Element>? supportedInteractionElement,
    SubscriptionTopicQueryCriteria? queryCriteria,
    FhirString? fhirPathCriteria,
    Element? fhirPathCriteriaElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionTopicResourceTrigger.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicResourceTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionTopicResourceTrigger.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionTopicResourceTrigger cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopicResourceTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicResourceTrigger.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionTopicQueryCriteria] /// The FHIR query based rules that the server should use to determine when to
/// trigger a notification for this subscription topic.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubscriptionTopicQueryCriteria');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [previous] /// The FHIR query based rules are applied to the previous resource state
  /// (e.g., state before an update).
  @JsonKey(name: 'previous')
  final FhirString? previous;
  @JsonKey(name: '_previous')
  final Element? previousElement;

  /// [resultForCreate] /// For "create" interactions, should the "previous" criteria count as an
  /// automatic pass or an automatic fail.
  @JsonKey(name: 'resultForCreate')
  final CriteriaNotExistsBehavior? resultForCreate;
  @JsonKey(name: '_resultForCreate')
  final Element? resultForCreateElement;

  /// [current] /// The FHIR query based rules are applied to the current resource state (e.g.,
  /// state after an update).
  @JsonKey(name: 'current')
  final FhirString? current;
  @JsonKey(name: '_current')
  final Element? currentElement;

  /// [resultForDelete] /// For "delete" interactions, should the "current" criteria count as an
  /// automatic pass or an automatic fail.
  @JsonKey(name: 'resultForDelete')
  final CriteriaNotExistsBehavior? resultForDelete;
  @JsonKey(name: '_resultForDelete')
  final Element? resultForDeleteElement;

  /// [requireBoth] /// If set to true, both current and previous criteria must evaluate true to
  /// trigger a notification for this topic. Otherwise a notification for this
  /// topic will be triggered if either one evaluates to true.
  @JsonKey(name: 'requireBoth')
  final FhirBoolean? requireBoth;
  @JsonKey(name: '_requireBoth')
  final Element? requireBothElement;
  factory SubscriptionTopicQueryCriteria.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicQueryCriteriaFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionTopicQueryCriteriaToJson(this);

  @override
  SubscriptionTopicQueryCriteria clone() => throw UnimplementedError();
  @override
  SubscriptionTopicQueryCriteria copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? previous,
    Element? previousElement,
    CriteriaNotExistsBehavior? resultForCreate,
    Element? resultForCreateElement,
    FhirString? current,
    Element? currentElement,
    CriteriaNotExistsBehavior? resultForDelete,
    Element? resultForDeleteElement,
    FhirBoolean? requireBoth,
    Element? requireBothElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionTopicQueryCriteria.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicQueryCriteria.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionTopicQueryCriteria.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionTopicQueryCriteria cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopicQueryCriteria.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicQueryCriteria.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionTopicEventTrigger] /// Event definition which can be used to trigger the SubscriptionTopic.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubscriptionTopicEventTrigger');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// The human readable description of an event to trigger a notification for
  /// the SubscriptionTopic - for example, "Patient Admission, as defined in
  /// HL7v2 via message ADT^A01". Multiple values are considered OR joined (e.g.,
  /// matching any single event listed).
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [event] /// A well-defined event which can be used to trigger notifications from the
  /// SubscriptionTopic.
  @JsonKey(name: 'event')
  final CodeableConcept event;

  /// [resource] /// URL of the Resource that is the focus type used in this event trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g., http://hl7.org/fhir/StructureDefinition).
  /// For example, "Patient" maps to
  /// http://hl7.org/fhir/StructureDefinition/Patient. For more information, see
  /// <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  @JsonKey(name: 'resource')
  final FHIRDefinedType resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;
  factory SubscriptionTopicEventTrigger.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicEventTriggerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionTopicEventTriggerToJson(this);

  @override
  SubscriptionTopicEventTrigger clone() => throw UnimplementedError();
  @override
  SubscriptionTopicEventTrigger copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    CodeableConcept? event,
    FHIRDefinedType? resource,
    Element? resourceElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionTopicEventTrigger.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopicEventTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionTopicEventTrigger.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionTopicEventTrigger cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopicEventTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicEventTrigger.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionTopicCanFilterBy] /// List of properties by which Subscriptions on the SubscriptionTopic can be
/// filtered. May be defined Search Parameters (e.g., Encounter.patient) or
/// parameters defined within this SubscriptionTopic context (e.g., hub.event).
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubscriptionTopicCanFilterBy');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of how this filtering parameter is intended to be used.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [resource] /// URL of the Resource that is the type used in this filter. This is the
  /// "focus" of the topic (or one of them if there are more than one). It will
  /// be the same, a generality, or a specificity of
  /// SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  @JsonKey(name: 'resource')
  final FHIRDefinedType? resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;

  /// [filterParameter] /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or topic-defined
  /// parameter (like "hub.event") which is a label for the filter.
  @JsonKey(name: 'filterParameter')
  final FhirString filterParameter;
  @JsonKey(name: '_filterParameter')
  final Element? filterParameterElement;

  /// [filterDefinition] /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or the
  /// officially-defined URI for a shared filter concept (like
  /// "http://example.org/concepts/shared-common-event").
  @JsonKey(name: 'filterDefinition')
  final FhirUri? filterDefinition;
  @JsonKey(name: '_filterDefinition')
  final Element? filterDefinitionElement;

  /// [modifier] /// Allowable operators to apply when determining matches (Search Modifiers).
  /// If the filterParameter is a SearchParameter, this list of modifiers SHALL
  /// be a strict subset of the modifiers defined on that SearchParameter.
  @JsonKey(name: 'modifier')
  final List<SubscriptionSearchModifier>? modifier;
  @JsonKey(name: '_modifier')
  final List<Element>? modifierElement;
  factory SubscriptionTopicCanFilterBy.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicCanFilterByFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionTopicCanFilterByToJson(this);

  @override
  SubscriptionTopicCanFilterBy clone() => throw UnimplementedError();
  @override
  SubscriptionTopicCanFilterBy copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    FHIRDefinedType? resource,
    Element? resourceElement,
    FhirString? filterParameter,
    Element? filterParameterElement,
    FhirUri? filterDefinition,
    Element? filterDefinitionElement,
    List<SubscriptionSearchModifier>? modifier,
    List<Element>? modifierElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionTopicCanFilterBy.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopicCanFilterBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionTopicCanFilterBy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionTopicCanFilterBy cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopicCanFilterBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicCanFilterBy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubscriptionTopicNotificationShape] /// List of properties to describe the shape (e.g., resources) included in
/// notifications from this Subscription Topic.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubscriptionTopicNotificationShape');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [resource] /// URL of the Resource that is the type used in this shape. This is the
  /// "focus" of the topic (or one of them if there are more than one) and the
  /// root resource for this shape definition. It will be the same, a generality,
  /// or a specificity of SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  @JsonKey(name: 'resource')
  final FHIRDefinedType resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;

  /// [include] /// Search-style _include directives, rooted in the resource for this shape.
  /// Servers SHOULD include resources listed here, if they exist and the user is
  /// authorized to receive them. Clients SHOULD be prepared to receive these
  /// additional resources, but SHALL function properly without them.
  @JsonKey(name: 'include')
  final List<FhirString>? include;
  @JsonKey(name: '_include')
  final List<Element>? includeElement;

  /// [revInclude] /// Search-style _revinclude directives, rooted in the resource for this shape.
  /// Servers SHOULD include resources listed here, if they exist and the user is
  /// authorized to receive them. Clients SHOULD be prepared to receive these
  /// additional resources, but SHALL function properly without them.
  @JsonKey(name: 'revInclude')
  final List<FhirString>? revInclude;
  @JsonKey(name: '_revInclude')
  final List<Element>? revIncludeElement;
  factory SubscriptionTopicNotificationShape.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionTopicNotificationShapeFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionTopicNotificationShapeToJson(this);

  @override
  SubscriptionTopicNotificationShape clone() => throw UnimplementedError();
  @override
  SubscriptionTopicNotificationShape copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FHIRDefinedType? resource,
    Element? resourceElement,
    List<FhirString>? include,
    List<Element>? includeElement,
    List<FhirString>? revInclude,
    List<Element>? revIncludeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubscriptionTopicNotificationShape.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicNotificationShape.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubscriptionTopicNotificationShape.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubscriptionTopicNotificationShape cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopicNotificationShape.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicNotificationShape.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
