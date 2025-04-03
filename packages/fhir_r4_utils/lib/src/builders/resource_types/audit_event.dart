import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        AuditEvent,
        AuditEventAgent,
        AuditEventDetail,
        AuditEventEntity,
        AuditEventNetwork,
        AuditEventSource,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [AuditEventBuilder]
/// A record of an event made for purposes of maintaining a security log.
/// Typical uses include detection of intrusion attempts and monitoring for
/// inappropriate usage.
class AuditEventBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AuditEventBuilder]

  AuditEventBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.subtype,
    this.action,
    this.period,
    this.recorded,
    this.outcome,
    this.outcomeDesc,
    this.purposeOfEvent,
    this.agent,
    this.source,
    this.entity,
  }) : super(
          objectPath: 'AuditEvent',
          resourceType: R4ResourceType.AuditEvent,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventBuilder.empty() => AuditEventBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent';
    return AuditEventBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodingBuilder>(
        json,
        'type',
        CodingBuilder.fromJson,
        '$objectPath.type',
      ),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subtype',
              },
            ),
          )
          .toList(),
      action: JsonParser.parsePrimitive<AuditEventActionBuilder>(
        json,
        'action',
        AuditEventActionBuilder.fromJson,
        '$objectPath.action',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      recorded: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'recorded',
        FhirInstantBuilder.fromJson,
        '$objectPath.recorded',
      ),
      outcome: JsonParser.parsePrimitive<AuditEventOutcomeBuilder>(
        json,
        'outcome',
        AuditEventOutcomeBuilder.fromJson,
        '$objectPath.outcome',
      ),
      outcomeDesc: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'outcomeDesc',
        FhirStringBuilder.fromJson,
        '$objectPath.outcomeDesc',
      ),
      purposeOfEvent: (json['purposeOfEvent'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.purposeOfEvent',
              },
            ),
          )
          .toList(),
      agent: (json['agent'] as List<dynamic>?)
          ?.map<AuditEventAgentBuilder>(
            (v) => AuditEventAgentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
      source: JsonParser.parseObject<AuditEventSourceBuilder>(
        json,
        'source',
        AuditEventSourceBuilder.fromJson,
        '$objectPath.source',
      ),
      entity: (json['entity'] as List<dynamic>?)
          ?.map<AuditEventEntityBuilder>(
            (v) => AuditEventEntityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entity',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEvent';

  /// [type]
  /// Identifier for a family of the event. For example, a menu item,
  /// program, rule, policy, function code, application name or URL. It
  /// identifies the performed function.
  CodingBuilder? type;

  /// [subtype]
  /// Identifier for the category of event.
  List<CodingBuilder>? subtype;

  /// [action]
  /// Indicator for type of action performed during the event that generated
  /// the audit.
  AuditEventActionBuilder? action;

  /// [period]
  /// The period during which the activity occurred.
  PeriodBuilder? period;

  /// [recorded]
  /// The time when the event was recorded.
  FhirInstantBuilder? recorded;

  /// [outcome]
  /// Indicates whether the event succeeded or failed.
  AuditEventOutcomeBuilder? outcome;

  /// [outcomeDesc]
  /// A free text description of the outcome of the event.
  FhirStringBuilder? outcomeDesc;

  /// [purposeOfEvent]
  /// The purposeOfUse (reason) that was used during the event being
  /// recorded.
  List<CodeableConceptBuilder>? purposeOfEvent;

  /// [agent]
  /// An actor taking an active role in the event or activity that is logged.
  List<AuditEventAgentBuilder>? agent;

  /// [source]
  /// The system that is reporting the event.
  AuditEventSourceBuilder? source;

  /// [entity]
  /// Specific instances of data or objects that have been accessed.
  List<AuditEventEntityBuilder>? entity;

  /// Converts a [AuditEventBuilder]
  /// to [AuditEvent]
  @override
  AuditEvent build() => AuditEvent.fromJson(toJson());

  /// Converts a [AuditEventBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('subtype', subtype);
    addField('action', action);
    addField('period', period);
    addField('recorded', recorded);
    addField('outcome', outcome);
    addField('outcomeDesc', outcomeDesc);
    addField('purposeOfEvent', purposeOfEvent);
    addField('agent', agent);
    addField('source', source);
    addField('entity', entity);
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
      'type',
      'subtype',
      'action',
      'period',
      'recorded',
      'outcome',
      'outcomeDesc',
      'purposeOfEvent',
      'agent',
      'source',
      'entity',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subtype':
        if (subtype != null) {
          fields.addAll(subtype!);
        }
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'outcomeDesc':
        if (outcomeDesc != null) {
          fields.add(outcomeDesc!);
        }
      case 'purposeOfEvent':
        if (purposeOfEvent != null) {
          fields.addAll(purposeOfEvent!);
        }
      case 'agent':
        if (agent != null) {
          fields.addAll(agent!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'entity':
        if (entity != null) {
          fields.addAll(entity!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodingBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subtype':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            subtype = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            subtype = [
              ...(subtype ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is AuditEventActionBuilder) {
            action = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AuditEventActionBuilder(stringValue);
                action = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorded':
        {
          if (child is FhirInstantBuilder) {
            recorded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                recorded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is AuditEventOutcomeBuilder) {
            outcome = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AuditEventOutcomeBuilder(stringValue);
                outcome = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcomeDesc':
        {
          if (child is FhirStringBuilder) {
            outcomeDesc = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                outcomeDesc = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purposeOfEvent':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            purposeOfEvent = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            purposeOfEvent = [
              ...(purposeOfEvent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'agent':
        {
          if (child is List<AuditEventAgentBuilder>) {
            // Replace or create new list
            agent = child;
            return;
          } else if (child is AuditEventAgentBuilder) {
            // Add single element to existing list or create new list
            agent = [
              ...(agent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is AuditEventSourceBuilder) {
            source = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entity':
        {
          if (child is List<AuditEventEntityBuilder>) {
            // Replace or create new list
            entity = child;
            return;
          } else if (child is AuditEventEntityBuilder) {
            // Add single element to existing list or create new list
            entity = [
              ...(entity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodingBuilder'];
      case 'subtype':
        return ['CodingBuilder'];
      case 'action':
        return ['FhirCodeEnumBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'recorded':
        return ['FhirInstantBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'outcomeDesc':
        return ['FhirStringBuilder'];
      case 'purposeOfEvent':
        return ['CodeableConceptBuilder'];
      case 'agent':
        return ['AuditEventAgentBuilder'];
      case 'source':
        return ['AuditEventSourceBuilder'];
      case 'entity':
        return ['AuditEventEntityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodingBuilder.empty();
          return;
        }
      case 'subtype':
        {
          subtype = <CodingBuilder>[];
          return;
        }
      case 'action':
        {
          action = AuditEventActionBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirInstantBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = AuditEventOutcomeBuilder.empty();
          return;
        }
      case 'outcomeDesc':
        {
          outcomeDesc = FhirStringBuilder.empty();
          return;
        }
      case 'purposeOfEvent':
        {
          purposeOfEvent = <CodeableConceptBuilder>[];
          return;
        }
      case 'agent':
        {
          agent = <AuditEventAgentBuilder>[];
          return;
        }
      case 'source':
        {
          source = AuditEventSourceBuilder.empty();
          return;
        }
      case 'entity':
        {
          entity = <AuditEventEntityBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool subtype = false,
    bool action = false,
    bool period = false,
    bool recorded = false,
    bool outcome = false,
    bool outcomeDesc = false,
    bool purposeOfEvent = false,
    bool agent = false,
    bool source = false,
    bool entity = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (subtype) this.subtype = null;
    if (action) this.action = null;
    if (period) this.period = null;
    if (recorded) this.recorded = null;
    if (outcome) this.outcome = null;
    if (outcomeDesc) this.outcomeDesc = null;
    if (purposeOfEvent) this.purposeOfEvent = null;
    if (agent) this.agent = null;
    if (source) this.source = null;
    if (entity) this.entity = null;
  }

  @override
  AuditEventBuilder clone() => throw UnimplementedError();
  @override
  AuditEventBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? type,
    List<CodingBuilder>? subtype,
    AuditEventActionBuilder? action,
    PeriodBuilder? period,
    FhirInstantBuilder? recorded,
    AuditEventOutcomeBuilder? outcome,
    FhirStringBuilder? outcomeDesc,
    List<CodeableConceptBuilder>? purposeOfEvent,
    List<AuditEventAgentBuilder>? agent,
    AuditEventSourceBuilder? source,
    List<AuditEventEntityBuilder>? entity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AuditEventBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      action: action ?? this.action,
      period: period ?? this.period,
      recorded: recorded ?? this.recorded,
      outcome: outcome ?? this.outcome,
      outcomeDesc: outcomeDesc ?? this.outcomeDesc,
      purposeOfEvent: purposeOfEvent ?? this.purposeOfEvent,
      agent: agent ?? this.agent,
      source: source ?? this.source,
      entity: entity ?? this.entity,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AuditEventBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      subtype,
      o.subtype,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      action,
      o.action,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorded,
      o.recorded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcomeDesc,
      o.outcomeDesc,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      purposeOfEvent,
      o.purposeOfEvent,
    )) {
      return false;
    }
    if (!listEquals<AuditEventAgentBuilder>(
      agent,
      o.agent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!listEquals<AuditEventEntityBuilder>(
      entity,
      o.entity,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventAgentBuilder]
/// An actor taking an active role in the event or activity that is logged.
class AuditEventAgentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventAgentBuilder]

  AuditEventAgentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.name,
    this.requestor,
    this.location,
    this.policy,
    this.media,
    this.network,
    this.purposeOfUse,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.agent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventAgentBuilder.empty() => AuditEventAgentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventAgentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.agent';
    return AuditEventAgentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      role: (json['role'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.role',
              },
            ),
          )
          .toList(),
      who: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'who',
        ReferenceBuilder.fromJson,
        '$objectPath.who',
      ),
      altId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'altId',
        FhirStringBuilder.fromJson,
        '$objectPath.altId',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      requestor: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'requestor',
        FhirBooleanBuilder.fromJson,
        '$objectPath.requestor',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      policy: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'policy',
        FhirUriBuilder.fromJson,
        '$objectPath.policy',
      ),
      media: JsonParser.parseObject<CodingBuilder>(
        json,
        'media',
        CodingBuilder.fromJson,
        '$objectPath.media',
      ),
      network: JsonParser.parseObject<AuditEventNetworkBuilder>(
        json,
        'network',
        AuditEventNetworkBuilder.fromJson,
        '$objectPath.network',
      ),
      purposeOfUse: (json['purposeOfUse'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.purposeOfUse',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventAgentBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventAgentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventAgentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventAgentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventAgentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventAgentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventAgentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventAgentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventAgent';

  /// [type]
  /// Specification of the participation type the user plays when performing
  /// the event.
  CodeableConceptBuilder? type;

  /// [role]
  /// The security role that the user was acting under, that come from local
  /// codes defined by the access control security system (e.g. RBAC, ABAC)
  /// used in the local context.
  List<CodeableConceptBuilder>? role;

  /// [who]
  /// Reference to who this agent is that was involved in the event.
  ReferenceBuilder? who;

  /// [altId]
  /// Alternative agent Identifier. For a human, this should be a user
  /// identifier text string from authentication system. This identifier
  /// would be one known to a common authentication system (e.g. single
  /// sign-on), if available.
  FhirStringBuilder? altId;

  /// [name]
  /// Human-meaningful name for the agent.
  FhirStringBuilder? name;

  /// [requestor]
  /// Indicator that the user is or is not the requestor, or initiator, for
  /// the event being audited.
  FhirBooleanBuilder? requestor;

  /// [location]
  /// Where the event occurred.
  ReferenceBuilder? location;

  /// [policy]
  /// The policy or plan that authorized the activity being recorded.
  /// Typically, a single activity may have multiple applicable policies,
  /// such as patient consent, guarantor funding, etc. The policy would also
  /// indicate the security token used.
  List<FhirUriBuilder>? policy;

  /// [media]
  /// Type of media involved. Used when the event is about
  /// exporting/importing onto media.
  CodingBuilder? media;

  /// [network]
  /// Logical network location for application activity, if the activity has
  /// a network location.
  AuditEventNetworkBuilder? network;

  /// [purposeOfUse]
  /// The reason (purpose of use), specific to this agent, that was used
  /// during the event being recorded.
  List<CodeableConceptBuilder>? purposeOfUse;

  /// Converts a [AuditEventAgentBuilder]
  /// to [AuditEventAgent]
  @override
  AuditEventAgent build() => AuditEventAgent.fromJson(toJson());

  /// Converts a [AuditEventAgentBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('role', role);
    addField('who', who);
    addField('altId', altId);
    addField('name', name);
    addField('requestor', requestor);
    addField('location', location);
    addField('policy', policy);
    addField('media', media);
    addField('network', network);
    addField('purposeOfUse', purposeOfUse);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'role',
      'who',
      'altId',
      'name',
      'requestor',
      'location',
      'policy',
      'media',
      'network',
      'purposeOfUse',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'role':
        if (role != null) {
          fields.addAll(role!);
        }
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
      case 'altId':
        if (altId != null) {
          fields.add(altId!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'policy':
        if (policy != null) {
          fields.addAll(policy!);
        }
      case 'media':
        if (media != null) {
          fields.add(media!);
        }
      case 'network':
        if (network != null) {
          fields.add(network!);
        }
      case 'purposeOfUse':
        if (purposeOfUse != null) {
          fields.addAll(purposeOfUse!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            role = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            role = [
              ...(role ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'who':
        {
          if (child is ReferenceBuilder) {
            who = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'altId':
        {
          if (child is FhirStringBuilder) {
            altId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                altId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestor':
        {
          if (child is FhirBooleanBuilder) {
            requestor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                requestor = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'policy':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            policy = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            policy = [
              ...(policy ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              policy = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                policy = [...(policy ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'media':
        {
          if (child is CodingBuilder) {
            media = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'network':
        {
          if (child is AuditEventNetworkBuilder) {
            network = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purposeOfUse':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            purposeOfUse = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            purposeOfUse = [
              ...(purposeOfUse ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'who':
        return ['ReferenceBuilder'];
      case 'altId':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'requestor':
        return ['FhirBooleanBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'policy':
        return ['FhirUriBuilder'];
      case 'media':
        return ['CodingBuilder'];
      case 'network':
        return ['AuditEventNetworkBuilder'];
      case 'purposeOfUse':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventAgentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'role':
        {
          role = <CodeableConceptBuilder>[];
          return;
        }
      case 'who':
        {
          who = ReferenceBuilder.empty();
          return;
        }
      case 'altId':
        {
          altId = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'requestor':
        {
          requestor = FhirBooleanBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'policy':
        {
          policy = <FhirUriBuilder>[];
          return;
        }
      case 'media':
        {
          media = CodingBuilder.empty();
          return;
        }
      case 'network':
        {
          network = AuditEventNetworkBuilder.empty();
          return;
        }
      case 'purposeOfUse':
        {
          purposeOfUse = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool role = false,
    bool who = false,
    bool altId = false,
    bool name = false,
    bool requestor = false,
    bool location = false,
    bool policy = false,
    bool media = false,
    bool network = false,
    bool purposeOfUse = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (role) this.role = null;
    if (who) this.who = null;
    if (altId) this.altId = null;
    if (name) this.name = null;
    if (requestor) this.requestor = null;
    if (location) this.location = null;
    if (policy) this.policy = null;
    if (media) this.media = null;
    if (network) this.network = null;
    if (purposeOfUse) this.purposeOfUse = null;
  }

  @override
  AuditEventAgentBuilder clone() => throw UnimplementedError();
  @override
  AuditEventAgentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? role,
    ReferenceBuilder? who,
    FhirStringBuilder? altId,
    FhirStringBuilder? name,
    FhirBooleanBuilder? requestor,
    ReferenceBuilder? location,
    List<FhirUriBuilder>? policy,
    CodingBuilder? media,
    AuditEventNetworkBuilder? network,
    List<CodeableConceptBuilder>? purposeOfUse,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventAgentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      altId: altId ?? this.altId,
      name: name ?? this.name,
      requestor: requestor ?? this.requestor,
      location: location ?? this.location,
      policy: policy ?? this.policy,
      media: media ?? this.media,
      network: network ?? this.network,
      purposeOfUse: purposeOfUse ?? this.purposeOfUse,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AuditEventAgentBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      altId,
      o.altId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestor,
      o.requestor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      policy,
      o.policy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      media,
      o.media,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      purposeOfUse,
      o.purposeOfUse,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventNetworkBuilder]
/// Logical network location for application activity, if the activity has
/// a network location.
class AuditEventNetworkBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventNetworkBuilder]

  AuditEventNetworkBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.address,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.agent.network',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventNetworkBuilder.empty() => AuditEventNetworkBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventNetworkBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.agent.network';
    return AuditEventNetworkBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      address: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'address',
        FhirStringBuilder.fromJson,
        '$objectPath.address',
      ),
      type: JsonParser.parsePrimitive<AuditEventAgentNetworkTypeBuilder>(
        json,
        'type',
        AuditEventAgentNetworkTypeBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [AuditEventNetworkBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventNetworkBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventNetworkBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventNetworkBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventNetworkBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventNetworkBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventNetworkBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventNetworkBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventNetwork';

  /// [address]
  /// An identifier for the network access point of the user device for the
  /// audit event.
  FhirStringBuilder? address;

  /// [type]
  /// An identifier for the type of network access point that originated the
  /// audit event.
  AuditEventAgentNetworkTypeBuilder? type;

  /// Converts a [AuditEventNetworkBuilder]
  /// to [AuditEventNetwork]
  @override
  AuditEventNetwork build() => AuditEventNetwork.fromJson(toJson());

  /// Converts a [AuditEventNetworkBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('address', address);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'address',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'address':
        if (address != null) {
          fields.add(address!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'address':
        {
          if (child is FhirStringBuilder) {
            address = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                address = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is AuditEventAgentNetworkTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    AuditEventAgentNetworkTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'address':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventNetworkBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'address':
        {
          address = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = AuditEventAgentNetworkTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool address = false,
    bool type = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (address) this.address = null;
    if (type) this.type = null;
  }

  @override
  AuditEventNetworkBuilder clone() => throw UnimplementedError();
  @override
  AuditEventNetworkBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? address,
    AuditEventAgentNetworkTypeBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventNetworkBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      address: address ?? this.address,
      type: type ?? this.type,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AuditEventNetworkBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventSourceBuilder]
/// The system that is reporting the event.
class AuditEventSourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventSourceBuilder]

  AuditEventSourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.site,
    this.observer,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.source',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventSourceBuilder.empty() => AuditEventSourceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventSourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.source';
    return AuditEventSourceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      site: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'site',
        FhirStringBuilder.fromJson,
        '$objectPath.site',
      ),
      observer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'observer',
        ReferenceBuilder.fromJson,
        '$objectPath.observer',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventSourceBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventSourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventSourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventSourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventSourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventSourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventSourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventSourceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventSource';

  /// [site]
  /// Logical source location within the healthcare enterprise network. For
  /// example, a hospital or other provider location within a multi-entity
  /// provider group.
  FhirStringBuilder? site;

  /// [observer]
  /// Identifier of the source where the event was detected.
  ReferenceBuilder? observer;

  /// [type]
  /// Code specifying the type of source where event originated.
  List<CodingBuilder>? type;

  /// Converts a [AuditEventSourceBuilder]
  /// to [AuditEventSource]
  @override
  AuditEventSource build() => AuditEventSource.fromJson(toJson());

  /// Converts a [AuditEventSourceBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('site', site);
    addField('observer', observer);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'site',
      'observer',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'observer':
        if (observer != null) {
          fields.add(observer!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'site':
        {
          if (child is FhirStringBuilder) {
            site = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                site = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'observer':
        {
          if (child is ReferenceBuilder) {
            observer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'site':
        return ['FhirStringBuilder'];
      case 'observer':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventSourceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'site':
        {
          site = FhirStringBuilder.empty();
          return;
        }
      case 'observer':
        {
          observer = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool site = false,
    bool observer = false,
    bool type = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (site) this.site = null;
    if (observer) this.observer = null;
    if (type) this.type = null;
  }

  @override
  AuditEventSourceBuilder clone() => throw UnimplementedError();
  @override
  AuditEventSourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? site,
    ReferenceBuilder? observer,
    List<CodingBuilder>? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventSourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      site: site ?? this.site,
      observer: observer ?? this.observer,
      type: type ?? this.type,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AuditEventSourceBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observer,
      o.observer,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventEntityBuilder]
/// Specific instances of data or objects that have been accessed.
class AuditEventEntityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventEntityBuilder]

  AuditEventEntityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.description,
    this.query,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.entity',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventEntityBuilder.empty() => AuditEventEntityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventEntityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.entity';
    return AuditEventEntityBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      what: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'what',
        ReferenceBuilder.fromJson,
        '$objectPath.what',
      ),
      type: JsonParser.parseObject<CodingBuilder>(
        json,
        'type',
        CodingBuilder.fromJson,
        '$objectPath.type',
      ),
      role: JsonParser.parseObject<CodingBuilder>(
        json,
        'role',
        CodingBuilder.fromJson,
        '$objectPath.role',
      ),
      lifecycle: JsonParser.parseObject<CodingBuilder>(
        json,
        'lifecycle',
        CodingBuilder.fromJson,
        '$objectPath.lifecycle',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      query: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'query',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.query',
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<AuditEventDetailBuilder>(
            (v) => AuditEventDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AuditEventEntityBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventEntityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventEntityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventEntityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventEntityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventEntityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventEntityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventEntityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventEntity';

  /// [what]
  /// Identifies a specific instance of the entity. The reference should be
  /// version specific.
  ReferenceBuilder? what;

  /// [type]
  /// The type of the object that was involved in this audit event.
  CodingBuilder? type;

  /// [role]
  /// Code representing the role the entity played in the event being
  /// audited.
  CodingBuilder? role;

  /// [lifecycle]
  /// Identifier for the data life-cycle stage for the entity.
  CodingBuilder? lifecycle;

  /// [securityLabel]
  /// Security labels for the identified entity.
  List<CodingBuilder>? securityLabel;

  /// [name]
  /// A name of the entity in the audit event.
  FhirStringBuilder? name;

  /// [description]
  /// Text that describes the entity in more detail.
  FhirStringBuilder? description;

  /// [query]
  /// The query parameters for a query-type entities.
  FhirBase64BinaryBuilder? query;

  /// [detail]
  /// Tagged value pairs for conveying additional information about the
  /// entity.
  List<AuditEventDetailBuilder>? detail;

  /// Converts a [AuditEventEntityBuilder]
  /// to [AuditEventEntity]
  @override
  AuditEventEntity build() => AuditEventEntity.fromJson(toJson());

  /// Converts a [AuditEventEntityBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('what', what);
    addField('type', type);
    addField('role', role);
    addField('lifecycle', lifecycle);
    addField('securityLabel', securityLabel);
    addField('name', name);
    addField('description', description);
    addField('query', query);
    addField('detail', detail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'what',
      'type',
      'role',
      'lifecycle',
      'securityLabel',
      'name',
      'description',
      'query',
      'detail',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'what':
        if (what != null) {
          fields.add(what!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'lifecycle':
        if (lifecycle != null) {
          fields.add(lifecycle!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'query':
        if (query != null) {
          fields.add(query!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'what':
        {
          if (child is ReferenceBuilder) {
            what = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodingBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodingBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lifecycle':
        {
          if (child is CodingBuilder) {
            lifecycle = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabel':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            securityLabel = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            securityLabel = [
              ...(securityLabel ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'query':
        {
          if (child is FhirBase64BinaryBuilder) {
            query = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBase64BinaryBuilder.tryParse(stringValue);
              if (converted != null) {
                query = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detail':
        {
          if (child is List<AuditEventDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is AuditEventDetailBuilder) {
            // Add single element to existing list or create new list
            detail = [
              ...(detail ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'what':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodingBuilder'];
      case 'role':
        return ['CodingBuilder'];
      case 'lifecycle':
        return ['CodingBuilder'];
      case 'securityLabel':
        return ['CodingBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'query':
        return ['FhirBase64BinaryBuilder'];
      case 'detail':
        return ['AuditEventDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventEntityBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'what':
        {
          what = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodingBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodingBuilder.empty();
          return;
        }
      case 'lifecycle':
        {
          lifecycle = CodingBuilder.empty();
          return;
        }
      case 'securityLabel':
        {
          securityLabel = <CodingBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'query':
        {
          query = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'detail':
        {
          detail = <AuditEventDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool what = false,
    bool type = false,
    bool role = false,
    bool lifecycle = false,
    bool securityLabel = false,
    bool name = false,
    bool description = false,
    bool query = false,
    bool detail = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (what) this.what = null;
    if (type) this.type = null;
    if (role) this.role = null;
    if (lifecycle) this.lifecycle = null;
    if (securityLabel) this.securityLabel = null;
    if (name) this.name = null;
    if (description) this.description = null;
    if (query) this.query = null;
    if (detail) this.detail = null;
  }

  @override
  AuditEventEntityBuilder clone() => throw UnimplementedError();
  @override
  AuditEventEntityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? what,
    CodingBuilder? type,
    CodingBuilder? role,
    CodingBuilder? lifecycle,
    List<CodingBuilder>? securityLabel,
    FhirStringBuilder? name,
    FhirStringBuilder? description,
    FhirBase64BinaryBuilder? query,
    List<AuditEventDetailBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventEntityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      what: what ?? this.what,
      type: type ?? this.type,
      role: role ?? this.role,
      lifecycle: lifecycle ?? this.lifecycle,
      securityLabel: securityLabel ?? this.securityLabel,
      name: name ?? this.name,
      description: description ?? this.description,
      query: query ?? this.query,
      detail: detail ?? this.detail,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AuditEventEntityBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      what,
      o.what,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lifecycle,
      o.lifecycle,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
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
      query,
      o.query,
    )) {
      return false;
    }
    if (!listEquals<AuditEventDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [AuditEventDetailBuilder]
/// Tagged value pairs for conveying additional information about the
/// entity.
class AuditEventDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AuditEventDetailBuilder]

  AuditEventDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AuditEvent.entity.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AuditEventDetailBuilder.empty() => AuditEventDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AuditEventDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AuditEvent.entity.detail';
    return AuditEventDetailBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'type',
        FhirStringBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXAuditEventDetailBuilder>(
        json,
        {
          'valueString': FhirStringBuilder.fromJson,
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [AuditEventDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory AuditEventDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AuditEventDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AuditEventDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AuditEventDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AuditEventDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AuditEventDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AuditEventDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AuditEventDetail';

  /// [type]
  /// The type of extra detail provided in the value.
  FhirStringBuilder? type;

  /// [valueX]
  /// The value of the extra detail.
  ValueXAuditEventDetailBuilder? valueX;

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Converts a [AuditEventDetailBuilder]
  /// to [AuditEventDetail]
  @override
  AuditEventDetail build() => AuditEventDetail.fromJson(toJson());

  /// Converts a [AuditEventDetailBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
          fields.add(valueX!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is FhirStringBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                type = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueX':
        {
          if (child is ValueXAuditEventDetailBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            valueX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirStringBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirStringBuilder',
          'FhirBase64BinaryBuilder',
        ];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AuditEventDetailBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = FhirStringBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (value) valueX = null;
  }

  @override
  AuditEventDetailBuilder clone() => throw UnimplementedError();
  @override
  AuditEventDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? type,
    ValueXAuditEventDetailBuilder? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AuditEventDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AuditEventDetailBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
