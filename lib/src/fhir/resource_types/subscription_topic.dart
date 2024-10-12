import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SubscriptionTopic]
/// Describes a stream of resource state changes or events and annotated
/// with labels useful to filter projections from this topic.
class SubscriptionTopic extends DomainResource {
  /// Primary constructor for [SubscriptionTopic]

  SubscriptionTopic({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,

    /// Extensions for [url]
    this.urlElement,
    this.identifier,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    this.title,

    /// Extensions for [title]
    this.titleElement,
    this.derivedFrom,

    /// Extensions for [derivedFrom]
    this.derivedFromElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.experimental,

    /// Extensions for [experimental]
    this.experimentalElement,
    this.date,

    /// Extensions for [date]
    this.dateElement,
    this.publisher,

    /// Extensions for [publisher]
    this.publisherElement,
    this.contact,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,

    /// Extensions for [purpose]
    this.purposeElement,
    this.copyright,

    /// Extensions for [copyright]
    this.copyrightElement,
    this.approvalDate,

    /// Extensions for [approvalDate]
    this.approvalDateElement,
    this.lastReviewDate,

    /// Extensions for [lastReviewDate]
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
  }) : super(
          resourceType: R4ResourceType.SubscriptionTopic,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopic.fromJson(Map<String, dynamic> json) {
    return SubscriptionTopic(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: FhirUri.fromJson(json['url']),
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(
              json['_title'] as Map<String, dynamic>,
            )
          : null,
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      derivedFromElement: json['_derivedFrom'] != null
          ? (json['_derivedFrom'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(
              json['_experimental'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(
              json['_publisher'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (dynamic v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(
              json['_purpose'] as Map<String, dynamic>,
            )
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(
              json['_copyright'] as Map<String, dynamic>,
            )
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson(json['approvalDate'])
          : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(
              json['_approvalDate'] as Map<String, dynamic>,
            )
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(
              json['_lastReviewDate'] as Map<String, dynamic>,
            )
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      resourceTrigger: json['resourceTrigger'] != null
          ? (json['resourceTrigger'] as List<dynamic>)
              .map<SubscriptionTopicResourceTrigger>(
                (dynamic v) => SubscriptionTopicResourceTrigger.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eventTrigger: json['eventTrigger'] != null
          ? (json['eventTrigger'] as List<dynamic>)
              .map<SubscriptionTopicEventTrigger>(
                (dynamic v) => SubscriptionTopicEventTrigger.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      canFilterBy: json['canFilterBy'] != null
          ? (json['canFilterBy'] as List<dynamic>)
              .map<SubscriptionTopicCanFilterBy>(
                (dynamic v) => SubscriptionTopicCanFilterBy.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      notificationShape: json['notificationShape'] != null
          ? (json['notificationShape'] as List<dynamic>)
              .map<SubscriptionTopicNotificationShape>(
                (dynamic v) => SubscriptionTopicNotificationShape.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionTopic] from a [String] or [YamlMap] object
  factory SubscriptionTopic.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionTopic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionTopic cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionTopic] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionTopic';

  /// [url]
  /// An absolute URI that is used to identify this subscription topic when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this subscription topic is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// subscription topic is stored on different servers.
  final FhirUri url;

  /// Extensions for [url]
  final Element? urlElement;

  /// [identifier]
  /// Business identifiers assigned to this subscription topic by the
  /// performer and/or other systems. These identifiers remain constant as
  /// the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the
  /// subscription topic when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the Topic
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions are orderable.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;

  /// [title]
  /// A short, descriptive, user-friendly title for the SubscriptionTopic,
  /// for example, "admission".
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [derivedFrom]
  /// The canonical URL pointing to another FHIR-defined SubscriptionTopic
  /// that is adhered to in whole or in part by this SubscriptionTopic.
  final List<FhirCanonical>? derivedFrom;

  /// Extensions for [derivedFrom]
  final List<Element>? derivedFromElement;

  /// [status]
  /// The current state of the SubscriptionTopic.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [experimental]
  /// A flag to indicate that this TopSubscriptionTopicic is authored for
  /// testing purposes (or education/evaluation/marketing), and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// Extensions for [experimental]
  final Element? experimentalElement;

  /// [date]
  /// For draft definitions, indicates the date of initial creation. For
  /// active definitions, represents the date of activation. For withdrawn
  /// definitions, indicates the date of withdrawal.
  final FhirDateTime? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// Helps establish the "authority/credibility" of the SubscriptionTopic.
  /// May also allow for contact.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the Topic from the
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These terms may be used to assist with
  /// indexing and searching of code system definitions.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A jurisdiction in which the Topic is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explains why this Topic is needed and why it has been designed as it
  /// has.
  final FhirMarkdown? purpose;

  /// Extensions for [purpose]
  final Element? purposeElement;

  /// [copyright]
  /// A copyright statement relating to the SubscriptionTopic and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the SubscriptionTopic.
  final FhirMarkdown? copyright;

  /// Extensions for [copyright]
  final Element? copyrightElement;

  /// [approvalDate]
  /// The date on which the asset content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// Extensions for [approvalDate]
  final Element? approvalDateElement;

  /// [lastReviewDate]
  /// The date on which the asset content was last reviewed. Review happens
  /// periodically after that, but doesn't change the original approval date.
  final FhirDate? lastReviewDate;

  /// Extensions for [lastReviewDate]
  final Element? lastReviewDateElement;

  /// [effectivePeriod]
  /// The period during which the SubscriptionTopic content was or is planned
  /// to be effective.
  final Period? effectivePeriod;

  /// [resourceTrigger]
  /// A definition of a resource-based event that triggers a notification
  /// based on the SubscriptionTopic. The criteria may be just a human
  /// readable description and/or a full FHIR search string or FHIRPath
  /// expression. Multiple triggers are considered OR joined (e.g., a
  /// resource update matching ANY of the definitions will trigger a
  /// notification).
  final List<SubscriptionTopicResourceTrigger>? resourceTrigger;

  /// [eventTrigger]
  /// Event definition which can be used to trigger the SubscriptionTopic.
  final List<SubscriptionTopicEventTrigger>? eventTrigger;

  /// [canFilterBy]
  /// List of properties by which Subscriptions on the SubscriptionTopic can
  /// be filtered. May be defined Search Parameters (e.g., Encounter.patient)
  /// or parameters defined within this SubscriptionTopic context (e.g.,
  /// hub.event).
  final List<SubscriptionTopicCanFilterBy>? canFilterBy;

  /// [notificationShape]
  /// List of properties to describe the shape (e.g., resources) included in
  /// notifications from this Subscription Topic.
  final List<SubscriptionTopicNotificationShape>? notificationShape;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['url'] = url.toJson();
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] =
          derivedFrom!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (derivedFromElement != null && derivedFromElement!.isNotEmpty) {
      json['_derivedFrom'] =
          derivedFromElement!.map((Element v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.toJson();
    }
    if (approvalDateElement != null) {
      json['_approvalDate'] = approvalDateElement!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.toJson();
    }
    if (lastReviewDateElement != null) {
      json['_lastReviewDate'] = lastReviewDateElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (resourceTrigger != null && resourceTrigger!.isNotEmpty) {
      json['resourceTrigger'] = resourceTrigger!
          .map((SubscriptionTopicResourceTrigger v) => v.toJson())
          .toList();
    }
    if (eventTrigger != null && eventTrigger!.isNotEmpty) {
      json['eventTrigger'] = eventTrigger!
          .map((SubscriptionTopicEventTrigger v) => v.toJson())
          .toList();
    }
    if (canFilterBy != null && canFilterBy!.isNotEmpty) {
      json['canFilterBy'] = canFilterBy!
          .map((SubscriptionTopicCanFilterBy v) => v.toJson())
          .toList();
    }
    if (notificationShape != null && notificationShape!.isNotEmpty) {
      json['notificationShape'] = notificationShape!
          .map((SubscriptionTopicNotificationShape v) => v.toJson())
          .toList();
    }
    return json;
  }

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
}

/// [SubscriptionTopicResourceTrigger]
/// A definition of a resource-based event that triggers a notification
/// based on the SubscriptionTopic. The criteria may be just a human
/// readable description and/or a full FHIR search string or FHIRPath
/// expression. Multiple triggers are considered OR joined (e.g., a
/// resource update matching ANY of the definitions will trigger a
/// notification).
class SubscriptionTopicResourceTrigger extends BackboneElement {
  /// Primary constructor for [SubscriptionTopicResourceTrigger]

  SubscriptionTopicResourceTrigger({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    required this.resource,

    /// Extensions for [resource]
    this.resourceElement,
    this.supportedInteraction,

    /// Extensions for [supportedInteraction]
    this.supportedInteractionElement,
    this.queryCriteria,
    this.fhirPathCriteria,

    /// Extensions for [fhirPathCriteria]
    this.fhirPathCriteriaElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicResourceTrigger.fromJson(Map<String, dynamic> json) {
    return SubscriptionTopicResourceTrigger(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      resource: FHIRDefinedType.fromJson(json['resource']),
      resourceElement: json['_resource'] != null
          ? Element.fromJson(
              json['_resource'] as Map<String, dynamic>,
            )
          : null,
      supportedInteraction: json['supportedInteraction'] != null
          ? (json['supportedInteraction'] as List<dynamic>)
              .map<InteractionTrigger>(
                (dynamic v) => InteractionTrigger.fromJson(v as dynamic),
              )
              .toList()
          : null,
      supportedInteractionElement: json['_supportedInteraction'] != null
          ? (json['_supportedInteraction'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      queryCriteria: json['queryCriteria'] != null
          ? SubscriptionTopicQueryCriteria.fromJson(
              json['queryCriteria'] as Map<String, dynamic>,
            )
          : null,
      fhirPathCriteria: json['fhirPathCriteria'] != null
          ? FhirString.fromJson(json['fhirPathCriteria'])
          : null,
      fhirPathCriteriaElement: json['_fhirPathCriteria'] != null
          ? Element.fromJson(
              json['_fhirPathCriteria'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicResourceTrigger] from a [String] or [YamlMap] object
  factory SubscriptionTopicResourceTrigger.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicResourceTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionTopicResourceTrigger.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionTopicResourceTrigger cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionTopicResourceTrigger] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicResourceTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicResourceTrigger.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionTopicResourceTrigger';

  /// [description]
  /// The human readable description of this resource trigger for the
  /// SubscriptionTopic - for example, "An Encounter enters the 'in-progress'
  /// state".
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [resource]
  /// URL of the Resource that is the type used in this resource trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g.,
  /// http://hl7.org/fhir/StructureDefinition). For example, "Patient" maps
  /// to http://hl7.org/fhir/StructureDefinition/Patient. For more
  /// information, see <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  final FHIRDefinedType resource;

  /// Extensions for [resource]
  final Element? resourceElement;

  /// [supportedInteraction]
  /// The FHIR RESTful interaction which can be used to trigger a
  /// notification for the SubscriptionTopic. Multiple values are considered
  /// OR joined (e.g., CREATE or UPDATE).
  final List<InteractionTrigger>? supportedInteraction;

  /// Extensions for [supportedInteraction]
  final List<Element>? supportedInteractionElement;

  /// [queryCriteria]
  /// The FHIR query based rules that the server should use to determine when
  /// to trigger a notification for this subscription topic.
  final SubscriptionTopicQueryCriteria? queryCriteria;

  /// [fhirPathCriteria]
  /// The FHIRPath based rules that the server should use to determine when
  /// to trigger a notification for this topic.
  final FhirString? fhirPathCriteria;

  /// Extensions for [fhirPathCriteria]
  final Element? fhirPathCriteriaElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['resource'] = resource.toJson();
    if (supportedInteraction != null && supportedInteraction!.isNotEmpty) {
      json['supportedInteraction'] = supportedInteraction!
          .map((InteractionTrigger v) => v.toJson())
          .toList();
    }
    if (queryCriteria != null) {
      json['queryCriteria'] = queryCriteria!.toJson();
    }
    if (fhirPathCriteria?.value != null) {
      json['fhirPathCriteria'] = fhirPathCriteria!.toJson();
    }
    if (fhirPathCriteriaElement != null) {
      json['_fhirPathCriteria'] = fhirPathCriteriaElement!.toJson();
    }
    return json;
  }

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
}

/// [SubscriptionTopicQueryCriteria]
/// The FHIR query based rules that the server should use to determine when
/// to trigger a notification for this subscription topic.
class SubscriptionTopicQueryCriteria extends BackboneElement {
  /// Primary constructor for [SubscriptionTopicQueryCriteria]

  SubscriptionTopicQueryCriteria({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.previous,

    /// Extensions for [previous]
    this.previousElement,
    this.resultForCreate,

    /// Extensions for [resultForCreate]
    this.resultForCreateElement,
    this.current,

    /// Extensions for [current]
    this.currentElement,
    this.resultForDelete,

    /// Extensions for [resultForDelete]
    this.resultForDeleteElement,
    this.requireBoth,

    /// Extensions for [requireBoth]
    this.requireBothElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicQueryCriteria.fromJson(Map<String, dynamic> json) {
    return SubscriptionTopicQueryCriteria(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      previous: json['previous'] != null
          ? FhirString.fromJson(json['previous'])
          : null,
      previousElement: json['_previous'] != null
          ? Element.fromJson(
              json['_previous'] as Map<String, dynamic>,
            )
          : null,
      resultForCreate: json['resultForCreate'] != null
          ? CriteriaNotExistsBehavior.fromJson(json['resultForCreate'])
          : null,
      resultForCreateElement: json['_resultForCreate'] != null
          ? Element.fromJson(
              json['_resultForCreate'] as Map<String, dynamic>,
            )
          : null,
      current:
          json['current'] != null ? FhirString.fromJson(json['current']) : null,
      currentElement: json['_current'] != null
          ? Element.fromJson(
              json['_current'] as Map<String, dynamic>,
            )
          : null,
      resultForDelete: json['resultForDelete'] != null
          ? CriteriaNotExistsBehavior.fromJson(json['resultForDelete'])
          : null,
      resultForDeleteElement: json['_resultForDelete'] != null
          ? Element.fromJson(
              json['_resultForDelete'] as Map<String, dynamic>,
            )
          : null,
      requireBoth: json['requireBoth'] != null
          ? FhirBoolean.fromJson(json['requireBoth'])
          : null,
      requireBothElement: json['_requireBoth'] != null
          ? Element.fromJson(
              json['_requireBoth'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicQueryCriteria] from a [String] or [YamlMap] object
  factory SubscriptionTopicQueryCriteria.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicQueryCriteria.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionTopicQueryCriteria.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionTopicQueryCriteria cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionTopicQueryCriteria] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicQueryCriteria.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicQueryCriteria.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionTopicQueryCriteria';

  /// [previous]
  /// The FHIR query based rules are applied to the previous resource state
  /// (e.g., state before an update).
  final FhirString? previous;

  /// Extensions for [previous]
  final Element? previousElement;

  /// [resultForCreate]
  /// For "create" interactions, should the "previous" criteria count as an
  /// automatic pass or an automatic fail.
  final CriteriaNotExistsBehavior? resultForCreate;

  /// Extensions for [resultForCreate]
  final Element? resultForCreateElement;

  /// [current]
  /// The FHIR query based rules are applied to the current resource state
  /// (e.g., state after an update).
  final FhirString? current;

  /// Extensions for [current]
  final Element? currentElement;

  /// [resultForDelete]
  /// For "delete" interactions, should the "current" criteria count as an
  /// automatic pass or an automatic fail.
  final CriteriaNotExistsBehavior? resultForDelete;

  /// Extensions for [resultForDelete]
  final Element? resultForDeleteElement;

  /// [requireBoth]
  /// If set to true, both current and previous criteria must evaluate true
  /// to trigger a notification for this topic. Otherwise a notification for
  /// this topic will be triggered if either one evaluates to true.
  final FhirBoolean? requireBoth;

  /// Extensions for [requireBoth]
  final Element? requireBothElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (previous?.value != null) {
      json['previous'] = previous!.toJson();
    }
    if (previousElement != null) {
      json['_previous'] = previousElement!.toJson();
    }
    if (resultForCreate != null) {
      json['resultForCreate'] = resultForCreate!.toJson();
    }
    if (current?.value != null) {
      json['current'] = current!.toJson();
    }
    if (currentElement != null) {
      json['_current'] = currentElement!.toJson();
    }
    if (resultForDelete != null) {
      json['resultForDelete'] = resultForDelete!.toJson();
    }
    if (requireBoth?.value != null) {
      json['requireBoth'] = requireBoth!.toJson();
    }
    if (requireBothElement != null) {
      json['_requireBoth'] = requireBothElement!.toJson();
    }
    return json;
  }

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
}

/// [SubscriptionTopicEventTrigger]
/// Event definition which can be used to trigger the SubscriptionTopic.
class SubscriptionTopicEventTrigger extends BackboneElement {
  /// Primary constructor for [SubscriptionTopicEventTrigger]

  SubscriptionTopicEventTrigger({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    required this.event,
    required this.resource,

    /// Extensions for [resource]
    this.resourceElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicEventTrigger.fromJson(Map<String, dynamic> json) {
    return SubscriptionTopicEventTrigger(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      event: CodeableConcept.fromJson(
        json['event'] as Map<String, dynamic>,
      ),
      resource: FHIRDefinedType.fromJson(json['resource']),
      resourceElement: json['_resource'] != null
          ? Element.fromJson(
              json['_resource'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicEventTrigger] from a [String] or [YamlMap] object
  factory SubscriptionTopicEventTrigger.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopicEventTrigger.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionTopicEventTrigger.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionTopicEventTrigger cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionTopicEventTrigger] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicEventTrigger.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicEventTrigger.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionTopicEventTrigger';

  /// [description]
  /// The human readable description of an event to trigger a notification
  /// for the SubscriptionTopic - for example, "Patient Admission, as defined
  /// in HL7v2 via message ADT^A01". Multiple values are considered OR joined
  /// (e.g., matching any single event listed).
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [event]
  /// A well-defined event which can be used to trigger notifications from
  /// the SubscriptionTopic.
  final CodeableConcept event;

  /// [resource]
  /// URL of the Resource that is the focus type used in this event trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g.,
  /// http://hl7.org/fhir/StructureDefinition). For example, "Patient" maps
  /// to http://hl7.org/fhir/StructureDefinition/Patient. For more
  /// information, see <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  final FHIRDefinedType resource;

  /// Extensions for [resource]
  final Element? resourceElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['event'] = event.toJson();
    json['resource'] = resource.toJson();
    return json;
  }

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
}

/// [SubscriptionTopicCanFilterBy]
/// List of properties by which Subscriptions on the SubscriptionTopic can
/// be filtered. May be defined Search Parameters (e.g., Encounter.patient)
/// or parameters defined within this SubscriptionTopic context (e.g.,
/// hub.event).
class SubscriptionTopicCanFilterBy extends BackboneElement {
  /// Primary constructor for [SubscriptionTopicCanFilterBy]

  SubscriptionTopicCanFilterBy({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.resource,

    /// Extensions for [resource]
    this.resourceElement,
    required this.filterParameter,

    /// Extensions for [filterParameter]
    this.filterParameterElement,
    this.filterDefinition,

    /// Extensions for [filterDefinition]
    this.filterDefinitionElement,
    this.modifier,

    /// Extensions for [modifier]
    this.modifierElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicCanFilterBy.fromJson(Map<String, dynamic> json) {
    return SubscriptionTopicCanFilterBy(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      resource: json['resource'] != null
          ? FHIRDefinedType.fromJson(json['resource'])
          : null,
      resourceElement: json['_resource'] != null
          ? Element.fromJson(
              json['_resource'] as Map<String, dynamic>,
            )
          : null,
      filterParameter: FhirString.fromJson(json['filterParameter']),
      filterParameterElement: json['_filterParameter'] != null
          ? Element.fromJson(
              json['_filterParameter'] as Map<String, dynamic>,
            )
          : null,
      filterDefinition: json['filterDefinition'] != null
          ? FhirUri.fromJson(json['filterDefinition'])
          : null,
      filterDefinitionElement: json['_filterDefinition'] != null
          ? Element.fromJson(
              json['_filterDefinition'] as Map<String, dynamic>,
            )
          : null,
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<SubscriptionSearchModifier>(
                (dynamic v) =>
                    SubscriptionSearchModifier.fromJson(v as dynamic),
              )
              .toList()
          : null,
      modifierElement: json['_modifier'] != null
          ? (json['_modifier'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicCanFilterBy] from a [String] or [YamlMap] object
  factory SubscriptionTopicCanFilterBy.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopicCanFilterBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionTopicCanFilterBy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionTopicCanFilterBy cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionTopicCanFilterBy] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicCanFilterBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicCanFilterBy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionTopicCanFilterBy';

  /// [description]
  /// Description of how this filtering parameter is intended to be used.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [resource]
  /// URL of the Resource that is the type used in this filter. This is the
  /// "focus" of the topic (or one of them if there are more than one). It
  /// will be the same, a generality, or a specificity of
  /// SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  final FHIRDefinedType? resource;

  /// Extensions for [resource]
  final Element? resourceElement;

  /// [filterParameter]
  /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or
  /// topic-defined parameter (like "hub.event") which is a label for the
  /// filter.
  final FhirString filterParameter;

  /// Extensions for [filterParameter]
  final Element? filterParameterElement;

  /// [filterDefinition]
  /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or the
  /// officially-defined URI for a shared filter concept (like
  /// "http://example.org/concepts/shared-common-event").
  final FhirUri? filterDefinition;

  /// Extensions for [filterDefinition]
  final Element? filterDefinitionElement;

  /// [modifier]
  /// Allowable operators to apply when determining matches (Search
  /// Modifiers). If the filterParameter is a SearchParameter, this list of
  /// modifiers SHALL be a strict subset of the modifiers defined on that
  /// SearchParameter.
  final List<SubscriptionSearchModifier>? modifier;

  /// Extensions for [modifier]
  final List<Element>? modifierElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    json['filterParameter'] = filterParameter.toJson();
    if (filterParameterElement != null) {
      json['_filterParameter'] = filterParameterElement!.toJson();
    }
    if (filterDefinition?.value != null) {
      json['filterDefinition'] = filterDefinition!.toJson();
    }
    if (filterDefinitionElement != null) {
      json['_filterDefinition'] = filterDefinitionElement!.toJson();
    }
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map((SubscriptionSearchModifier v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [SubscriptionTopicNotificationShape]
/// List of properties to describe the shape (e.g., resources) included in
/// notifications from this Subscription Topic.
class SubscriptionTopicNotificationShape extends BackboneElement {
  /// Primary constructor for [SubscriptionTopicNotificationShape]

  SubscriptionTopicNotificationShape({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resource,

    /// Extensions for [resource]
    this.resourceElement,
    this.include,

    /// Extensions for [include]
    this.includeElement,
    this.revInclude,

    /// Extensions for [revInclude]
    this.revIncludeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicNotificationShape.fromJson(
      Map<String, dynamic> json) {
    return SubscriptionTopicNotificationShape(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      resource: FHIRDefinedType.fromJson(json['resource']),
      resourceElement: json['_resource'] != null
          ? Element.fromJson(
              json['_resource'] as Map<String, dynamic>,
            )
          : null,
      include: json['include'] != null
          ? (json['include'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      includeElement: json['_include'] != null
          ? (json['_include'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      revInclude: json['revInclude'] != null
          ? (json['revInclude'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      revIncludeElement: json['_revInclude'] != null
          ? (json['_revInclude'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicNotificationShape] from a [String] or [YamlMap] object
  factory SubscriptionTopicNotificationShape.fromYaml(dynamic yaml) => yaml
          is String
      ? SubscriptionTopicNotificationShape.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SubscriptionTopicNotificationShape.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SubscriptionTopicNotificationShape cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SubscriptionTopicNotificationShape] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicNotificationShape.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubscriptionTopicNotificationShape.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionTopicNotificationShape';

  /// [resource]
  /// URL of the Resource that is the type used in this shape. This is the
  /// "focus" of the topic (or one of them if there are more than one) and
  /// the root resource for this shape definition. It will be the same, a
  /// generality, or a specificity of
  /// SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  final FHIRDefinedType resource;

  /// Extensions for [resource]
  final Element? resourceElement;

  /// [include]
  /// Search-style _include directives, rooted in the resource for this
  /// shape. Servers SHOULD include resources listed here, if they exist and
  /// the user is authorized to receive them. Clients SHOULD be prepared to
  /// receive these additional resources, but SHALL function properly without
  /// them.
  final List<FhirString>? include;

  /// Extensions for [include]
  final List<Element>? includeElement;

  /// [revInclude]
  /// Search-style _revinclude directives, rooted in the resource for this
  /// shape. Servers SHOULD include resources listed here, if they exist and
  /// the user is authorized to receive them. Clients SHOULD be prepared to
  /// receive these additional resources, but SHALL function properly without
  /// them.
  final List<FhirString>? revInclude;

  /// Extensions for [revInclude]
  final List<Element>? revIncludeElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['resource'] = resource.toJson();
    if (include != null && include!.isNotEmpty) {
      json['include'] = include!.map((FhirString v) => v.toJson()).toList();
    }
    if (includeElement != null && includeElement!.isNotEmpty) {
      json['_include'] =
          includeElement!.map((Element v) => v.toJson()).toList();
    }
    if (revInclude != null && revInclude!.isNotEmpty) {
      json['revInclude'] =
          revInclude!.map((FhirString v) => v.toJson()).toList();
    }
    if (revIncludeElement != null && revIncludeElement!.isNotEmpty) {
      json['_revInclude'] =
          revIncludeElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

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
}
