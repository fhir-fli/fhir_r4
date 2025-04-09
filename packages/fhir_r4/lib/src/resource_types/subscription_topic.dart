import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'subscription_topic.g.dart';

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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'derivedFrom',
        FhirCanonical.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      resourceTrigger: (json['resourceTrigger'] as List<dynamic>?)
          ?.map<SubscriptionTopicResourceTrigger>(
            (v) => SubscriptionTopicResourceTrigger.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      eventTrigger: (json['eventTrigger'] as List<dynamic>?)
          ?.map<SubscriptionTopicEventTrigger>(
            (v) => SubscriptionTopicEventTrigger.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      canFilterBy: (json['canFilterBy'] as List<dynamic>?)
          ?.map<SubscriptionTopicCanFilterBy>(
            (v) => SubscriptionTopicCanFilterBy.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      notificationShape: (json['notificationShape'] as List<dynamic>?)
          ?.map<SubscriptionTopicNotificationShape>(
            (v) => SubscriptionTopicNotificationShape.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return SubscriptionTopic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    addField(
      'title',
      title,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'resourceTrigger',
      resourceTrigger,
    );
    addField(
      'eventTrigger',
      eventTrigger,
    );
    addField(
      'canFilterBy',
      canFilterBy,
    );
    addField(
      'notificationShape',
      notificationShape,
    );
    return json;
  }

  @override
  SubscriptionTopic clone() => copyWith();

  /// Copy function for [SubscriptionTopic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionTopicCopyWith<SubscriptionTopic> get copyWith =>
      _$SubscriptionTopicCopyWithImpl<SubscriptionTopic>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionTopic) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionTopicResourceTrigger>(
      resourceTrigger,
      o.resourceTrigger,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionTopicEventTrigger>(
      eventTrigger,
      o.eventTrigger,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionTopicCanFilterBy>(
      canFilterBy,
      o.canFilterBy,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionTopicNotificationShape>(
      notificationShape,
      o.notificationShape,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicResourceTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicResourceTrigger(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
      )!,
      supportedInteraction: JsonParser.parsePrimitiveList<InteractionTrigger>(
        json,
        'supportedInteraction',
        InteractionTrigger.fromJson,
      ),
      queryCriteria: JsonParser.parseObject<SubscriptionTopicQueryCriteria>(
        json,
        'queryCriteria',
        SubscriptionTopicQueryCriteria.fromJson,
      ),
      fhirPathCriteria: JsonParser.parsePrimitive<FhirString>(
        json,
        'fhirPathCriteria',
        FhirString.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return SubscriptionTopicResourceTrigger.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'description',
      description,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'supportedInteraction',
      supportedInteraction,
    );
    addField(
      'queryCriteria',
      queryCriteria,
    );
    addField(
      'fhirPathCriteria',
      fhirPathCriteria,
    );
    return json;
  }

  @override
  SubscriptionTopicResourceTrigger clone() => copyWith();

  /// Copy function for [SubscriptionTopicResourceTrigger]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionTopicResourceTriggerCopyWith<SubscriptionTopicResourceTrigger>
      get copyWith => _$SubscriptionTopicResourceTriggerCopyWithImpl<
              SubscriptionTopicResourceTrigger>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionTopicResourceTrigger) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!listEquals<InteractionTrigger>(
      supportedInteraction,
      o.supportedInteraction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      queryCriteria,
      o.queryCriteria,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fhirPathCriteria,
      o.fhirPathCriteria,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicQueryCriteria.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicQueryCriteria(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      previous: JsonParser.parsePrimitive<FhirString>(
        json,
        'previous',
        FhirString.fromJson,
      ),
      resultForCreate: JsonParser.parsePrimitive<CriteriaNotExistsBehavior>(
        json,
        'resultForCreate',
        CriteriaNotExistsBehavior.fromJson,
      ),
      current: JsonParser.parsePrimitive<FhirString>(
        json,
        'current',
        FhirString.fromJson,
      ),
      resultForDelete: JsonParser.parsePrimitive<CriteriaNotExistsBehavior>(
        json,
        'resultForDelete',
        CriteriaNotExistsBehavior.fromJson,
      ),
      requireBoth: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'requireBoth',
        FhirBoolean.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return SubscriptionTopicQueryCriteria.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'previous',
      previous,
    );
    addField(
      'resultForCreate',
      resultForCreate,
    );
    addField(
      'current',
      current,
    );
    addField(
      'resultForDelete',
      resultForDelete,
    );
    addField(
      'requireBoth',
      requireBoth,
    );
    return json;
  }

  @override
  SubscriptionTopicQueryCriteria clone() => copyWith();

  /// Copy function for [SubscriptionTopicQueryCriteria]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionTopicQueryCriteriaCopyWith<SubscriptionTopicQueryCriteria>
      get copyWith => _$SubscriptionTopicQueryCriteriaCopyWithImpl<
              SubscriptionTopicQueryCriteria>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionTopicQueryCriteria) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      previous,
      o.previous,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resultForCreate,
      o.resultForCreate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      current,
      o.current,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resultForDelete,
      o.resultForDelete,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requireBoth,
      o.requireBoth,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicEventTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicEventTrigger(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      event: JsonParser.parseObject<CodeableConcept>(
        json,
        'event',
        CodeableConcept.fromJson,
      )!,
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
      )!,
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
    if (json is Map<String, dynamic>) {
      return SubscriptionTopicEventTrigger.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'description',
      description,
    );
    addField(
      'event',
      event,
    );
    addField(
      'resource',
      resource,
    );
    return json;
  }

  @override
  SubscriptionTopicEventTrigger clone() => copyWith();

  /// Copy function for [SubscriptionTopicEventTrigger]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionTopicEventTriggerCopyWith<SubscriptionTopicEventTrigger>
      get copyWith => _$SubscriptionTopicEventTriggerCopyWithImpl<
              SubscriptionTopicEventTrigger>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionTopicEventTrigger) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      event,
      o.event,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicCanFilterBy.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicCanFilterBy(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
      ),
      filterParameter: JsonParser.parsePrimitive<FhirString>(
        json,
        'filterParameter',
        FhirString.fromJson,
      )!,
      filterDefinition: JsonParser.parsePrimitive<FhirUri>(
        json,
        'filterDefinition',
        FhirUri.fromJson,
      ),
      modifier: JsonParser.parsePrimitiveList<SubscriptionSearchModifier>(
        json,
        'modifier',
        SubscriptionSearchModifier.fromJson,
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
    if (json is Map<String, dynamic>) {
      return SubscriptionTopicCanFilterBy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'description',
      description,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'filterParameter',
      filterParameter,
    );
    addField(
      'filterDefinition',
      filterDefinition,
    );
    addField(
      'modifier',
      modifier,
    );
    return json;
  }

  @override
  SubscriptionTopicCanFilterBy clone() => copyWith();

  /// Copy function for [SubscriptionTopicCanFilterBy]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionTopicCanFilterByCopyWith<SubscriptionTopicCanFilterBy>
      get copyWith => _$SubscriptionTopicCanFilterByCopyWithImpl<
              SubscriptionTopicCanFilterBy>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionTopicCanFilterBy) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      filterParameter,
      o.filterParameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      filterDefinition,
      o.filterDefinition,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionSearchModifier>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicNotificationShape.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionTopicNotificationShape(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
      )!,
      include: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'include',
        FhirString.fromJson,
      ),
      revInclude: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'revInclude',
        FhirString.fromJson,
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
    if (json is Map<String, dynamic>) {
      return SubscriptionTopicNotificationShape.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'include',
      include,
    );
    addField(
      'revInclude',
      revInclude,
    );
    return json;
  }

  @override
  SubscriptionTopicNotificationShape clone() => copyWith();

  /// Copy function for [SubscriptionTopicNotificationShape]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionTopicNotificationShapeCopyWith<
          SubscriptionTopicNotificationShape>
      get copyWith => _$SubscriptionTopicNotificationShapeCopyWithImpl<
              SubscriptionTopicNotificationShape>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionTopicNotificationShape) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      include,
      o.include,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      revInclude,
      o.revInclude,
    )) {
      return false;
    }
    return true;
  }
}
