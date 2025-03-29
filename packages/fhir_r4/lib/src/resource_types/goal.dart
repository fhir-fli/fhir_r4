import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Goal]
/// Describes the intended objective(s) for a patient, group or
/// organization care, for example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a
/// process improvement objective, etc.
class Goal extends DomainResource {
  /// Primary constructor for
  /// [Goal]

  const Goal({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.lifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Goal.empty() => Goal(
        lifecycleStatus: GoalLifecycleStatus.values.first,
        description: CodeableConcept.empty(),
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Goal.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Goal';
    return Goal(
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
      lifecycleStatus: JsonParser.parsePrimitive<GoalLifecycleStatus>(
        json,
        'lifecycleStatus',
        GoalLifecycleStatus.fromJson,
        '$objectPath.lifecycleStatus',
      )!,
      achievementStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'achievementStatus',
        CodeableConcept.fromJson,
        '$objectPath.achievementStatus',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
        '$objectPath.priority',
      ),
      description: JsonParser.parseObject<CodeableConcept>(
        json,
        'description',
        CodeableConcept.fromJson,
        '$objectPath.description',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      startX: JsonParser.parsePolymorphic<StartXGoal>(
        json,
        {
          'startDate': FhirDate.fromJson,
          'startCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      target: (json['target'] as List<dynamic>?)
          ?.map<GoalTarget>(
            (v) => GoalTarget.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      statusDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'statusDate',
        FhirDate.fromJson,
        '$objectPath.statusDate',
      ),
      statusReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'statusReason',
        FhirString.fromJson,
        '$objectPath.statusReason',
      ),
      expressedBy: JsonParser.parseObject<Reference>(
        json,
        'expressedBy',
        Reference.fromJson,
        '$objectPath.expressedBy',
      ),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addresses',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      outcomeCode: (json['outcomeCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcomeCode',
              },
            ),
          )
          .toList(),
      outcomeReference: (json['outcomeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcomeReference',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Goal]
  /// from a [String] or [YamlMap] object
  factory Goal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Goal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Goal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Goal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Goal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Goal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Goal.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [lifecycleStatus]
  /// The state of the goal throughout its lifecycle.
  final GoalLifecycleStatus lifecycleStatus;

  /// [achievementStatus]
  /// Describes the progression, or lack thereof, towards the goal against
  /// the target.
  final CodeableConcept? achievementStatus;

  /// [category]
  /// Indicates a category the goal falls within.
  final List<CodeableConcept>? category;

  /// [priority]
  /// Identifies the mutually agreed level of importance associated with
  /// reaching/sustaining the goal.
  final CodeableConcept? priority;

  /// [description]
  /// Human-readable and/or coded description of a specific desired objective
  /// of care, such as "control blood pressure" or "negotiate an obstacle
  /// course" or "dance with child at wedding".
  final CodeableConcept description;

  /// [subject]
  /// Identifies the patient, group or organization for whom the goal is
  /// being established.
  final Reference subject;

  /// [startX]
  /// The date or event after which the goal should begin being pursued.
  final StartXGoal? startX;

  /// Getter for [startDate] as a FhirDate
  FhirDate? get startDate => startX?.isAs<FhirDate>();

  /// Getter for [startCodeableConcept] as a CodeableConcept
  CodeableConcept? get startCodeableConcept => startX?.isAs<CodeableConcept>();

  /// [target]
  /// Indicates what should be done by when.
  final List<GoalTarget>? target;

  /// [statusDate]
  /// Identifies when the current status. I.e. When initially created, when
  /// achieved, when cancelled, etc.
  final FhirDate? statusDate;

  /// [statusReason]
  /// Captures the reason for the current status.
  final FhirString? statusReason;

  /// [expressedBy]
  /// Indicates whose goal this is - patient goal, practitioner goal, etc.
  final Reference? expressedBy;

  /// [addresses]
  /// The identified conditions and other health record elements that are
  /// intended to be addressed by the goal.
  final List<Reference>? addresses;

  /// [note]
  /// Any comments related to the goal.
  final List<Annotation>? note;

  /// [outcomeCode]
  /// Identifies the change (or lack of change) at the point when the status
  /// of the goal is assessed.
  final List<CodeableConcept>? outcomeCode;

  /// [outcomeReference]
  /// Details of what's changed (or not changed).
  final List<Reference>? outcomeReference;
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
      'identifier',
      identifier,
    );
    addField(
      'lifecycleStatus',
      lifecycleStatus,
    );
    addField(
      'achievementStatus',
      achievementStatus,
    );
    addField(
      'category',
      category,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'description',
      description,
    );
    addField(
      'subject',
      subject,
    );
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField(
        'start${fhirType.capitalize()}',
        startX,
      );
    }

    addField(
      'target',
      target,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'expressedBy',
      expressedBy,
    );
    addField(
      'addresses',
      addresses,
    );
    addField(
      'note',
      note,
    );
    addField(
      'outcomeCode',
      outcomeCode,
    );
    addField(
      'outcomeReference',
      outcomeReference,
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'lifecycleStatus':
        fields.add(lifecycleStatus);
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
        fields.add(description);
      case 'subject':
        fields.add(subject);
      case 'start':
        fields.add(startX!);
      case 'startX':
        fields.add(startX!);
      case 'startDate':
        if (startX is FhirDate) {
          fields.add(startX!);
        }
      case 'startCodeableConcept':
        if (startX is CodeableConcept) {
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
      case 'lifecycleStatus':
        {
          if (child is GoalLifecycleStatus) {
            return copyWith(lifecycleStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'achievementStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(achievementStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?category, ...child];
            return copyWith(category: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?category, child];
            return copyWith(category: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priority':
        {
          if (child is CodeableConcept) {
            return copyWith(priority: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is CodeableConcept) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'startX':
        {
          if (child is StartXGoal) {
            return copyWith(startX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(startX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(startX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(startX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'startCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(startX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'target':
        {
          if (child is List<GoalTarget>) {
            // Add all elements from passed list
            final newList = [...?target, ...child];
            return copyWith(target: newList);
          } else if (child is GoalTarget) {
            // Add single element to existing list or create new list
            final newList = [...?target, child];
            return copyWith(target: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusDate':
        {
          if (child is FhirDate) {
            return copyWith(statusDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is FhirString) {
            return copyWith(statusReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expressedBy':
        {
          if (child is Reference) {
            return copyWith(expressedBy: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addresses':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?addresses, ...child];
            return copyWith(addresses: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?addresses, child];
            return copyWith(addresses: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcomeCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?outcomeCode, ...child];
            return copyWith(outcomeCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?outcomeCode, child];
            return copyWith(outcomeCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcomeReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?outcomeReference, ...child];
            return copyWith(outcomeReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?outcomeReference, child];
            return copyWith(outcomeReference: newList);
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
      case 'identifier':
        return ['Identifier'];
      case 'lifecycleStatus':
        return ['FhirCode'];
      case 'achievementStatus':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'priority':
        return ['CodeableConcept'];
      case 'description':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'start':
      case 'startX':
        return ['FhirDate', 'CodeableConcept'];
      case 'startDate':
        return ['FhirDate'];
      case 'startCodeableConcept':
        return ['CodeableConcept'];
      case 'target':
        return ['GoalTarget'];
      case 'statusDate':
        return ['FhirDate'];
      case 'statusReason':
        return ['FhirString'];
      case 'expressedBy':
        return ['Reference'];
      case 'addresses':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'outcomeCode':
        return ['CodeableConcept'];
      case 'outcomeReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Goal]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Goal createProperty(
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
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'lifecycleStatus':
        {
          return copyWith(
            lifecycleStatus: GoalLifecycleStatus.empty(),
          );
        }
      case 'achievementStatus':
        {
          return copyWith(
            achievementStatus: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'priority':
        {
          return copyWith(
            priority: CodeableConcept.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'start':
      case 'startX':
      case 'startDate':
        {
          return copyWith(
            startX: FhirDate.empty(),
          );
        }
      case 'startCodeableConcept':
        {
          return copyWith(
            startX: CodeableConcept.empty(),
          );
        }
      case 'target':
        {
          return copyWith(
            target: <GoalTarget>[],
          );
        }
      case 'statusDate':
        {
          return copyWith(
            statusDate: FhirDate.empty(),
          );
        }
      case 'statusReason':
        {
          return copyWith(
            statusReason: FhirString.empty(),
          );
        }
      case 'expressedBy':
        {
          return copyWith(
            expressedBy: Reference.empty(),
          );
        }
      case 'addresses':
        {
          return copyWith(
            addresses: <Reference>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'outcomeCode':
        {
          return copyWith(
            outcomeCode: <CodeableConcept>[],
          );
        }
      case 'outcomeReference':
        {
          return copyWith(
            outcomeReference: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Goal clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool achievementStatus = false,
    bool category = false,
    bool priority = false,
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
    return Goal(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      lifecycleStatus: lifecycleStatus,
      achievementStatus: achievementStatus ? null : this.achievementStatus,
      category: category ? null : this.category,
      priority: priority ? null : this.priority,
      description: description,
      subject: subject,
      startX: start ? null : startX,
      target: target ? null : this.target,
      statusDate: statusDate ? null : this.statusDate,
      statusReason: statusReason ? null : this.statusReason,
      expressedBy: expressedBy ? null : this.expressedBy,
      addresses: addresses ? null : this.addresses,
      note: note ? null : this.note,
      outcomeCode: outcomeCode ? null : this.outcomeCode,
      outcomeReference: outcomeReference ? null : this.outcomeReference,
    );
  }

  @override
  Goal clone() => throw UnimplementedError();
  @override
  Goal copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    GoalLifecycleStatus? lifecycleStatus,
    CodeableConcept? achievementStatus,
    List<CodeableConcept>? category,
    CodeableConcept? priority,
    CodeableConcept? description,
    Reference? subject,
    StartXGoal? startX,
    List<GoalTarget>? target,
    FhirDate? statusDate,
    FhirString? statusReason,
    Reference? expressedBy,
    List<Reference>? addresses,
    List<Annotation>? note,
    List<CodeableConcept>? outcomeCode,
    List<Reference>? outcomeReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Goal(
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
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      lifecycleStatus: lifecycleStatus?.copyWith(
            objectPath: '$newObjectPath.lifecycleStatus',
          ) ??
          this.lifecycleStatus,
      achievementStatus: achievementStatus?.copyWith(
            objectPath: '$newObjectPath.achievementStatus',
          ) ??
          this.achievementStatus,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      startX: startX?.copyWith(
            objectPath: '$newObjectPath.startX',
          ) as StartXGoal? ??
          this.startX,
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
      statusDate: statusDate?.copyWith(
            objectPath: '$newObjectPath.statusDate',
          ) ??
          this.statusDate,
      statusReason: statusReason?.copyWith(
            objectPath: '$newObjectPath.statusReason',
          ) ??
          this.statusReason,
      expressedBy: expressedBy?.copyWith(
            objectPath: '$newObjectPath.expressedBy',
          ) ??
          this.expressedBy,
      addresses: addresses
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.addresses',
                ),
              )
              .toList() ??
          this.addresses,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      outcomeCode: outcomeCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.outcomeCode',
                ),
              )
              .toList() ??
          this.outcomeCode,
      outcomeReference: outcomeReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.outcomeReference',
                ),
              )
              .toList() ??
          this.outcomeReference,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Goal) {
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
    if (!listEquals<Identifier>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<GoalTarget>(
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
    if (!listEquals<Reference>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      outcomeCode,
      o.outcomeCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      outcomeReference,
      o.outcomeReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [GoalTarget]
/// Indicates what should be done by when.
class GoalTarget extends BackboneElement {
  /// Primary constructor for
  /// [GoalTarget]

  const GoalTarget({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory GoalTarget.empty() => const GoalTarget();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GoalTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Goal.target';
    return GoalTarget(
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
      measure: JsonParser.parseObject<CodeableConcept>(
        json,
        'measure',
        CodeableConcept.fromJson,
        '$objectPath.measure',
      ),
      detailX: JsonParser.parsePolymorphic<DetailXGoalTarget>(
        json,
        {
          'detailQuantity': Quantity.fromJson,
          'detailRange': Range.fromJson,
          'detailCodeableConcept': CodeableConcept.fromJson,
          'detailString': FhirString.fromJson,
          'detailBoolean': FhirBoolean.fromJson,
          'detailInteger': FhirInteger.fromJson,
          'detailRatio': Ratio.fromJson,
        },
        objectPath,
      ),
      dueX: JsonParser.parsePolymorphic<DueXGoalTarget>(
        json,
        {
          'dueDate': FhirDate.fromJson,
          'dueDuration': FhirDuration.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [GoalTarget]
  /// from a [String] or [YamlMap] object
  factory GoalTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GoalTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GoalTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GoalTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GoalTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GoalTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GoalTarget.fromJson(json);
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
  final CodeableConcept? measure;

  /// [detailX]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final DetailXGoalTarget? detailX;

  /// Getter for [detailQuantity] as a Quantity
  Quantity? get detailQuantity => detailX?.isAs<Quantity>();

  /// Getter for [detailRange] as a Range
  Range? get detailRange => detailX?.isAs<Range>();

  /// Getter for [detailCodeableConcept] as a CodeableConcept
  CodeableConcept? get detailCodeableConcept =>
      detailX?.isAs<CodeableConcept>();

  /// Getter for [detailString] as a FhirString
  FhirString? get detailString => detailX?.isAs<FhirString>();

  /// Getter for [detailBoolean] as a FhirBoolean
  FhirBoolean? get detailBoolean => detailX?.isAs<FhirBoolean>();

  /// Getter for [detailInteger] as a FhirInteger
  FhirInteger? get detailInteger => detailX?.isAs<FhirInteger>();

  /// Getter for [detailRatio] as a Ratio
  Ratio? get detailRatio => detailX?.isAs<Ratio>();

  /// [dueX]
  /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  final DueXGoalTarget? dueX;

  /// Getter for [dueDate] as a FhirDate
  FhirDate? get dueDate => dueX?.isAs<FhirDate>();

  /// Getter for [dueDuration] as a FhirDuration
  FhirDuration? get dueDuration => dueX?.isAs<FhirDuration>();
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
      'measure',
      measure,
    );
    if (detailX != null) {
      final fhirType = detailX!.fhirType;
      addField(
        'detail${fhirType.capitalize()}',
        detailX,
      );
    }

    if (dueX != null) {
      final fhirType = dueX!.fhirType;
      addField(
        'due${fhirType.capitalize()}',
        dueX,
      );
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
      case 'measure':
        if (measure != null) {
          fields.add(measure!);
        }
      case 'detail':
        fields.add(detailX!);
      case 'detailX':
        fields.add(detailX!);
      case 'detailQuantity':
        if (detailX is Quantity) {
          fields.add(detailX!);
        }
      case 'detailRange':
        if (detailX is Range) {
          fields.add(detailX!);
        }
      case 'detailCodeableConcept':
        if (detailX is CodeableConcept) {
          fields.add(detailX!);
        }
      case 'detailString':
        if (detailX is FhirString) {
          fields.add(detailX!);
        }
      case 'detailBoolean':
        if (detailX is FhirBoolean) {
          fields.add(detailX!);
        }
      case 'detailInteger':
        if (detailX is FhirInteger) {
          fields.add(detailX!);
        }
      case 'detailRatio':
        if (detailX is Ratio) {
          fields.add(detailX!);
        }
      case 'due':
        fields.add(dueX!);
      case 'dueX':
        fields.add(dueX!);
      case 'dueDate':
        if (dueX is FhirDate) {
          fields.add(dueX!);
        }
      case 'dueDuration':
        if (dueX is FhirDuration) {
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
      case 'measure':
        {
          if (child is CodeableConcept) {
            return copyWith(measure: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailX':
        {
          if (child is DetailXGoalTarget) {
            return copyWith(detailX: child);
          } else {
            if (child is Quantity) {
              return copyWith(detailX: child);
            }
            if (child is Range) {
              return copyWith(detailX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(detailX: child);
            }
            if (child is FhirString) {
              return copyWith(detailX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(detailX: child);
            }
            if (child is FhirInteger) {
              return copyWith(detailX: child);
            }
            if (child is Ratio) {
              return copyWith(detailX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailQuantity':
        {
          if (child is Quantity) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailRange':
        {
          if (child is Range) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailFhirString':
        {
          if (child is FhirString) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailRatio':
        {
          if (child is Ratio) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dueX':
        {
          if (child is DueXGoalTarget) {
            return copyWith(dueX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(dueX: child);
            }
            if (child is FhirDuration) {
              return copyWith(dueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(dueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(dueX: child);
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
      case 'measure':
        return ['CodeableConcept'];
      case 'detail':
      case 'detailX':
        return [
          'Quantity',
          'Range',
          'CodeableConcept',
          'FhirString',
          'FhirBoolean',
          'FhirInteger',
          'Ratio'
        ];
      case 'detailQuantity':
        return ['Quantity'];
      case 'detailRange':
        return ['Range'];
      case 'detailCodeableConcept':
        return ['CodeableConcept'];
      case 'detailString':
        return ['FhirString'];
      case 'detailBoolean':
        return ['FhirBoolean'];
      case 'detailInteger':
        return ['FhirInteger'];
      case 'detailRatio':
        return ['Ratio'];
      case 'due':
      case 'dueX':
        return ['FhirDate', 'FhirDuration'];
      case 'dueDate':
        return ['FhirDate'];
      case 'dueDuration':
        return ['FhirDuration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GoalTarget]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  GoalTarget createProperty(
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
      case 'measure':
        {
          return copyWith(
            measure: CodeableConcept.empty(),
          );
        }
      case 'detail':
      case 'detailX':
      case 'detailQuantity':
        {
          return copyWith(
            detailX: Quantity.empty(),
          );
        }
      case 'detailRange':
        {
          return copyWith(
            detailX: Range.empty(),
          );
        }
      case 'detailCodeableConcept':
        {
          return copyWith(
            detailX: CodeableConcept.empty(),
          );
        }
      case 'detailString':
        {
          return copyWith(
            detailX: FhirString.empty(),
          );
        }
      case 'detailBoolean':
        {
          return copyWith(
            detailX: FhirBoolean.empty(),
          );
        }
      case 'detailInteger':
        {
          return copyWith(
            detailX: FhirInteger.empty(),
          );
        }
      case 'detailRatio':
        {
          return copyWith(
            detailX: Ratio.empty(),
          );
        }
      case 'due':
      case 'dueX':
      case 'dueDate':
        {
          return copyWith(
            dueX: FhirDate.empty(),
          );
        }
      case 'dueDuration':
        {
          return copyWith(
            dueX: FhirDuration.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  GoalTarget clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool measure = false,
    bool detail = false,
    bool due = false,
  }) {
    return GoalTarget(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      measure: measure ? null : this.measure,
      detailX: detail ? null : detailX,
      dueX: due ? null : dueX,
    );
  }

  @override
  GoalTarget clone() => throw UnimplementedError();
  @override
  GoalTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? measure,
    DetailXGoalTarget? detailX,
    DueXGoalTarget? dueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return GoalTarget(
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
      measure: measure?.copyWith(
            objectPath: '$newObjectPath.measure',
          ) ??
          this.measure,
      detailX: detailX?.copyWith(
            objectPath: '$newObjectPath.detailX',
          ) as DetailXGoalTarget? ??
          this.detailX,
      dueX: dueX?.copyWith(
            objectPath: '$newObjectPath.dueX',
          ) as DueXGoalTarget? ??
          this.dueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GoalTarget) {
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
