import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SubscriptionTopic]
/// Describes a stream of resource state changes or events and annotated
/// with labels useful to filter projections from this topic.
class SubscriptionTopic extends CanonicalResource {
  /// Primary constructor for
  /// [SubscriptionTopic]

  const SubscriptionTopic({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required super.url,
    this.identifier,
    super.version,
    this.title,
    this.derivedFrom,
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.resourceTrigger,
    this.eventTrigger,
    this.canFilterBy,
    this.notificationShape,
  }) : super(
          resourceType: R4ResourceType.SubscriptionTopic,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopic.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopic(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      derivedFrom: parsePrimitiveList<FhirCanonical>(
        json['derivedFrom'] as List<dynamic>?,
        json['_derivedFrom'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental:
          (json['experimental'] != null || json['_experimental'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['experimental'],
                  '_value': json['_experimental'],
                })
              : null,
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: (json['publisher'] != null || json['_publisher'] != null)
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: (json['purpose'] != null || json['_purpose'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate:
          (json['approvalDate'] != null || json['_approvalDate'] != null)
              ? FhirDate.fromJson({
                  'value': json['approvalDate'],
                  '_value': json['_approvalDate'],
                })
              : null,
      lastReviewDate:
          (json['lastReviewDate'] != null || json['_lastReviewDate'] != null)
              ? FhirDate.fromJson({
                  'value': json['lastReviewDate'],
                  '_value': json['_lastReviewDate'],
                })
              : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      resourceTrigger: json['resourceTrigger'] != null
          ? (json['resourceTrigger'] as List<dynamic>)
              .map<SubscriptionTopicResourceTrigger>(
                (v) => SubscriptionTopicResourceTrigger.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eventTrigger: json['eventTrigger'] != null
          ? (json['eventTrigger'] as List<dynamic>)
              .map<SubscriptionTopicEventTrigger>(
                (v) => SubscriptionTopicEventTrigger.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      canFilterBy: json['canFilterBy'] != null
          ? (json['canFilterBy'] as List<dynamic>)
              .map<SubscriptionTopicCanFilterBy>(
                (v) => SubscriptionTopicCanFilterBy.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      notificationShape: json['notificationShape'] != null
          ? (json['notificationShape'] as List<dynamic>)
              .map<SubscriptionTopicNotificationShape>(
                (v) => SubscriptionTopicNotificationShape.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [SubscriptionTopic]
  /// from a [String] or [YamlMap] object
  factory SubscriptionTopic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionTopic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionTopic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionTopic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionTopic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopic.fromJsonString(
    String source,
  ) {
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

  /// [identifier]
  /// Business identifiers assigned to this subscription topic by the
  /// performer and/or other systems. These identifiers remain constant as
  /// the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [title]
  /// A short, descriptive, user-friendly title for the SubscriptionTopic,
  /// for example, "admission".
  final FhirString? title;

  /// [derivedFrom]
  /// The canonical URL pointing to another FHIR-defined SubscriptionTopic
  /// that is adhered to in whole or in part by this SubscriptionTopic.
  final List<FhirCanonical>? derivedFrom;

  /// [purpose]
  /// Explains why this Topic is needed and why it has been designed as it
  /// has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the SubscriptionTopic and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the SubscriptionTopic.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the asset content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the asset content was last reviewed. Review happens
  /// periodically after that, but doesn't change the original approval date.
  final FhirDate? lastReviewDate;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('url', url);
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (version != null) {
      addField('version', version);
    }

    if (title != null) {
      addField('title', title);
    }

    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      final fieldJson0 = derivedFrom!.map((e) => e.toJson()).toList();
      json['derivedFrom'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_derivedFrom'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('status', status);
    if (experimental != null) {
      addField('experimental', experimental);
    }

    if (date != null) {
      addField('date', date);
    }

    if (publisher != null) {
      addField('publisher', publisher);
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      addField('purpose', purpose);
    }

    if (copyright != null) {
      addField('copyright', copyright);
    }

    if (approvalDate != null) {
      addField('approvalDate', approvalDate);
    }

    if (lastReviewDate != null) {
      addField('lastReviewDate', lastReviewDate);
    }

    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }

    if (resourceTrigger != null && resourceTrigger!.isNotEmpty) {
      json['resourceTrigger'] =
          resourceTrigger!.map((e) => e.toJson()).toList();
    }

    if (eventTrigger != null && eventTrigger!.isNotEmpty) {
      json['eventTrigger'] = eventTrigger!.map((e) => e.toJson()).toList();
    }

    if (canFilterBy != null && canFilterBy!.isNotEmpty) {
      json['canFilterBy'] = canFilterBy!.map((e) => e.toJson()).toList();
    }

    if (notificationShape != null && notificationShape!.isNotEmpty) {
      json['notificationShape'] =
          notificationShape!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? title,
    List<FhirCanonical>? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<SubscriptionTopicResourceTrigger>? resourceTrigger,
    List<SubscriptionTopicEventTrigger>? eventTrigger,
    List<SubscriptionTopicCanFilterBy>? canFilterBy,
    List<SubscriptionTopicNotificationShape>? notificationShape,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubscriptionTopic(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      title: title ?? this.title,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      resourceTrigger: resourceTrigger ?? this.resourceTrigger,
      eventTrigger: eventTrigger ?? this.eventTrigger,
      canFilterBy: canFilterBy ?? this.canFilterBy,
      notificationShape: notificationShape ?? this.notificationShape,
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
  /// Primary constructor for
  /// [SubscriptionTopicResourceTrigger]

  const SubscriptionTopicResourceTrigger({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    required this.resource,
    this.supportedInteraction,
    this.queryCriteria,
    this.fhirPathCriteria,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicResourceTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicResourceTrigger(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      resource: FhirUri.fromJson({
        'value': json['resource'],
        '_value': json['_resource'],
      }),
      supportedInteraction: parsePrimitiveList<InteractionTrigger>(
        json['supportedInteraction'] as List<dynamic>?,
        json['_supportedInteraction'] as List<dynamic>?,
        fromJson: InteractionTrigger.fromJson,
      ),
      queryCriteria: json['queryCriteria'] != null
          ? SubscriptionTopicQueryCriteria.fromJson(
              json['queryCriteria'] as Map<String, dynamic>,
            )
          : null,
      fhirPathCriteria: (json['fhirPathCriteria'] != null ||
              json['_fhirPathCriteria'] != null)
          ? FhirString.fromJson({
              'value': json['fhirPathCriteria'],
              '_value': json['_fhirPathCriteria'],
            })
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicResourceTrigger]
  /// from a [String] or [YamlMap] object
  factory SubscriptionTopicResourceTrigger.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionTopicResourceTrigger.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionTopicResourceTrigger.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionTopicResourceTrigger '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionTopicResourceTrigger]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicResourceTrigger.fromJsonString(
    String source,
  ) {
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

  /// [resource]
  /// URL of the Resource that is the type used in this resource trigger.
  /// Relative URLs are relative to the StructureDefinition root of the
  /// implemented FHIR version (e.g.,
  /// http://hl7.org/fhir/StructureDefinition). For example, "Patient" maps
  /// to http://hl7.org/fhir/StructureDefinition/Patient. For more
  /// information, see <a
  /// href="elementdefinition-definitions.html#ElementDefinition.type.code">ElementDefinition.type.code</a>.
  final FhirUri resource;

  /// [supportedInteraction]
  /// The FHIR RESTful interaction which can be used to trigger a
  /// notification for the SubscriptionTopic. Multiple values are considered
  /// OR joined (e.g., CREATE or UPDATE).
  final List<InteractionTrigger>? supportedInteraction;

  /// [queryCriteria]
  /// The FHIR query based rules that the server should use to determine when
  /// to trigger a notification for this subscription topic.
  final SubscriptionTopicQueryCriteria? queryCriteria;

  /// [fhirPathCriteria]
  /// The FHIRPath based rules that the server should use to determine when
  /// to trigger a notification for this topic.
  final FhirString? fhirPathCriteria;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    addField('resource', resource);
    if (supportedInteraction != null && supportedInteraction!.isNotEmpty) {
      final fieldJson0 = supportedInteraction!.map((e) => e.toJson()).toList();
      json['supportedInteraction'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_supportedInteraction'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (queryCriteria != null) {
      json['queryCriteria'] = queryCriteria!.toJson();
    }

    if (fhirPathCriteria != null) {
      addField('fhirPathCriteria', fhirPathCriteria);
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
    FhirUri? resource,
    List<InteractionTrigger>? supportedInteraction,
    SubscriptionTopicQueryCriteria? queryCriteria,
    FhirString? fhirPathCriteria,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubscriptionTopicResourceTrigger(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      resource: resource ?? this.resource,
      supportedInteraction: supportedInteraction ?? this.supportedInteraction,
      queryCriteria: queryCriteria ?? this.queryCriteria,
      fhirPathCriteria: fhirPathCriteria ?? this.fhirPathCriteria,
    );
  }
}

/// [SubscriptionTopicQueryCriteria]
/// The FHIR query based rules that the server should use to determine when
/// to trigger a notification for this subscription topic.
class SubscriptionTopicQueryCriteria extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionTopicQueryCriteria]

  const SubscriptionTopicQueryCriteria({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.previous,
    this.resultForCreate,
    this.current,
    this.resultForDelete,
    this.requireBoth,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicQueryCriteria.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicQueryCriteria(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      previous: (json['previous'] != null || json['_previous'] != null)
          ? FhirString.fromJson({
              'value': json['previous'],
              '_value': json['_previous'],
            })
          : null,
      resultForCreate:
          (json['resultForCreate'] != null || json['_resultForCreate'] != null)
              ? CriteriaNotExistsBehavior.fromJson({
                  'value': json['resultForCreate'],
                  '_value': json['_resultForCreate'],
                })
              : null,
      current: (json['current'] != null || json['_current'] != null)
          ? FhirString.fromJson({
              'value': json['current'],
              '_value': json['_current'],
            })
          : null,
      resultForDelete:
          (json['resultForDelete'] != null || json['_resultForDelete'] != null)
              ? CriteriaNotExistsBehavior.fromJson({
                  'value': json['resultForDelete'],
                  '_value': json['_resultForDelete'],
                })
              : null,
      requireBoth: (json['requireBoth'] != null || json['_requireBoth'] != null)
          ? FhirBoolean.fromJson({
              'value': json['requireBoth'],
              '_value': json['_requireBoth'],
            })
          : null,
    );
  }

  /// Deserialize [SubscriptionTopicQueryCriteria]
  /// from a [String] or [YamlMap] object
  factory SubscriptionTopicQueryCriteria.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionTopicQueryCriteria.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionTopicQueryCriteria.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionTopicQueryCriteria '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionTopicQueryCriteria]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicQueryCriteria.fromJsonString(
    String source,
  ) {
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

  /// [resultForCreate]
  /// For "create" interactions, should the "previous" criteria count as an
  /// automatic pass or an automatic fail.
  final CriteriaNotExistsBehavior? resultForCreate;

  /// [current]
  /// The FHIR query based rules are applied to the current resource state
  /// (e.g., state after an update).
  final FhirString? current;

  /// [resultForDelete]
  /// For "delete" interactions, should the "current" criteria count as an
  /// automatic pass or an automatic fail.
  final CriteriaNotExistsBehavior? resultForDelete;

  /// [requireBoth]
  /// If set to true, both current and previous criteria must evaluate true
  /// to trigger a notification for this topic. Otherwise a notification for
  /// this topic will be triggered if either one evaluates to true.
  final FhirBoolean? requireBoth;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (previous != null) {
      addField('previous', previous);
    }

    if (resultForCreate != null) {
      addField('resultForCreate', resultForCreate);
    }

    if (current != null) {
      addField('current', current);
    }

    if (resultForDelete != null) {
      addField('resultForDelete', resultForDelete);
    }

    if (requireBoth != null) {
      addField('requireBoth', requireBoth);
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
    CriteriaNotExistsBehavior? resultForCreate,
    FhirString? current,
    CriteriaNotExistsBehavior? resultForDelete,
    FhirBoolean? requireBoth,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubscriptionTopicQueryCriteria(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      previous: previous ?? this.previous,
      resultForCreate: resultForCreate ?? this.resultForCreate,
      current: current ?? this.current,
      resultForDelete: resultForDelete ?? this.resultForDelete,
      requireBoth: requireBoth ?? this.requireBoth,
    );
  }
}

/// [SubscriptionTopicEventTrigger]
/// Event definition which can be used to trigger the SubscriptionTopic.
class SubscriptionTopicEventTrigger extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionTopicEventTrigger]

  const SubscriptionTopicEventTrigger({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    required this.event,
    required this.resource,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicEventTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicEventTrigger(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      event: CodeableConcept.fromJson(
        json['event'] as Map<String, dynamic>,
      ),
      resource: FhirUri.fromJson({
        'value': json['resource'],
        '_value': json['_resource'],
      }),
    );
  }

  /// Deserialize [SubscriptionTopicEventTrigger]
  /// from a [String] or [YamlMap] object
  factory SubscriptionTopicEventTrigger.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionTopicEventTrigger.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionTopicEventTrigger.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionTopicEventTrigger '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionTopicEventTrigger]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicEventTrigger.fromJsonString(
    String source,
  ) {
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
  final FhirUri resource;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    json['event'] = event.toJson();

    addField('resource', resource);
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
    CodeableConcept? event,
    FhirUri? resource,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubscriptionTopicEventTrigger(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      event: event ?? this.event,
      resource: resource ?? this.resource,
    );
  }
}

/// [SubscriptionTopicCanFilterBy]
/// List of properties by which Subscriptions on the SubscriptionTopic can
/// be filtered. May be defined Search Parameters (e.g., Encounter.patient)
/// or parameters defined within this SubscriptionTopic context (e.g.,
/// hub.event).
class SubscriptionTopicCanFilterBy extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionTopicCanFilterBy]

  const SubscriptionTopicCanFilterBy({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.resource,
    required this.filterParameter,
    this.filterDefinition,
    this.modifier,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicCanFilterBy.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicCanFilterBy(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      resource: (json['resource'] != null || json['_resource'] != null)
          ? FhirUri.fromJson({
              'value': json['resource'],
              '_value': json['_resource'],
            })
          : null,
      filterParameter: FhirString.fromJson({
        'value': json['filterParameter'],
        '_value': json['_filterParameter'],
      }),
      filterDefinition: (json['filterDefinition'] != null ||
              json['_filterDefinition'] != null)
          ? FhirUri.fromJson({
              'value': json['filterDefinition'],
              '_value': json['_filterDefinition'],
            })
          : null,
      modifier: parsePrimitiveList<SubscriptionSearchModifier>(
        json['modifier'] as List<dynamic>?,
        json['_modifier'] as List<dynamic>?,
        fromJson: SubscriptionSearchModifier.fromJson,
      ),
    );
  }

  /// Deserialize [SubscriptionTopicCanFilterBy]
  /// from a [String] or [YamlMap] object
  factory SubscriptionTopicCanFilterBy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionTopicCanFilterBy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionTopicCanFilterBy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionTopicCanFilterBy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionTopicCanFilterBy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicCanFilterBy.fromJsonString(
    String source,
  ) {
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

  /// [resource]
  /// URL of the Resource that is the type used in this filter. This is the
  /// "focus" of the topic (or one of them if there are more than one). It
  /// will be the same, a generality, or a specificity of
  /// SubscriptionTopic.resourceTrigger.resource or
  /// SubscriptionTopic.eventTrigger.resource when they are present.
  final FhirUri? resource;

  /// [filterParameter]
  /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or
  /// topic-defined parameter (like "hub.event") which is a label for the
  /// filter.
  final FhirString filterParameter;

  /// [filterDefinition]
  /// Either the canonical URL to a search parameter (like
  /// "http://hl7.org/fhir/SearchParameter/encounter-patient") or the
  /// officially-defined URI for a shared filter concept (like
  /// "http://example.org/concepts/shared-common-event").
  final FhirUri? filterDefinition;

  /// [modifier]
  /// Allowable operators to apply when determining matches (Search
  /// Modifiers). If the filterParameter is a SearchParameter, this list of
  /// modifiers SHALL be a strict subset of the modifiers defined on that
  /// SearchParameter.
  final List<SubscriptionSearchModifier>? modifier;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (resource != null) {
      addField('resource', resource);
    }

    addField('filterParameter', filterParameter);
    if (filterDefinition != null) {
      addField('filterDefinition', filterDefinition);
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson0 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson0.map((e) => e['_value']).toList();
      }
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
    FhirUri? resource,
    FhirString? filterParameter,
    FhirUri? filterDefinition,
    List<SubscriptionSearchModifier>? modifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubscriptionTopicCanFilterBy(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      resource: resource ?? this.resource,
      filterParameter: filterParameter ?? this.filterParameter,
      filterDefinition: filterDefinition ?? this.filterDefinition,
      modifier: modifier ?? this.modifier,
    );
  }
}

/// [SubscriptionTopicNotificationShape]
/// List of properties to describe the shape (e.g., resources) included in
/// notifications from this Subscription Topic.
class SubscriptionTopicNotificationShape extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionTopicNotificationShape]

  const SubscriptionTopicNotificationShape({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resource,
    this.include,
    this.revInclude,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicNotificationShape.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicNotificationShape(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      resource: FhirUri.fromJson({
        'value': json['resource'],
        '_value': json['_resource'],
      }),
      include: parsePrimitiveList<FhirString>(
        json['include'] as List<dynamic>?,
        json['_include'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      revInclude: parsePrimitiveList<FhirString>(
        json['revInclude'] as List<dynamic>?,
        json['_revInclude'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SubscriptionTopicNotificationShape]
  /// from a [String] or [YamlMap] object
  factory SubscriptionTopicNotificationShape.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionTopicNotificationShape.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionTopicNotificationShape.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionTopicNotificationShape '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionTopicNotificationShape]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionTopicNotificationShape.fromJsonString(
    String source,
  ) {
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
  final FhirUri resource;

  /// [include]
  /// Search-style _include directives, rooted in the resource for this
  /// shape. Servers SHOULD include resources listed here, if they exist and
  /// the user is authorized to receive them. Clients SHOULD be prepared to
  /// receive these additional resources, but SHALL function properly without
  /// them.
  final List<FhirString>? include;

  /// [revInclude]
  /// Search-style _revinclude directives, rooted in the resource for this
  /// shape. Servers SHOULD include resources listed here, if they exist and
  /// the user is authorized to receive them. Clients SHOULD be prepared to
  /// receive these additional resources, but SHALL function properly without
  /// them.
  final List<FhirString>? revInclude;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('resource', resource);
    if (include != null && include!.isNotEmpty) {
      final fieldJson0 = include!.map((e) => e.toJson()).toList();
      json['include'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_include'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (revInclude != null && revInclude!.isNotEmpty) {
      final fieldJson1 = revInclude!.map((e) => e.toJson()).toList();
      json['revInclude'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_revInclude'] = fieldJson1.map((e) => e['_value']).toList();
      }
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
    FhirUri? resource,
    List<FhirString>? include,
    List<FhirString>? revInclude,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubscriptionTopicNotificationShape(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resource: resource ?? this.resource,
      include: include ?? this.include,
      revInclude: revInclude ?? this.revInclude,
    );
  }
}
