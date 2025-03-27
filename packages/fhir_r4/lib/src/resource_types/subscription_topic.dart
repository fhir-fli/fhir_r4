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
          objectPath: 'SubscriptionTopic',
          resourceType: R4ResourceType.SubscriptionTopic,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubscriptionTopic.empty() => SubscriptionTopic(
        url: FhirUri.empty(),
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionTopic';
    return SubscriptionTopic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'derivedFrom',
        FhirCanonical.fromJson,
        '$objectPath.derivedFrom',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
        '$objectPath.effectivePeriod',
      ),
      resourceTrigger: (json['resourceTrigger'] as List<dynamic>?)
          ?.map<SubscriptionTopicResourceTrigger>(
            (v) => SubscriptionTopicResourceTrigger.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resourceTrigger',
              },
            ),
          )
          .toList(),
      eventTrigger: (json['eventTrigger'] as List<dynamic>?)
          ?.map<SubscriptionTopicEventTrigger>(
            (v) => SubscriptionTopicEventTrigger.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eventTrigger',
              },
            ),
          )
          .toList(),
      canFilterBy: (json['canFilterBy'] as List<dynamic>?)
          ?.map<SubscriptionTopicCanFilterBy>(
            (v) => SubscriptionTopicCanFilterBy.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.canFilterBy',
              },
            ),
          )
          .toList(),
      notificationShape: (json['notificationShape'] as List<dynamic>?)
          ?.map<SubscriptionTopicNotificationShape>(
            (v) => SubscriptionTopicNotificationShape.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notificationShape',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'url',
      'identifier',
      'version',
      'title',
      'derivedFrom',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'resourceTrigger',
      'eventTrigger',
      'canFilterBy',
      'notificationShape',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'resourceTrigger':
        if (resourceTrigger != null) {
          fields.addAll(resourceTrigger!);
        }
      case 'eventTrigger':
        if (eventTrigger != null) {
          fields.addAll(eventTrigger!);
        }
      case 'canFilterBy':
        if (canFilterBy != null) {
          fields.addAll(canFilterBy!);
        }
      case 'notificationShape':
        if (notificationShape != null) {
          fields.addAll(notificationShape!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'derivedFrom':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?derivedFrom, ...child];
            return copyWith(derivedFrom: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [...?derivedFrom, child];
            return copyWith(derivedFrom: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?contact, child];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [...?useContext, child];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?jurisdiction, ...child];
            return copyWith(jurisdiction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?jurisdiction, child];
            return copyWith(jurisdiction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDate) {
            return copyWith(approvalDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDate) {
            return copyWith(lastReviewDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectivePeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resourceTrigger':
        {
          if (child is List<SubscriptionTopicResourceTrigger>) {
            // Add all elements from passed list
            final newList = [...?resourceTrigger, ...child];
            return copyWith(resourceTrigger: newList);
          } else if (child is SubscriptionTopicResourceTrigger) {
            // Add single element to existing list or create new list
            final newList = [...?resourceTrigger, child];
            return copyWith(resourceTrigger: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventTrigger':
        {
          if (child is List<SubscriptionTopicEventTrigger>) {
            // Add all elements from passed list
            final newList = [...?eventTrigger, ...child];
            return copyWith(eventTrigger: newList);
          } else if (child is SubscriptionTopicEventTrigger) {
            // Add single element to existing list or create new list
            final newList = [...?eventTrigger, child];
            return copyWith(eventTrigger: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'canFilterBy':
        {
          if (child is List<SubscriptionTopicCanFilterBy>) {
            // Add all elements from passed list
            final newList = [...?canFilterBy, ...child];
            return copyWith(canFilterBy: newList);
          } else if (child is SubscriptionTopicCanFilterBy) {
            // Add single element to existing list or create new list
            final newList = [...?canFilterBy, child];
            return copyWith(canFilterBy: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'notificationShape':
        {
          if (child is List<SubscriptionTopicNotificationShape>) {
            // Add all elements from passed list
            final newList = [...?notificationShape, ...child];
            return copyWith(notificationShape: newList);
          } else if (child is SubscriptionTopicNotificationShape) {
            // Add single element to existing list or create new list
            final newList = [...?notificationShape, child];
            return copyWith(notificationShape: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'url':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'version':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'derivedFrom':
        return ['FhirCanonical'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'copyright':
        return ['FhirMarkdown'];
      case 'approvalDate':
        return ['FhirDate'];
      case 'lastReviewDate':
        return ['FhirDate'];
      case 'effectivePeriod':
        return ['Period'];
      case 'resourceTrigger':
        return ['SubscriptionTopicResourceTrigger'];
      case 'eventTrigger':
        return ['SubscriptionTopicEventTrigger'];
      case 'canFilterBy':
        return ['SubscriptionTopicCanFilterBy'];
      case 'notificationShape':
        return ['SubscriptionTopicNotificationShape'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionTopic]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SubscriptionTopic createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'derivedFrom':
        {
          return copyWith(
            derivedFrom: <FhirCanonical>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'experimental':
        {
          return copyWith(
            experimental: FhirBoolean.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: <CodeableConcept>[],
          );
        }
      case 'purpose':
        {
          return copyWith(
            purpose: FhirMarkdown.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'approvalDate':
        {
          return copyWith(
            approvalDate: FhirDate.empty(),
          );
        }
      case 'lastReviewDate':
        {
          return copyWith(
            lastReviewDate: FhirDate.empty(),
          );
        }
      case 'effectivePeriod':
        {
          return copyWith(
            effectivePeriod: Period.empty(),
          );
        }
      case 'resourceTrigger':
        {
          return copyWith(
            resourceTrigger: <SubscriptionTopicResourceTrigger>[],
          );
        }
      case 'eventTrigger':
        {
          return copyWith(
            eventTrigger: <SubscriptionTopicEventTrigger>[],
          );
        }
      case 'canFilterBy':
        {
          return copyWith(
            canFilterBy: <SubscriptionTopicCanFilterBy>[],
          );
        }
      case 'notificationShape':
        {
          return copyWith(
            notificationShape: <SubscriptionTopicNotificationShape>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SubscriptionTopic clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool version = false,
    bool title = false,
    bool derivedFrom = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool approvalDate = false,
    bool lastReviewDate = false,
    bool effectivePeriod = false,
    bool resourceTrigger = false,
    bool eventTrigger = false,
    bool canFilterBy = false,
    bool notificationShape = false,
  }) {
    return SubscriptionTopic(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      title: title ? null : this.title,
      derivedFrom: derivedFrom ? null : this.derivedFrom,
      status: status,
      experimental: experimental ? null : this.experimental,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      copyright: copyright ? null : this.copyright,
      approvalDate: approvalDate ? null : this.approvalDate,
      lastReviewDate: lastReviewDate ? null : this.lastReviewDate,
      effectivePeriod: effectivePeriod ? null : this.effectivePeriod,
      resourceTrigger: resourceTrigger ? null : this.resourceTrigger,
      eventTrigger: eventTrigger ? null : this.eventTrigger,
      canFilterBy: canFilterBy ? null : this.canFilterBy,
      notificationShape: notificationShape ? null : this.notificationShape,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SubscriptionTopic(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      derivedFrom: derivedFrom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.derivedFrom',
                ),
              )
              .toList() ??
          this.derivedFrom,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      approvalDate: approvalDate?.copyWith(
            objectPath: '$newObjectPath.approvalDate',
          ) ??
          this.approvalDate,
      lastReviewDate: lastReviewDate?.copyWith(
            objectPath: '$newObjectPath.lastReviewDate',
          ) ??
          this.lastReviewDate,
      effectivePeriod: effectivePeriod?.copyWith(
            objectPath: '$newObjectPath.effectivePeriod',
          ) ??
          this.effectivePeriod,
      resourceTrigger: resourceTrigger
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.resourceTrigger',
                ),
              )
              .toList() ??
          this.resourceTrigger,
      eventTrigger: eventTrigger
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.eventTrigger',
                ),
              )
              .toList() ??
          this.eventTrigger,
      canFilterBy: canFilterBy
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.canFilterBy',
                ),
              )
              .toList() ??
          this.canFilterBy,
      notificationShape: notificationShape
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.notificationShape',
                ),
              )
              .toList() ??
          this.notificationShape,
    );
  }

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
  }) : super(
          objectPath: 'SubscriptionTopic.resourceTrigger',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubscriptionTopicResourceTrigger.empty() =>
      SubscriptionTopicResourceTrigger(
        resource: FhirUri.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicResourceTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionTopic.resourceTrigger';
    return SubscriptionTopicResourceTrigger(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
        '$objectPath.resource',
      )!,
      supportedInteraction: JsonParser.parsePrimitiveList<InteractionTrigger>(
        json,
        'supportedInteraction',
        InteractionTrigger.fromJson,
        '$objectPath.supportedInteraction',
      ),
      queryCriteria: JsonParser.parseObject<SubscriptionTopicQueryCriteria>(
        json,
        'queryCriteria',
        SubscriptionTopicQueryCriteria.fromJson,
        '$objectPath.queryCriteria',
      ),
      fhirPathCriteria: JsonParser.parsePrimitive<FhirString>(
        json,
        'fhirPathCriteria',
        FhirString.fromJson,
        '$objectPath.fhirPathCriteria',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'resource',
      'supportedInteraction',
      'queryCriteria',
      'fhirPathCriteria',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'resource':
        fields.add(resource);
      case 'supportedInteraction':
        if (supportedInteraction != null) {
          fields.addAll(supportedInteraction!);
        }
      case 'queryCriteria':
        if (queryCriteria != null) {
          fields.add(queryCriteria!);
        }
      case 'fhirPathCriteria':
        if (fhirPathCriteria != null) {
          fields.add(fhirPathCriteria!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirUri) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportedInteraction':
        {
          if (child is List<InteractionTrigger>) {
            // Add all elements from passed list
            final newList = [...?supportedInteraction, ...child];
            return copyWith(supportedInteraction: newList);
          } else if (child is InteractionTrigger) {
            // Add single element to existing list or create new list
            final newList = [...?supportedInteraction, child];
            return copyWith(supportedInteraction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'queryCriteria':
        {
          if (child is SubscriptionTopicQueryCriteria) {
            return copyWith(queryCriteria: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fhirPathCriteria':
        {
          if (child is FhirString) {
            return copyWith(fhirPathCriteria: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'description':
        return ['FhirMarkdown'];
      case 'resource':
        return ['FhirUri'];
      case 'supportedInteraction':
        return ['FhirCode'];
      case 'queryCriteria':
        return ['SubscriptionTopicQueryCriteria'];
      case 'fhirPathCriteria':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionTopicResourceTrigger]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SubscriptionTopicResourceTrigger createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: FhirUri.empty(),
          );
        }
      case 'supportedInteraction':
        {
          return copyWith(
            supportedInteraction: <InteractionTrigger>[],
          );
        }
      case 'queryCriteria':
        {
          return copyWith(
            queryCriteria: SubscriptionTopicQueryCriteria.empty(),
          );
        }
      case 'fhirPathCriteria':
        {
          return copyWith(
            fhirPathCriteria: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SubscriptionTopicResourceTrigger clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool supportedInteraction = false,
    bool queryCriteria = false,
    bool fhirPathCriteria = false,
  }) {
    return SubscriptionTopicResourceTrigger(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      resource: resource,
      supportedInteraction:
          supportedInteraction ? null : this.supportedInteraction,
      queryCriteria: queryCriteria ? null : this.queryCriteria,
      fhirPathCriteria: fhirPathCriteria ? null : this.fhirPathCriteria,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionTopicResourceTrigger(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
      supportedInteraction: supportedInteraction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportedInteraction',
                ),
              )
              .toList() ??
          this.supportedInteraction,
      queryCriteria: queryCriteria?.copyWith(
            objectPath: '$newObjectPath.queryCriteria',
          ) ??
          this.queryCriteria,
      fhirPathCriteria: fhirPathCriteria?.copyWith(
            objectPath: '$newObjectPath.fhirPathCriteria',
          ) ??
          this.fhirPathCriteria,
    );
  }

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
  }) : super(
          objectPath: 'SubscriptionTopic.resourceTrigger.queryCriteria',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubscriptionTopicQueryCriteria.empty() =>
      const SubscriptionTopicQueryCriteria();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicQueryCriteria.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionTopic.resourceTrigger.queryCriteria';
    return SubscriptionTopicQueryCriteria(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      previous: JsonParser.parsePrimitive<FhirString>(
        json,
        'previous',
        FhirString.fromJson,
        '$objectPath.previous',
      ),
      resultForCreate: JsonParser.parsePrimitive<CriteriaNotExistsBehavior>(
        json,
        'resultForCreate',
        CriteriaNotExistsBehavior.fromJson,
        '$objectPath.resultForCreate',
      ),
      current: JsonParser.parsePrimitive<FhirString>(
        json,
        'current',
        FhirString.fromJson,
        '$objectPath.current',
      ),
      resultForDelete: JsonParser.parsePrimitive<CriteriaNotExistsBehavior>(
        json,
        'resultForDelete',
        CriteriaNotExistsBehavior.fromJson,
        '$objectPath.resultForDelete',
      ),
      requireBoth: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'requireBoth',
        FhirBoolean.fromJson,
        '$objectPath.requireBoth',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'previous',
      'resultForCreate',
      'current',
      'resultForDelete',
      'requireBoth',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'previous':
        if (previous != null) {
          fields.add(previous!);
        }
      case 'resultForCreate':
        if (resultForCreate != null) {
          fields.add(resultForCreate!);
        }
      case 'current':
        if (current != null) {
          fields.add(current!);
        }
      case 'resultForDelete':
        if (resultForDelete != null) {
          fields.add(resultForDelete!);
        }
      case 'requireBoth':
        if (requireBoth != null) {
          fields.add(requireBoth!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'previous':
        {
          if (child is FhirString) {
            return copyWith(previous: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resultForCreate':
        {
          if (child is CriteriaNotExistsBehavior) {
            return copyWith(resultForCreate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'current':
        {
          if (child is FhirString) {
            return copyWith(current: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resultForDelete':
        {
          if (child is CriteriaNotExistsBehavior) {
            return copyWith(resultForDelete: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requireBoth':
        {
          if (child is FhirBoolean) {
            return copyWith(requireBoth: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'previous':
        return ['FhirString'];
      case 'resultForCreate':
        return ['FhirCode'];
      case 'current':
        return ['FhirString'];
      case 'resultForDelete':
        return ['FhirCode'];
      case 'requireBoth':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionTopicQueryCriteria]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SubscriptionTopicQueryCriteria createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'previous':
        {
          return copyWith(
            previous: FhirString.empty(),
          );
        }
      case 'resultForCreate':
        {
          return copyWith(
            resultForCreate: CriteriaNotExistsBehavior.empty(),
          );
        }
      case 'current':
        {
          return copyWith(
            current: FhirString.empty(),
          );
        }
      case 'resultForDelete':
        {
          return copyWith(
            resultForDelete: CriteriaNotExistsBehavior.empty(),
          );
        }
      case 'requireBoth':
        {
          return copyWith(
            requireBoth: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SubscriptionTopicQueryCriteria clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool previous = false,
    bool resultForCreate = false,
    bool current = false,
    bool resultForDelete = false,
    bool requireBoth = false,
  }) {
    return SubscriptionTopicQueryCriteria(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      previous: previous ? null : this.previous,
      resultForCreate: resultForCreate ? null : this.resultForCreate,
      current: current ? null : this.current,
      resultForDelete: resultForDelete ? null : this.resultForDelete,
      requireBoth: requireBoth ? null : this.requireBoth,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionTopicQueryCriteria(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      previous: previous?.copyWith(
            objectPath: '$newObjectPath.previous',
          ) ??
          this.previous,
      resultForCreate: resultForCreate?.copyWith(
            objectPath: '$newObjectPath.resultForCreate',
          ) ??
          this.resultForCreate,
      current: current?.copyWith(
            objectPath: '$newObjectPath.current',
          ) ??
          this.current,
      resultForDelete: resultForDelete?.copyWith(
            objectPath: '$newObjectPath.resultForDelete',
          ) ??
          this.resultForDelete,
      requireBoth: requireBoth?.copyWith(
            objectPath: '$newObjectPath.requireBoth',
          ) ??
          this.requireBoth,
    );
  }

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
  }) : super(
          objectPath: 'SubscriptionTopic.eventTrigger',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubscriptionTopicEventTrigger.empty() =>
      SubscriptionTopicEventTrigger(
        event: CodeableConcept.empty(),
        resource: FhirUri.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicEventTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionTopic.eventTrigger';
    return SubscriptionTopicEventTrigger(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      event: JsonParser.parseObject<CodeableConcept>(
        json,
        'event',
        CodeableConcept.fromJson,
        '$objectPath.event',
      )!,
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
        '$objectPath.resource',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'event',
      'resource',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'event':
        fields.add(event);
      case 'resource':
        fields.add(resource);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'event':
        {
          if (child is CodeableConcept) {
            return copyWith(event: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirUri) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'description':
        return ['FhirMarkdown'];
      case 'event':
        return ['CodeableConcept'];
      case 'resource':
        return ['FhirUri'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionTopicEventTrigger]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SubscriptionTopicEventTrigger createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'event':
        {
          return copyWith(
            event: CodeableConcept.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: FhirUri.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SubscriptionTopicEventTrigger clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
  }) {
    return SubscriptionTopicEventTrigger(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      event: event,
      resource: resource,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionTopicEventTrigger(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      event: event?.copyWith(
            objectPath: '$newObjectPath.event',
          ) ??
          this.event,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
    );
  }

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
  }) : super(
          objectPath: 'SubscriptionTopic.canFilterBy',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubscriptionTopicCanFilterBy.empty() => SubscriptionTopicCanFilterBy(
        filterParameter: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicCanFilterBy.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionTopic.canFilterBy';
    return SubscriptionTopicCanFilterBy(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
        '$objectPath.resource',
      ),
      filterParameter: JsonParser.parsePrimitive<FhirString>(
        json,
        'filterParameter',
        FhirString.fromJson,
        '$objectPath.filterParameter',
      )!,
      filterDefinition: JsonParser.parsePrimitive<FhirUri>(
        json,
        'filterDefinition',
        FhirUri.fromJson,
        '$objectPath.filterDefinition',
      ),
      modifier: JsonParser.parsePrimitiveList<SubscriptionSearchModifier>(
        json,
        'modifier',
        SubscriptionSearchModifier.fromJson,
        '$objectPath.modifier',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'resource',
      'filterParameter',
      'filterDefinition',
      'modifier',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'filterParameter':
        fields.add(filterParameter);
      case 'filterDefinition':
        if (filterDefinition != null) {
          fields.add(filterDefinition!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirUri) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'filterParameter':
        {
          if (child is FhirString) {
            return copyWith(filterParameter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'filterDefinition':
        {
          if (child is FhirUri) {
            return copyWith(filterDefinition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<SubscriptionSearchModifier>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is SubscriptionSearchModifier) {
            // Add single element to existing list or create new list
            final newList = [...?modifier, child];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'description':
        return ['FhirMarkdown'];
      case 'resource':
        return ['FhirUri'];
      case 'filterParameter':
        return ['FhirString'];
      case 'filterDefinition':
        return ['FhirUri'];
      case 'modifier':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionTopicCanFilterBy]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SubscriptionTopicCanFilterBy createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: FhirUri.empty(),
          );
        }
      case 'filterParameter':
        {
          return copyWith(
            filterParameter: FhirString.empty(),
          );
        }
      case 'filterDefinition':
        {
          return copyWith(
            filterDefinition: FhirUri.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <SubscriptionSearchModifier>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SubscriptionTopicCanFilterBy clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool resource = false,
    bool filterDefinition = false,
    bool modifier = false,
  }) {
    return SubscriptionTopicCanFilterBy(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      resource: resource ? null : this.resource,
      filterParameter: filterParameter,
      filterDefinition: filterDefinition ? null : this.filterDefinition,
      modifier: modifier ? null : this.modifier,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionTopicCanFilterBy(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
      filterParameter: filterParameter?.copyWith(
            objectPath: '$newObjectPath.filterParameter',
          ) ??
          this.filterParameter,
      filterDefinition: filterDefinition?.copyWith(
            objectPath: '$newObjectPath.filterDefinition',
          ) ??
          this.filterDefinition,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
    );
  }

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
  }) : super(
          objectPath: 'SubscriptionTopic.notificationShape',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubscriptionTopicNotificationShape.empty() =>
      SubscriptionTopicNotificationShape(
        resource: FhirUri.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionTopicNotificationShape.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubscriptionTopic.notificationShape';
    return SubscriptionTopicNotificationShape(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      resource: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resource',
        FhirUri.fromJson,
        '$objectPath.resource',
      )!,
      include: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'include',
        FhirString.fromJson,
        '$objectPath.include',
      ),
      revInclude: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'revInclude',
        FhirString.fromJson,
        '$objectPath.revInclude',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'resource',
      'include',
      'revInclude',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'resource':
        fields.add(resource);
      case 'include':
        if (include != null) {
          fields.addAll(include!);
        }
      case 'revInclude':
        if (revInclude != null) {
          fields.addAll(revInclude!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirUri) {
            return copyWith(resource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'include':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?include, ...child];
            return copyWith(include: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?include, child];
            return copyWith(include: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revInclude':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?revInclude, ...child];
            return copyWith(revInclude: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?revInclude, child];
            return copyWith(revInclude: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'resource':
        return ['FhirUri'];
      case 'include':
        return ['FhirString'];
      case 'revInclude':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionTopicNotificationShape]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SubscriptionTopicNotificationShape createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'resource':
        {
          return copyWith(
            resource: FhirUri.empty(),
          );
        }
      case 'include':
        {
          return copyWith(
            include: <FhirString>[],
          );
        }
      case 'revInclude':
        {
          return copyWith(
            revInclude: <FhirString>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SubscriptionTopicNotificationShape clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool include = false,
    bool revInclude = false,
  }) {
    return SubscriptionTopicNotificationShape(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      resource: resource,
      include: include ? null : this.include,
      revInclude: revInclude ? null : this.revInclude,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubscriptionTopicNotificationShape(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
      include: include
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.include',
                ),
              )
              .toList() ??
          this.include,
      revInclude: revInclude
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.revInclude',
                ),
              )
              .toList() ??
          this.revInclude,
    );
  }

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
