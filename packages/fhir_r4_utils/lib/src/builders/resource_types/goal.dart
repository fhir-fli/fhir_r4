import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Goal,
        GoalTarget,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [GoalBuilder]
/// Describes the intended objective(s) for a patient, group or
/// organization care, for example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a
/// process improvement objective, etc.
class GoalBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [GoalBuilder]

  GoalBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.lifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    this.description,
    this.subject,
    this.startX,
    this.target,
    this.statusDate,
    this.statusReason,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
  }) : super(
          objectPath: 'Goal',
          resourceType: R4ResourceType.Goal,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory GoalBuilder.empty() => GoalBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GoalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Goal';
    return GoalBuilder(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      lifecycleStatus: JsonParser.parsePrimitive<GoalLifecycleStatusBuilder>(
        json,
        'lifecycleStatus',
        GoalLifecycleStatusBuilder.fromJson,
        '$objectPath.lifecycleStatus',
      ),
      achievementStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'achievementStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.achievementStatus',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'priority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.priority',
      ),
      description: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'description',
        CodeableConceptBuilder.fromJson,
        '$objectPath.description',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      startX: JsonParser.parsePolymorphic<StartXGoalBuilder>(
        json,
        {
          'startDate': FhirDateBuilder.fromJson,
          'startCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      target: (json['target'] as List<dynamic>?)
          ?.map<GoalTargetBuilder>(
            (v) => GoalTargetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      statusDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'statusDate',
        FhirDateBuilder.fromJson,
        '$objectPath.statusDate',
      ),
      statusReason: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'statusReason',
        FhirStringBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      expressedBy: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'expressedBy',
        ReferenceBuilder.fromJson,
        '$objectPath.expressedBy',
      ),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addresses',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      outcomeCode: (json['outcomeCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcomeCode',
              },
            ),
          )
          .toList(),
      outcomeReference: (json['outcomeReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcomeReference',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GoalBuilder]
  /// from a [String] or [YamlMap] object
  factory GoalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GoalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GoalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GoalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GoalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GoalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GoalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Goal';

  /// [identifier]
  /// Business identifiers assigned to this goal by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  List<IdentifierBuilder>? identifier;

  /// [lifecycleStatus]
  /// The state of the goal throughout its lifecycle.
  GoalLifecycleStatusBuilder? lifecycleStatus;

  /// [achievementStatus]
  /// Describes the progression, or lack thereof, towards the goal against
  /// the target.
  CodeableConceptBuilder? achievementStatus;

  /// [category]
  /// Indicates a category the goal falls within.
  List<CodeableConceptBuilder>? category;

  /// [priority]
  /// Identifies the mutually agreed level of importance associated with
  /// reaching/sustaining the goal.
  CodeableConceptBuilder? priority;

  /// [description]
  /// Human-readable and/or coded description of a specific desired objective
  /// of care, such as "control blood pressure" or "negotiate an obstacle
  /// course" or "dance with child at wedding".
  CodeableConceptBuilder? description;

  /// [subject]
  /// Identifies the patient, group or organization for whom the goal is
  /// being established.
  ReferenceBuilder? subject;

  /// [startX]
  /// The date or event after which the goal should begin being pursued.
  StartXGoalBuilder? startX;

  /// Getter for [startDate] as a FhirDateBuilder
  FhirDateBuilder? get startDate => startX?.isAs<FhirDateBuilder>();

  /// Getter for [startCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get startCodeableConcept =>
      startX?.isAs<CodeableConceptBuilder>();

  /// [target]
  /// Indicates what should be done by when.
  List<GoalTargetBuilder>? target;

  /// [statusDate]
  /// Identifies when the current status. I.e. When initially created, when
  /// achieved, when cancelled, etc.
  FhirDateBuilder? statusDate;

  /// [statusReason]
  /// Captures the reason for the current status.
  FhirStringBuilder? statusReason;

  /// [expressedBy]
  /// Indicates whose goal this is - patient goal, practitioner goal, etc.
  ReferenceBuilder? expressedBy;

  /// [addresses]
  /// The identified conditions and other health record elements that are
  /// intended to be addressed by the goal.
  List<ReferenceBuilder>? addresses;

  /// [note]
  /// Any comments related to the goal.
  List<AnnotationBuilder>? note;

  /// [outcomeCode]
  /// Identifies the change (or lack of change) at the point when the status
  /// of the goal is assessed.
  List<CodeableConceptBuilder>? outcomeCode;

  /// [outcomeReference]
  /// Details of what's changed (or not changed).
  List<ReferenceBuilder>? outcomeReference;

  /// Converts a [GoalBuilder]
  /// to [Goal]
  @override
  Goal build() => Goal.fromJson(toJson());

  /// Converts a [GoalBuilder]
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
    addField('identifier', identifier);
    addField('lifecycleStatus', lifecycleStatus);
    addField('achievementStatus', achievementStatus);
    addField('category', category);
    addField('priority', priority);
    addField('description', description);
    addField('subject', subject);
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField('start${fhirType.capitalize()}', startX);
    }

    addField('target', target);
    addField('statusDate', statusDate);
    addField('statusReason', statusReason);
    addField('expressedBy', expressedBy);
    addField('addresses', addresses);
    addField('note', note);
    addField('outcomeCode', outcomeCode);
    addField('outcomeReference', outcomeReference);
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
      'identifier',
      'lifecycleStatus',
      'achievementStatus',
      'category',
      'priority',
      'description',
      'subject',
      'startX',
      'target',
      'statusDate',
      'statusReason',
      'expressedBy',
      'addresses',
      'note',
      'outcomeCode',
      'outcomeReference',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'lifecycleStatus':
        if (lifecycleStatus != null) {
          fields.add(lifecycleStatus!);
        }
      case 'achievementStatus':
        if (achievementStatus != null) {
          fields.add(achievementStatus!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startDate':
        if (startX is FhirDateBuilder) {
          fields.add(startX!);
        }
      case 'startCodeableConcept':
        if (startX is CodeableConceptBuilder) {
          fields.add(startX!);
        }
      case 'target':
        if (target != null) {
          fields.addAll(target!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'expressedBy':
        if (expressedBy != null) {
          fields.add(expressedBy!);
        }
      case 'addresses':
        if (addresses != null) {
          fields.addAll(addresses!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'outcomeCode':
        if (outcomeCode != null) {
          fields.addAll(outcomeCode!);
        }
      case 'outcomeReference':
        if (outcomeReference != null) {
          fields.addAll(outcomeReference!);
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
            contained = [...(contained ?? []), child];
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lifecycleStatus':
        {
          if (child is GoalLifecycleStatusBuilder) {
            lifecycleStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'achievementStatus':
        {
          if (child is CodeableConceptBuilder) {
            achievementStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [...(category ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is CodeableConceptBuilder) {
            priority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is CodeableConceptBuilder) {
            description = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startX':
        {
          if (child is StartXGoalBuilder) {
            startX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              startX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              startX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startDate':
        {
          if (child is FhirDateBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'startCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is List<GoalTargetBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is GoalTargetBuilder) {
            // Add single element to existing list or create new list
            target = [...(target ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusDate':
        {
          if (child is FhirDateBuilder) {
            statusDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                statusDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusReason':
        {
          if (child is FhirStringBuilder) {
            statusReason = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                statusReason = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expressedBy':
        {
          if (child is ReferenceBuilder) {
            expressedBy = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'addresses':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            addresses = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            addresses = [...(addresses ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcomeCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            outcomeCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            outcomeCode = [...(outcomeCode ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcomeReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            outcomeReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            outcomeReference = [...(outcomeReference ?? []), child];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'lifecycleStatus':
        return ['FhirCodeEnumBuilder'];
      case 'achievementStatus':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'start':
      case 'startX':
        return ['FhirDateBuilder', 'CodeableConceptBuilder'];
      case 'startDate':
        return ['FhirDateBuilder'];
      case 'startCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'target':
        return ['GoalTargetBuilder'];
      case 'statusDate':
        return ['FhirDateBuilder'];
      case 'statusReason':
        return ['FhirStringBuilder'];
      case 'expressedBy':
        return ['ReferenceBuilder'];
      case 'addresses':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'outcomeCode':
        return ['CodeableConceptBuilder'];
      case 'outcomeReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GoalBuilder]
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'lifecycleStatus':
        {
          lifecycleStatus = GoalLifecycleStatusBuilder.empty();
          return;
        }
      case 'achievementStatus':
        {
          achievementStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'start':
      case 'startX':
      case 'startDate':
        {
          startX = FhirDateBuilder.empty();
          return;
        }
      case 'startCodeableConcept':
        {
          startX = CodeableConceptBuilder.empty();
          return;
        }
      case 'target':
        {
          target = <GoalTargetBuilder>[];
          return;
        }
      case 'statusDate':
        {
          statusDate = FhirDateBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = FhirStringBuilder.empty();
          return;
        }
      case 'expressedBy':
        {
          expressedBy = ReferenceBuilder.empty();
          return;
        }
      case 'addresses':
        {
          addresses = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'outcomeCode':
        {
          outcomeCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'outcomeReference':
        {
          outcomeReference = <ReferenceBuilder>[];
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
    bool identifier = false,
    bool lifecycleStatus = false,
    bool achievementStatus = false,
    bool category = false,
    bool priority = false,
    bool description = false,
    bool subject = false,
    bool start = false,
    bool target = false,
    bool statusDate = false,
    bool statusReason = false,
    bool expressedBy = false,
    bool addresses = false,
    bool note = false,
    bool outcomeCode = false,
    bool outcomeReference = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (lifecycleStatus) this.lifecycleStatus = null;
    if (achievementStatus) this.achievementStatus = null;
    if (category) this.category = null;
    if (priority) this.priority = null;
    if (description) this.description = null;
    if (subject) this.subject = null;
    if (start) startX = null;
    if (target) this.target = null;
    if (statusDate) this.statusDate = null;
    if (statusReason) this.statusReason = null;
    if (expressedBy) this.expressedBy = null;
    if (addresses) this.addresses = null;
    if (note) this.note = null;
    if (outcomeCode) this.outcomeCode = null;
    if (outcomeReference) this.outcomeReference = null;
  }

  @override
  GoalBuilder clone() => throw UnimplementedError();
  @override
  GoalBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    GoalLifecycleStatusBuilder? lifecycleStatus,
    CodeableConceptBuilder? achievementStatus,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? priority,
    CodeableConceptBuilder? description,
    ReferenceBuilder? subject,
    StartXGoalBuilder? startX,
    List<GoalTargetBuilder>? target,
    FhirDateBuilder? statusDate,
    FhirStringBuilder? statusReason,
    ReferenceBuilder? expressedBy,
    List<ReferenceBuilder>? addresses,
    List<AnnotationBuilder>? note,
    List<CodeableConceptBuilder>? outcomeCode,
    List<ReferenceBuilder>? outcomeReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = GoalBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      lifecycleStatus: lifecycleStatus ?? this.lifecycleStatus,
      achievementStatus: achievementStatus ?? this.achievementStatus,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      startX: startX ?? this.startX,
      target: target ?? this.target,
      statusDate: statusDate ?? this.statusDate,
      statusReason: statusReason ?? this.statusReason,
      expressedBy: expressedBy ?? this.expressedBy,
      addresses: addresses ?? this.addresses,
      note: note ?? this.note,
      outcomeCode: outcomeCode ?? this.outcomeCode,
      outcomeReference: outcomeReference ?? this.outcomeReference,
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
    if (o is! GoalBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lifecycleStatus,
      o.lifecycleStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      achievementStatus,
      o.achievementStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!listEquals<GoalTargetBuilder>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expressedBy,
      o.expressedBy,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      outcomeCode,
      o.outcomeCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      outcomeReference,
      o.outcomeReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [GoalTargetBuilder]
/// Indicates what should be done by when.
class GoalTargetBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [GoalTargetBuilder]

  GoalTargetBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailX,
    this.dueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Goal.target',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory GoalTargetBuilder.empty() => GoalTargetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GoalTargetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Goal.target';
    return GoalTargetBuilder(
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
      measure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'measure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.measure',
      ),
      detailX: JsonParser.parsePolymorphic<DetailXGoalTargetBuilder>(
        json,
        {
          'detailQuantity': QuantityBuilder.fromJson,
          'detailRange': RangeBuilder.fromJson,
          'detailCodeableConcept': CodeableConceptBuilder.fromJson,
          'detailString': FhirStringBuilder.fromJson,
          'detailBoolean': FhirBooleanBuilder.fromJson,
          'detailInteger': FhirIntegerBuilder.fromJson,
          'detailRatio': RatioBuilder.fromJson,
        },
        objectPath,
      ),
      dueX: JsonParser.parsePolymorphic<DueXGoalTargetBuilder>(
        json,
        {
          'dueDate': FhirDateBuilder.fromJson,
          'dueDuration': FhirDurationBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [GoalTargetBuilder]
  /// from a [String] or [YamlMap] object
  factory GoalTargetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GoalTargetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GoalTargetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GoalTargetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GoalTargetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GoalTargetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GoalTargetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GoalTarget';

  /// [measure]
  /// The parameter whose value is being tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  CodeableConceptBuilder? measure;

  /// [detailX]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  DetailXGoalTargetBuilder? detailX;

  /// Getter for [detailQuantity] as a QuantityBuilder
  QuantityBuilder? get detailQuantity => detailX?.isAs<QuantityBuilder>();

  /// Getter for [detailRange] as a RangeBuilder
  RangeBuilder? get detailRange => detailX?.isAs<RangeBuilder>();

  /// Getter for [detailCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get detailCodeableConcept =>
      detailX?.isAs<CodeableConceptBuilder>();

  /// Getter for [detailString] as a FhirStringBuilder
  FhirStringBuilder? get detailString => detailX?.isAs<FhirStringBuilder>();

  /// Getter for [detailBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get detailBoolean => detailX?.isAs<FhirBooleanBuilder>();

  /// Getter for [detailInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get detailInteger => detailX?.isAs<FhirIntegerBuilder>();

  /// Getter for [detailRatio] as a RatioBuilder
  RatioBuilder? get detailRatio => detailX?.isAs<RatioBuilder>();

  /// [dueX]
  /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  DueXGoalTargetBuilder? dueX;

  /// Getter for [dueDate] as a FhirDateBuilder
  FhirDateBuilder? get dueDate => dueX?.isAs<FhirDateBuilder>();

  /// Getter for [dueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get dueDuration => dueX?.isAs<FhirDurationBuilder>();

  /// Converts a [GoalTargetBuilder]
  /// to [GoalTarget]
  @override
  GoalTarget build() => GoalTarget.fromJson(toJson());

  /// Converts a [GoalTargetBuilder]
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
    addField('measure', measure);
    if (detailX != null) {
      final fhirType = detailX!.fhirType;
      addField('detail${fhirType.capitalize()}', detailX);
    }

    if (dueX != null) {
      final fhirType = dueX!.fhirType;
      addField('due${fhirType.capitalize()}', dueX);
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
      'measure',
      'detailX',
      'dueX',
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
      case 'measure':
        if (measure != null) {
          fields.add(measure!);
        }
      case 'detail':
        if (detailX != null) {
          fields.add(detailX!);
        }
      case 'detailX':
        if (detailX != null) {
          fields.add(detailX!);
        }
      case 'detailQuantity':
        if (detailX is QuantityBuilder) {
          fields.add(detailX!);
        }
      case 'detailRange':
        if (detailX is RangeBuilder) {
          fields.add(detailX!);
        }
      case 'detailCodeableConcept':
        if (detailX is CodeableConceptBuilder) {
          fields.add(detailX!);
        }
      case 'detailString':
        if (detailX is FhirStringBuilder) {
          fields.add(detailX!);
        }
      case 'detailBoolean':
        if (detailX is FhirBooleanBuilder) {
          fields.add(detailX!);
        }
      case 'detailInteger':
        if (detailX is FhirIntegerBuilder) {
          fields.add(detailX!);
        }
      case 'detailRatio':
        if (detailX is RatioBuilder) {
          fields.add(detailX!);
        }
      case 'due':
        if (dueX != null) {
          fields.add(dueX!);
        }
      case 'dueX':
        if (dueX != null) {
          fields.add(dueX!);
        }
      case 'dueDate':
        if (dueX is FhirDateBuilder) {
          fields.add(dueX!);
        }
      case 'dueDuration':
        if (dueX is FhirDurationBuilder) {
          fields.add(dueX!);
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'measure':
        {
          if (child is CodeableConceptBuilder) {
            measure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailX':
        {
          if (child is DetailXGoalTargetBuilder) {
            detailX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              detailX = child;
              return;
            }
            if (child is RangeBuilder) {
              detailX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              detailX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              detailX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              detailX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              detailX = child;
              return;
            }
            if (child is RatioBuilder) {
              detailX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailQuantity':
        {
          if (child is QuantityBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailRange':
        {
          if (child is RangeBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailString':
        {
          if (child is FhirStringBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailBoolean':
        {
          if (child is FhirBooleanBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailInteger':
        {
          if (child is FhirIntegerBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailRatio':
        {
          if (child is RatioBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dueX':
        {
          if (child is DueXGoalTargetBuilder) {
            dueX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              dueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              dueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dueDate':
        {
          if (child is FhirDateBuilder) {
            dueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dueDuration':
        {
          if (child is FhirDurationBuilder) {
            dueX = child;
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
      case 'measure':
        return ['CodeableConceptBuilder'];
      case 'detail':
      case 'detailX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'RatioBuilder',
        ];
      case 'detailQuantity':
        return ['QuantityBuilder'];
      case 'detailRange':
        return ['RangeBuilder'];
      case 'detailCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'detailString':
        return ['FhirStringBuilder'];
      case 'detailBoolean':
        return ['FhirBooleanBuilder'];
      case 'detailInteger':
        return ['FhirIntegerBuilder'];
      case 'detailRatio':
        return ['RatioBuilder'];
      case 'due':
      case 'dueX':
        return ['FhirDateBuilder', 'FhirDurationBuilder'];
      case 'dueDate':
        return ['FhirDateBuilder'];
      case 'dueDuration':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GoalTargetBuilder]
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
      case 'measure':
        {
          measure = CodeableConceptBuilder.empty();
          return;
        }
      case 'detail':
      case 'detailX':
      case 'detailQuantity':
        {
          detailX = QuantityBuilder.empty();
          return;
        }
      case 'detailRange':
        {
          detailX = RangeBuilder.empty();
          return;
        }
      case 'detailCodeableConcept':
        {
          detailX = CodeableConceptBuilder.empty();
          return;
        }
      case 'detailString':
        {
          detailX = FhirStringBuilder.empty();
          return;
        }
      case 'detailBoolean':
        {
          detailX = FhirBooleanBuilder.empty();
          return;
        }
      case 'detailInteger':
        {
          detailX = FhirIntegerBuilder.empty();
          return;
        }
      case 'detailRatio':
        {
          detailX = RatioBuilder.empty();
          return;
        }
      case 'due':
      case 'dueX':
      case 'dueDate':
        {
          dueX = FhirDateBuilder.empty();
          return;
        }
      case 'dueDuration':
        {
          dueX = FhirDurationBuilder.empty();
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
    bool measure = false,
    bool detail = false,
    bool due = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (measure) this.measure = null;
    if (detail) detailX = null;
    if (due) dueX = null;
  }

  @override
  GoalTargetBuilder clone() => throw UnimplementedError();
  @override
  GoalTargetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? measure,
    DetailXGoalTargetBuilder? detailX,
    DueXGoalTargetBuilder? dueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = GoalTargetBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      measure: measure ?? this.measure,
      detailX: detailX ?? this.detailX,
      dueX: dueX ?? this.dueX,
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
    if (o is! GoalTargetBuilder) {
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
      measure,
      o.measure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detailX,
      o.detailX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dueX,
      o.dueX,
    )) {
      return false;
    }
    return true;
  }
}
