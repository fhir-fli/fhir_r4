import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CarePlan]
/// Describes the intention of how one or more practitioners intend to
/// deliver care for a particular patient, group or community for a period
/// of time, possibly limited to care for a specific condition or set of
/// conditions.
class CarePlan extends DomainResource {
  /// Primary constructor for
  /// [CarePlan]

  const CarePlan({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.replaces,
    this.partOf,
    required this.status,
    required this.intent,
    this.category,
    this.title,
    this.description,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  }) : super(
          objectPath: 'CarePlan',
          resourceType: R4ResourceType.CarePlan,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CarePlan.empty() => CarePlan(
        status: RequestStatus.values.first,
        intent: CarePlanIntent.values.first,
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlan.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CarePlan';
    return CarePlan(
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.replaces',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
        '$objectPath.status',
      )!,
      intent: JsonParser.parsePrimitive<CarePlanIntent>(
        json,
        'intent',
        CarePlanIntent.fromJson,
        '$objectPath.intent',
      )!,
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      contributor: (json['contributor'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contributor',
              },
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.careTeam',
              },
            ),
          )
          .toList(),
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
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.goal',
              },
            ),
          )
          .toList(),
      activity: (json['activity'] as List<dynamic>?)
          ?.map<CarePlanActivity>(
            (v) => CarePlanActivity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.activity',
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
    );
  }

  /// Deserialize [CarePlan]
  /// from a [String] or [YamlMap] object
  factory CarePlan.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlan.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlan.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlan '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlan.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CarePlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CarePlan';

  /// [identifier]
  /// Business identifiers assigned to this care plan by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A care plan that is fulfilled in whole or in part by this care plan.
  final List<Reference>? basedOn;

  /// [replaces]
  /// Completed or terminated care plan whose function is taken by this new
  /// care plan.
  final List<Reference>? replaces;

  /// [partOf]
  /// A larger care plan of which this particular care plan is a component or
  /// step.
  final List<Reference>? partOf;

  /// [status]
  /// Indicates whether the plan is currently being acted upon, represents
  /// future intentions or is now a historical record.
  final RequestStatus status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// care plan and where the care plan fits into the workflow chain.
  final CarePlanIntent intent;

  /// [category]
  /// Identifies what "kind" of plan this is to support differentiation
  /// between multiple co-existing plans; e.g. "Home health", "psychiatric",
  /// "asthma", "disease management", "wellness plan", etc.
  final List<CodeableConcept>? category;

  /// [title]
  /// Human-friendly name for the care plan.
  final FhirString? title;

  /// [description]
  /// A description of the scope and nature of the plan.
  final FhirString? description;

  /// [subject]
  /// Identifies the patient or group whose intended care is described by the
  /// plan.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this CarePlan was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [period]
  /// Indicates when the plan did (or is intended to) come into effect and
  /// end.
  final Period? period;

  /// [created]
  /// Represents when this particular CarePlan record was created in the
  /// system, which is often a system-generated date.
  final FhirDateTime? created;

  /// [author]
  /// When populated, the author is responsible for the care plan. The care
  /// plan is attributed to the author.
  final Reference? author;

  /// [contributor]
  /// Identifies the individual(s) or organization who provided the contents
  /// of the care plan.
  final List<Reference>? contributor;

  /// [careTeam]
  /// Identifies all people and organizations who are expected to be involved
  /// in the care envisioned by this plan.
  final List<Reference>? careTeam;

  /// [addresses]
  /// Identifies the conditions/problems/concerns/diagnoses/etc. whose
  /// management and/or mitigation are handled by this plan.
  final List<Reference>? addresses;

  /// [supportingInfo]
  /// Identifies portions of the patient's record that specifically
  /// influenced the formation of the plan. These might include
  /// comorbidities, recent procedures, limitations, recent assessments, etc.
  final List<Reference>? supportingInfo;

  /// [goal]
  /// Describes the intended objective(s) of carrying out the care plan.
  final List<Reference>? goal;

  /// [activity]
  /// Identifies a planned action to occur as part of the plan. For example,
  /// a medication to be used, lab tests to perform, self-monitoring,
  /// education, etc.
  final List<CarePlanActivity>? activity;

  /// [note]
  /// General notes about the care plan not covered elsewhere.
  final List<Annotation>? note;
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
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'replaces',
      replaces,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'category',
      category,
    );
    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'period',
      period,
    );
    addField(
      'created',
      created,
    );
    addField(
      'author',
      author,
    );
    addField(
      'contributor',
      contributor,
    );
    addField(
      'careTeam',
      careTeam,
    );
    addField(
      'addresses',
      addresses,
    );
    addField(
      'supportingInfo',
      supportingInfo,
    );
    addField(
      'goal',
      goal,
    );
    addField(
      'activity',
      activity,
    );
    addField(
      'note',
      note,
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
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'replaces',
      'partOf',
      'status',
      'intent',
      'category',
      'title',
      'description',
      'subject',
      'encounter',
      'period',
      'created',
      'author',
      'contributor',
      'careTeam',
      'addresses',
      'supportingInfo',
      'goal',
      'activity',
      'note',
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
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'intent':
        fields.add(intent);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'contributor':
        if (contributor != null) {
          fields.addAll(contributor!);
        }
      case 'careTeam':
        if (careTeam != null) {
          fields.addAll(careTeam!);
        }
      case 'addresses':
        if (addresses != null) {
          fields.addAll(addresses!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'goal':
        if (goal != null) {
          fields.addAll(goal!);
        }
      case 'activity':
        if (activity != null) {
          fields.addAll(activity!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
            final newList = [
              ...?contained,
              child,
            ];
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?instantiatesCanonical, ...child];
            return copyWith(instantiatesCanonical: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiatesCanonical,
              child,
            ];
            return copyWith(instantiatesCanonical: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?instantiatesUri, ...child];
            return copyWith(instantiatesUri: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiatesUri,
              child,
            ];
            return copyWith(instantiatesUri: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?basedOn, ...child];
            return copyWith(basedOn: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?basedOn,
              child,
            ];
            return copyWith(basedOn: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'replaces':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?replaces, ...child];
            return copyWith(replaces: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?replaces,
              child,
            ];
            return copyWith(replaces: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?partOf, ...child];
            return copyWith(partOf: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?partOf,
              child,
            ];
            return copyWith(partOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is RequestStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'intent':
        {
          if (child is CarePlanIntent) {
            return copyWith(intent: child);
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
            final newList = [
              ...?category,
              child,
            ];
            return copyWith(category: newList);
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
      case 'description':
        {
          if (child is FhirString) {
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
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'created':
        {
          if (child is FhirDateTime) {
            return copyWith(created: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is Reference) {
            return copyWith(author: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contributor':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?contributor, ...child];
            return copyWith(contributor: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contributor,
              child,
            ];
            return copyWith(contributor: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'careTeam':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?careTeam, ...child];
            return copyWith(careTeam: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?careTeam,
              child,
            ];
            return copyWith(careTeam: newList);
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
            final newList = [
              ...?addresses,
              child,
            ];
            return copyWith(addresses: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?supportingInfo, ...child];
            return copyWith(supportingInfo: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?supportingInfo,
              child,
            ];
            return copyWith(supportingInfo: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'goal':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?goal, ...child];
            return copyWith(goal: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?goal,
              child,
            ];
            return copyWith(goal: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'activity':
        {
          if (child is List<CarePlanActivity>) {
            // Add all elements from passed list
            final newList = [...?activity, ...child];
            return copyWith(activity: newList);
          } else if (child is CarePlanActivity) {
            // Add single element to existing list or create new list
            final newList = [
              ...?activity,
              child,
            ];
            return copyWith(activity: newList);
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
            final newList = [
              ...?note,
              child,
            ];
            return copyWith(note: newList);
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
      case 'instantiatesCanonical':
        return ['FhirCanonical'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'basedOn':
        return ['Reference'];
      case 'replaces':
        return ['Reference'];
      case 'partOf':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'intent':
        return ['FhirCode'];
      case 'category':
        return ['CodeableConcept'];
      case 'title':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'period':
        return ['Period'];
      case 'created':
        return ['FhirDateTime'];
      case 'author':
        return ['Reference'];
      case 'contributor':
        return ['Reference'];
      case 'careTeam':
        return ['Reference'];
      case 'addresses':
        return ['Reference'];
      case 'supportingInfo':
        return ['Reference'];
      case 'goal':
        return ['Reference'];
      case 'activity':
        return ['CarePlanActivity'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CarePlan]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CarePlan createProperty(
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
      case 'instantiatesCanonical':
        {
          return copyWith(
            instantiatesCanonical: <FhirCanonical>[],
          );
        }
      case 'instantiatesUri':
        {
          return copyWith(
            instantiatesUri: <FhirUri>[],
          );
        }
      case 'basedOn':
        {
          return copyWith(
            basedOn: <Reference>[],
          );
        }
      case 'replaces':
        {
          return copyWith(
            replaces: <Reference>[],
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: <Reference>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: RequestStatus.empty(),
          );
        }
      case 'intent':
        {
          return copyWith(
            intent: CarePlanIntent.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'encounter':
        {
          return copyWith(
            encounter: Reference.empty(),
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      case 'created':
        {
          return copyWith(
            created: FhirDateTime.empty(),
          );
        }
      case 'author':
        {
          return copyWith(
            author: Reference.empty(),
          );
        }
      case 'contributor':
        {
          return copyWith(
            contributor: <Reference>[],
          );
        }
      case 'careTeam':
        {
          return copyWith(
            careTeam: <Reference>[],
          );
        }
      case 'addresses':
        {
          return copyWith(
            addresses: <Reference>[],
          );
        }
      case 'supportingInfo':
        {
          return copyWith(
            supportingInfo: <Reference>[],
          );
        }
      case 'goal':
        {
          return copyWith(
            goal: <Reference>[],
          );
        }
      case 'activity':
        {
          return copyWith(
            activity: <CarePlanActivity>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CarePlan clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool instantiatesCanonical = false,
    bool instantiatesUri = false,
    bool basedOn = false,
    bool replaces = false,
    bool partOf = false,
    bool category = false,
    bool title = false,
    bool description = false,
    bool encounter = false,
    bool period = false,
    bool created = false,
    bool author = false,
    bool contributor = false,
    bool careTeam = false,
    bool addresses = false,
    bool supportingInfo = false,
    bool goal = false,
    bool activity = false,
    bool note = false,
  }) {
    return CarePlan(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ? null : this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ? null : this.instantiatesUri,
      basedOn: basedOn ? null : this.basedOn,
      replaces: replaces ? null : this.replaces,
      partOf: partOf ? null : this.partOf,
      status: status,
      intent: intent,
      category: category ? null : this.category,
      title: title ? null : this.title,
      description: description ? null : this.description,
      subject: subject,
      encounter: encounter ? null : this.encounter,
      period: period ? null : this.period,
      created: created ? null : this.created,
      author: author ? null : this.author,
      contributor: contributor ? null : this.contributor,
      careTeam: careTeam ? null : this.careTeam,
      addresses: addresses ? null : this.addresses,
      supportingInfo: supportingInfo ? null : this.supportingInfo,
      goal: goal ? null : this.goal,
      activity: activity ? null : this.activity,
      note: note ? null : this.note,
    );
  }

  @override
  CarePlan clone() => throw UnimplementedError();
  @override
  CarePlan copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    List<Reference>? partOf,
    RequestStatus? status,
    CarePlanIntent? intent,
    List<CodeableConcept>? category,
    FhirString? title,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    Period? period,
    FhirDateTime? created,
    Reference? author,
    List<Reference>? contributor,
    List<Reference>? careTeam,
    List<Reference>? addresses,
    List<Reference>? supportingInfo,
    List<Reference>? goal,
    List<CarePlanActivity>? activity,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CarePlan(
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
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      replaces: replaces
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.replaces',
                ),
              )
              .toList() ??
          this.replaces,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      contributor: contributor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contributor',
                ),
              )
              .toList() ??
          this.contributor,
      careTeam: careTeam
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.careTeam',
                ),
              )
              .toList() ??
          this.careTeam,
      addresses: addresses
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.addresses',
                ),
              )
              .toList() ??
          this.addresses,
      supportingInfo: supportingInfo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInfo',
                ),
              )
              .toList() ??
          this.supportingInfo,
      goal: goal
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.goal',
                ),
              )
              .toList() ??
          this.goal,
      activity: activity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.activity',
                ),
              )
              .toList() ??
          this.activity,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CarePlan) {
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
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
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
      intent,
      o.intent,
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
      title,
      o.title,
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
      encounter,
      o.encounter,
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
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      contributor,
      o.contributor,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<CarePlanActivity>(
      activity,
      o.activity,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [CarePlanActivity]
/// Identifies a planned action to occur as part of the plan. For example,
/// a medication to be used, lab tests to perform, self-monitoring,
/// education, etc.
class CarePlanActivity extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanActivity]

  const CarePlanActivity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CarePlan.activity',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CarePlanActivity.empty() => const CarePlanActivity();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanActivity.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CarePlan.activity';
    return CarePlanActivity(
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
      outcomeCodeableConcept: (json['outcomeCodeableConcept'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.outcomeCodeableConcept',
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
      progress: (json['progress'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.progress',
              },
            ),
          )
          .toList(),
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
        '$objectPath.reference',
      ),
      detail: JsonParser.parseObject<CarePlanDetail>(
        json,
        'detail',
        CarePlanDetail.fromJson,
        '$objectPath.detail',
      ),
    );
  }

  /// Deserialize [CarePlanActivity]
  /// from a [String] or [YamlMap] object
  factory CarePlanActivity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlanActivity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlanActivity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlanActivity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlanActivity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanActivity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CarePlanActivity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CarePlanActivity';

  /// [outcomeCodeableConcept]
  /// Identifies the outcome at the point when the status of the activity is
  /// assessed. For example, the outcome of an education activity could be
  /// patient understands (or not).
  final List<CodeableConcept>? outcomeCodeableConcept;

  /// [outcomeReference]
  /// Details of the outcome or action resulting from the activity. The
  /// reference to an "event" resource, such as Procedure or Encounter or
  /// Observation, is the result/outcome of the activity itself. The activity
  /// can be conveyed using CarePlan.activity.detail OR using the
  /// CarePlan.activity.reference (a reference to a “request” resource).
  final List<Reference>? outcomeReference;

  /// [progress]
  /// Notes about the adherence/status/progress of the activity.
  final List<Annotation>? progress;

  /// [reference]
  /// The details of the proposed activity represented in a specific
  /// resource.
  final Reference? reference;

  /// [detail]
  /// A simple summary of a planned activity suitable for a general care plan
  /// system (e.g. form driven) that doesn't know about specific resources
  /// such as procedure etc.
  final CarePlanDetail? detail;
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
      'outcomeCodeableConcept',
      outcomeCodeableConcept,
    );
    addField(
      'outcomeReference',
      outcomeReference,
    );
    addField(
      'progress',
      progress,
    );
    addField(
      'reference',
      reference,
    );
    addField(
      'detail',
      detail,
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
      'outcomeCodeableConcept',
      'outcomeReference',
      'progress',
      'reference',
      'detail',
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
      case 'outcomeCodeableConcept':
        if (outcomeCodeableConcept != null) {
          fields.addAll(outcomeCodeableConcept!);
        }
      case 'outcomeReference':
        if (outcomeReference != null) {
          fields.addAll(outcomeReference!);
        }
      case 'progress':
        if (progress != null) {
          fields.addAll(progress!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'detail':
        if (detail != null) {
          fields.add(detail!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcomeCodeableConcept':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?outcomeCodeableConcept, ...child];
            return copyWith(outcomeCodeableConcept: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?outcomeCodeableConcept,
              child,
            ];
            return copyWith(outcomeCodeableConcept: newList);
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
            final newList = [
              ...?outcomeReference,
              child,
            ];
            return copyWith(outcomeReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'progress':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?progress, ...child];
            return copyWith(progress: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?progress,
              child,
            ];
            return copyWith(progress: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is Reference) {
            return copyWith(reference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is CarePlanDetail) {
            return copyWith(detail: child);
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
      case 'outcomeCodeableConcept':
        return ['CodeableConcept'];
      case 'outcomeReference':
        return ['Reference'];
      case 'progress':
        return ['Annotation'];
      case 'reference':
        return ['Reference'];
      case 'detail':
        return ['CarePlanDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CarePlanActivity]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CarePlanActivity createProperty(
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
      case 'outcomeCodeableConcept':
        {
          return copyWith(
            outcomeCodeableConcept: <CodeableConcept>[],
          );
        }
      case 'outcomeReference':
        {
          return copyWith(
            outcomeReference: <Reference>[],
          );
        }
      case 'progress':
        {
          return copyWith(
            progress: <Annotation>[],
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: Reference.empty(),
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: CarePlanDetail.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CarePlanActivity clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool outcomeCodeableConcept = false,
    bool outcomeReference = false,
    bool progress = false,
    bool reference = false,
    bool detail = false,
  }) {
    return CarePlanActivity(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      outcomeCodeableConcept:
          outcomeCodeableConcept ? null : this.outcomeCodeableConcept,
      outcomeReference: outcomeReference ? null : this.outcomeReference,
      progress: progress ? null : this.progress,
      reference: reference ? null : this.reference,
      detail: detail ? null : this.detail,
    );
  }

  @override
  CarePlanActivity clone() => throw UnimplementedError();
  @override
  CarePlanActivity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? outcomeCodeableConcept,
    List<Reference>? outcomeReference,
    List<Annotation>? progress,
    Reference? reference,
    CarePlanDetail? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CarePlanActivity(
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
      outcomeCodeableConcept: outcomeCodeableConcept
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.outcomeCodeableConcept',
                ),
              )
              .toList() ??
          this.outcomeCodeableConcept,
      outcomeReference: outcomeReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.outcomeReference',
                ),
              )
              .toList() ??
          this.outcomeReference,
      progress: progress
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.progress',
                ),
              )
              .toList() ??
          this.progress,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      detail: detail?.copyWith(
            objectPath: '$newObjectPath.detail',
          ) ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CarePlanActivity) {
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
    if (!listEquals<CodeableConcept>(
      outcomeCodeableConcept,
      o.outcomeCodeableConcept,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      outcomeReference,
      o.outcomeReference,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      progress,
      o.progress,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [CarePlanDetail]
/// A simple summary of a planned activity suitable for a general care plan
/// system (e.g. form driven) that doesn't know about specific resources
/// such as procedure etc.
class CarePlanDetail extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanDetail]

  const CarePlanDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    required this.status,
    this.statusReason,
    this.doNotPerform,
    this.scheduledX,
    this.location,
    this.performer,
    this.productX,
    this.dailyAmount,
    this.quantity,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CarePlan.activity.detail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CarePlanDetail.empty() => CarePlanDetail(
        status: CarePlanActivityStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CarePlan.activity.detail';
    return CarePlanDetail(
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
      kind: JsonParser.parsePrimitive<CarePlanActivityKind>(
        json,
        'kind',
        CarePlanActivityKind.fromJson,
        '$objectPath.kind',
      ),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.goal',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<CarePlanActivityStatus>(
        json,
        'status',
        CarePlanActivityStatus.fromJson,
        '$objectPath.status',
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
        '$objectPath.statusReason',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
        '$objectPath.doNotPerform',
      ),
      scheduledX: JsonParser.parsePolymorphic<ScheduledXCarePlanDetail>(
        json,
        {
          'scheduledTiming': Timing.fromJson,
          'scheduledPeriod': Period.fromJson,
          'scheduledString': FhirString.fromJson,
        },
        objectPath,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXCarePlanDetail>(
        json,
        {
          'productCodeableConcept': CodeableConcept.fromJson,
          'productReference': Reference.fromJson,
        },
        objectPath,
      ),
      dailyAmount: JsonParser.parseObject<Quantity>(
        json,
        'dailyAmount',
        Quantity.fromJson,
        '$objectPath.dailyAmount',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [CarePlanDetail]
  /// from a [String] or [YamlMap] object
  factory CarePlanDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlanDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlanDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlanDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlanDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CarePlanDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CarePlanDetail';

  /// [kind]
  /// A description of the kind of resource the in-line definition of a care
  /// plan activity is representing. The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference. For example, a MedicationRequest, a
  /// ServiceRequest, or a CommunicationRequest.
  final CarePlanActivityKind? kind;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan activity.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan activity.
  final List<FhirUri>? instantiatesUri;

  /// [code]
  /// Detailed description of the type of planned activity; e.g. what lab
  /// test, what procedure, what kind of encounter.
  final CodeableConcept? code;

  /// [reasonCode]
  /// Provides the rationale that drove the inclusion of this particular
  /// activity as part of the plan or the reason why the activity was
  /// prohibited.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource, such as the health condition(s), whose
  /// existence justifies this request and drove the inclusion of this
  /// particular activity as part of the plan.
  final List<Reference>? reasonReference;

  /// [goal]
  /// Internal reference that identifies the goals that this activity is
  /// intended to contribute towards meeting.
  final List<Reference>? goal;

  /// [status]
  /// Identifies what progress is being made for the specific activity.
  final CarePlanActivityStatus status;

  /// [statusReason]
  /// Provides reason why the activity isn't yet started, is on hold, was
  /// cancelled, etc.
  final CodeableConcept? statusReason;

  /// [doNotPerform]
  /// If true, indicates that the described activity is one that must NOT be
  /// engaged in when following the plan. If false, or missing, indicates
  /// that the described activity is one that should be engaged in when
  /// following the plan.
  final FhirBoolean? doNotPerform;

  /// [scheduledX]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final ScheduledXCarePlanDetail? scheduledX;

  /// Getter for [scheduledTiming] as a Timing
  Timing? get scheduledTiming => scheduledX?.isAs<Timing>();

  /// Getter for [scheduledPeriod] as a Period
  Period? get scheduledPeriod => scheduledX?.isAs<Period>();

  /// Getter for [scheduledString] as a FhirString
  FhirString? get scheduledString => scheduledX?.isAs<FhirString>();

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final Reference? location;

  /// [performer]
  /// Identifies who's expected to be involved in the activity.
  final List<Reference>? performer;

  /// [productX]
  /// Identifies the food, drug or other product to be consumed or supplied
  /// in the activity.
  final ProductXCarePlanDetail? productX;

  /// Getter for [productCodeableConcept] as a CodeableConcept
  CodeableConcept? get productCodeableConcept =>
      productX?.isAs<CodeableConcept>();

  /// Getter for [productReference] as a Reference
  Reference? get productReference => productX?.isAs<Reference>();

  /// [dailyAmount]
  /// Identifies the quantity expected to be consumed in a given day.
  final Quantity? dailyAmount;

  /// [quantity]
  /// Identifies the quantity expected to be supplied, administered or
  /// consumed by the subject.
  final Quantity? quantity;

  /// [description]
  /// This provides a textual description of constraints on the intended
  /// activity occurrence, including relation to other activities. It may
  /// also include objectives, pre-conditions and end-conditions. Finally, it
  /// may convey specifics about the activity such as body site, method,
  /// route, etc.
  final FhirString? description;
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
      'kind',
      kind,
    );
    addField(
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'code',
      code,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'goal',
      goal,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    if (scheduledX != null) {
      final fhirType = scheduledX!.fhirType;
      addField(
        'scheduled${fhirType.capitalize()}',
        scheduledX,
      );
    }

    addField(
      'location',
      location,
    );
    addField(
      'performer',
      performer,
    );
    if (productX != null) {
      final fhirType = productX!.fhirType;
      addField(
        'product${fhirType.capitalize()}',
        productX,
      );
    }

    addField(
      'dailyAmount',
      dailyAmount,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'description',
      description,
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
      'kind',
      'instantiatesCanonical',
      'instantiatesUri',
      'code',
      'reasonCode',
      'reasonReference',
      'goal',
      'status',
      'statusReason',
      'doNotPerform',
      'scheduledX',
      'location',
      'performer',
      'productX',
      'dailyAmount',
      'quantity',
      'description',
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
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'goal':
        if (goal != null) {
          fields.addAll(goal!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'scheduled':
        fields.add(scheduledX!);
      case 'scheduledX':
        fields.add(scheduledX!);
      case 'scheduledTiming':
        if (scheduledX is Timing) {
          fields.add(scheduledX!);
        }
      case 'scheduledPeriod':
        if (scheduledX is Period) {
          fields.add(scheduledX!);
        }
      case 'scheduledString':
        if (scheduledX is FhirString) {
          fields.add(scheduledX!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'product':
        fields.add(productX!);
      case 'productX':
        fields.add(productX!);
      case 'productCodeableConcept':
        if (productX is CodeableConcept) {
          fields.add(productX!);
        }
      case 'productReference':
        if (productX is Reference) {
          fields.add(productX!);
        }
      case 'dailyAmount':
        if (dailyAmount != null) {
          fields.add(dailyAmount!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'kind':
        {
          if (child is CarePlanActivityKind) {
            return copyWith(kind: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?instantiatesCanonical, ...child];
            return copyWith(instantiatesCanonical: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiatesCanonical,
              child,
            ];
            return copyWith(instantiatesCanonical: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?instantiatesUri, ...child];
            return copyWith(instantiatesUri: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [
              ...?instantiatesUri,
              child,
            ];
            return copyWith(instantiatesUri: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reasonCode, ...child];
            return copyWith(reasonCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonCode,
              child,
            ];
            return copyWith(reasonCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?reasonReference, ...child];
            return copyWith(reasonReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonReference,
              child,
            ];
            return copyWith(reasonReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'goal':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?goal, ...child];
            return copyWith(goal: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?goal,
              child,
            ];
            return copyWith(goal: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is CarePlanActivityStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is CodeableConcept) {
            return copyWith(statusReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doNotPerform':
        {
          if (child is FhirBoolean) {
            return copyWith(doNotPerform: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scheduledX':
        {
          if (child is ScheduledXCarePlanDetail) {
            return copyWith(scheduledX: child);
          } else {
            if (child is Timing) {
              return copyWith(scheduledX: child);
            }
            if (child is Period) {
              return copyWith(scheduledX: child);
            }
            if (child is FhirString) {
              return copyWith(scheduledX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scheduledTiming':
        {
          if (child is Timing) {
            return copyWith(scheduledX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scheduledPeriod':
        {
          if (child is Period) {
            return copyWith(scheduledX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scheduledFhirString':
        {
          if (child is FhirString) {
            return copyWith(scheduledX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?performer, ...child];
            return copyWith(performer: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?performer,
              child,
            ];
            return copyWith(performer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productX':
        {
          if (child is ProductXCarePlanDetail) {
            return copyWith(productX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(productX: child);
            }
            if (child is Reference) {
              return copyWith(productX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(productX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productReference':
        {
          if (child is Reference) {
            return copyWith(productX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dailyAmount':
        {
          if (child is Quantity) {
            return copyWith(dailyAmount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
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
      case 'kind':
        return ['FhirCode'];
      case 'instantiatesCanonical':
        return ['FhirCanonical'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'code':
        return ['CodeableConcept'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'goal':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'doNotPerform':
        return ['FhirBoolean'];
      case 'scheduled':
      case 'scheduledX':
        return [
          'Timing',
          'Period',
          'FhirString',
        ];
      case 'scheduledTiming':
        return ['Timing'];
      case 'scheduledPeriod':
        return ['Period'];
      case 'scheduledString':
        return ['FhirString'];
      case 'location':
        return ['Reference'];
      case 'performer':
        return ['Reference'];
      case 'product':
      case 'productX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'productCodeableConcept':
        return ['CodeableConcept'];
      case 'productReference':
        return ['Reference'];
      case 'dailyAmount':
        return ['Quantity'];
      case 'quantity':
        return ['Quantity'];
      case 'description':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CarePlanDetail]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CarePlanDetail createProperty(
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
      case 'kind':
        {
          return copyWith(
            kind: CarePlanActivityKind.empty(),
          );
        }
      case 'instantiatesCanonical':
        {
          return copyWith(
            instantiatesCanonical: <FhirCanonical>[],
          );
        }
      case 'instantiatesUri':
        {
          return copyWith(
            instantiatesUri: <FhirUri>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'reasonCode':
        {
          return copyWith(
            reasonCode: <CodeableConcept>[],
          );
        }
      case 'reasonReference':
        {
          return copyWith(
            reasonReference: <Reference>[],
          );
        }
      case 'goal':
        {
          return copyWith(
            goal: <Reference>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: CarePlanActivityStatus.empty(),
          );
        }
      case 'statusReason':
        {
          return copyWith(
            statusReason: CodeableConcept.empty(),
          );
        }
      case 'doNotPerform':
        {
          return copyWith(
            doNotPerform: FhirBoolean.empty(),
          );
        }
      case 'scheduled':
      case 'scheduledX':
      case 'scheduledTiming':
        {
          return copyWith(
            scheduledX: Timing.empty(),
          );
        }
      case 'scheduledPeriod':
        {
          return copyWith(
            scheduledX: Period.empty(),
          );
        }
      case 'scheduledString':
        {
          return copyWith(
            scheduledX: FhirString.empty(),
          );
        }
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: <Reference>[],
          );
        }
      case 'product':
      case 'productX':
      case 'productCodeableConcept':
        {
          return copyWith(
            productX: CodeableConcept.empty(),
          );
        }
      case 'productReference':
        {
          return copyWith(
            productX: Reference.empty(),
          );
        }
      case 'dailyAmount':
        {
          return copyWith(
            dailyAmount: Quantity.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CarePlanDetail clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool kind = false,
    bool instantiatesCanonical = false,
    bool instantiatesUri = false,
    bool code = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool goal = false,
    bool statusReason = false,
    bool doNotPerform = false,
    bool scheduled = false,
    bool location = false,
    bool performer = false,
    bool product = false,
    bool dailyAmount = false,
    bool quantity = false,
    bool description = false,
  }) {
    return CarePlanDetail(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      kind: kind ? null : this.kind,
      instantiatesCanonical:
          instantiatesCanonical ? null : this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ? null : this.instantiatesUri,
      code: code ? null : this.code,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      goal: goal ? null : this.goal,
      status: status,
      statusReason: statusReason ? null : this.statusReason,
      doNotPerform: doNotPerform ? null : this.doNotPerform,
      scheduledX: scheduled ? null : scheduledX,
      location: location ? null : this.location,
      performer: performer ? null : this.performer,
      productX: product ? null : productX,
      dailyAmount: dailyAmount ? null : this.dailyAmount,
      quantity: quantity ? null : this.quantity,
      description: description ? null : this.description,
    );
  }

  @override
  CarePlanDetail clone() => throw UnimplementedError();
  @override
  CarePlanDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CarePlanActivityKind? kind,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    CodeableConcept? code,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? goal,
    CarePlanActivityStatus? status,
    CodeableConcept? statusReason,
    FhirBoolean? doNotPerform,
    ScheduledXCarePlanDetail? scheduledX,
    Reference? location,
    List<Reference>? performer,
    ProductXCarePlanDetail? productX,
    Quantity? dailyAmount,
    Quantity? quantity,
    FhirString? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CarePlanDetail(
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
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      goal: goal
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.goal',
                ),
              )
              .toList() ??
          this.goal,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason?.copyWith(
            objectPath: '$newObjectPath.statusReason',
          ) ??
          this.statusReason,
      doNotPerform: doNotPerform?.copyWith(
            objectPath: '$newObjectPath.doNotPerform',
          ) ??
          this.doNotPerform,
      scheduledX: scheduledX?.copyWith(
            objectPath: '$newObjectPath.scheduledX',
          ) as ScheduledXCarePlanDetail? ??
          this.scheduledX,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      productX: productX?.copyWith(
            objectPath: '$newObjectPath.productX',
          ) as ProductXCarePlanDetail? ??
          this.productX,
      dailyAmount: dailyAmount?.copyWith(
            objectPath: '$newObjectPath.dailyAmount',
          ) ??
          this.dailyAmount,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CarePlanDetail) {
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
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      goal,
      o.goal,
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
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scheduledX,
      o.scheduledX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productX,
      o.productX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dailyAmount,
      o.dailyAmount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}
