import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AdverseEvent]
/// Actual or potential/avoided event causing unintended physical injury
/// resulting from or contributed to by medical care, a research study or
/// other healthcare setting factors that requires additional monitoring,
/// treatment, or hospitalization, or that results in death.
class AdverseEvent extends DomainResource {
  /// Primary constructor for
  /// [AdverseEvent]

  const AdverseEvent({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.actuality,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.detected,
    this.recordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
  }) : super(
          objectPath: 'AdverseEvent',
          resourceType: R4ResourceType.AdverseEvent,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdverseEvent.empty() => AdverseEvent(
        actuality: AdverseEventActuality.values.first,
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent';
    return AdverseEvent(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      actuality: JsonParser.parsePrimitive<AdverseEventActuality>(
        json,
        'actuality',
        AdverseEventActuality.fromJson,
        '$objectPath.actuality',
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
      event: JsonParser.parseObject<CodeableConcept>(
        json,
        'event',
        CodeableConcept.fromJson,
        '$objectPath.event',
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
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      detected: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'detected',
        FhirDateTime.fromJson,
        '$objectPath.detected',
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recordedDate',
        FhirDateTime.fromJson,
        '$objectPath.recordedDate',
      ),
      resultingCondition: (json['resultingCondition'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resultingCondition',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      seriousness: JsonParser.parseObject<CodeableConcept>(
        json,
        'seriousness',
        CodeableConcept.fromJson,
        '$objectPath.seriousness',
      ),
      severity: JsonParser.parseObject<CodeableConcept>(
        json,
        'severity',
        CodeableConcept.fromJson,
        '$objectPath.severity',
      ),
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
        '$objectPath.outcome',
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
        '$objectPath.recorder',
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
      suspectEntity: (json['suspectEntity'] as List<dynamic>?)
          ?.map<AdverseEventSuspectEntity>(
            (v) => AdverseEventSuspectEntity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.suspectEntity',
              },
            ),
          )
          .toList(),
      subjectMedicalHistory: (json['subjectMedicalHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subjectMedicalHistory',
              },
            ),
          )
          .toList(),
      referenceDocument: (json['referenceDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceDocument',
              },
            ),
          )
          .toList(),
      study: (json['study'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.study',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdverseEvent]
  /// from a [String] or [YamlMap] object
  factory AdverseEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEvent';

  /// [identifier]
  /// Business identifiers assigned to this adverse event by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final Identifier? identifier;

  /// [actuality]
  /// Whether the event actually happened, or just had the potential to. Note
  /// that this is independent of whether anyone was affected or harmed or
  /// how severely.
  final AdverseEventActuality actuality;

  /// [category]
  /// The overall type of event, intended for search and filtering purposes.
  final List<CodeableConcept>? category;

  /// [event]
  /// This element defines the specific type of event that occurred or that
  /// was prevented from occurring.
  final CodeableConcept? event;

  /// [subject]
  /// This subject or group impacted by the event.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which AdverseEvent was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [date]
  /// The date (and perhaps time) when the adverse event occurred.
  final FhirDateTime? date;

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  final FhirDateTime? detected;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  final FhirDateTime? recordedDate;

  /// [resultingCondition]
  /// Includes information about the reaction that occurred as a result of
  /// exposure to a substance (for example, a drug or a chemical).
  final List<Reference>? resultingCondition;

  /// [location]
  /// The information about where the adverse event occurred.
  final Reference? location;

  /// [seriousness]
  /// Assessment whether this event was of real importance.
  final CodeableConcept? seriousness;

  /// [severity]
  /// Describes the severity of the adverse event, in relation to the
  /// subject. Contrast to AdverseEvent.seriousness - a severe rash might not
  /// be serious, but a mild heart problem is.
  final CodeableConcept? severity;

  /// [outcome]
  /// Describes the type of outcome from the adverse event.
  final CodeableConcept? outcome;

  /// [recorder]
  /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  final Reference? recorder;

  /// [contributor]
  /// Parties that may or should contribute or have contributed information
  /// to the adverse event, which can consist of one or more activities. Such
  /// information includes information leading to the decision to perform the
  /// activity and how to perform the activity (e.g. consultant), information
  /// that the activity itself seeks to reveal (e.g. informant of clinical
  /// history), or information about what activity was performed (e.g.
  /// informant witness).
  final List<Reference>? contributor;

  /// [suspectEntity]
  /// Describes the entity that is suspected to have caused the adverse
  /// event.
  final List<AdverseEventSuspectEntity>? suspectEntity;

  /// [subjectMedicalHistory]
  /// AdverseEvent.subjectMedicalHistory.
  final List<Reference>? subjectMedicalHistory;

  /// [referenceDocument]
  /// AdverseEvent.referenceDocument.
  final List<Reference>? referenceDocument;

  /// [study]
  /// AdverseEvent.study.
  final List<Reference>? study;
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
      'actuality',
      actuality,
    );
    addField(
      'category',
      category,
    );
    addField(
      'event',
      event,
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
      'date',
      date,
    );
    addField(
      'detected',
      detected,
    );
    addField(
      'recordedDate',
      recordedDate,
    );
    addField(
      'resultingCondition',
      resultingCondition,
    );
    addField(
      'location',
      location,
    );
    addField(
      'seriousness',
      seriousness,
    );
    addField(
      'severity',
      severity,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'recorder',
      recorder,
    );
    addField(
      'contributor',
      contributor,
    );
    addField(
      'suspectEntity',
      suspectEntity,
    );
    addField(
      'subjectMedicalHistory',
      subjectMedicalHistory,
    );
    addField(
      'referenceDocument',
      referenceDocument,
    );
    addField(
      'study',
      study,
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
      'actuality',
      'category',
      'event',
      'subject',
      'encounter',
      'date',
      'detected',
      'recordedDate',
      'resultingCondition',
      'location',
      'seriousness',
      'severity',
      'outcome',
      'recorder',
      'contributor',
      'suspectEntity',
      'subjectMedicalHistory',
      'referenceDocument',
      'study',
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
          fields.add(identifier!);
        }
      case 'actuality':
        fields.add(actuality);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'event':
        if (event != null) {
          fields.add(event!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'detected':
        if (detected != null) {
          fields.add(detected!);
        }
      case 'recordedDate':
        if (recordedDate != null) {
          fields.add(recordedDate!);
        }
      case 'resultingCondition':
        if (resultingCondition != null) {
          fields.addAll(resultingCondition!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'seriousness':
        if (seriousness != null) {
          fields.add(seriousness!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'contributor':
        if (contributor != null) {
          fields.addAll(contributor!);
        }
      case 'suspectEntity':
        if (suspectEntity != null) {
          fields.addAll(suspectEntity!);
        }
      case 'subjectMedicalHistory':
        if (subjectMedicalHistory != null) {
          fields.addAll(subjectMedicalHistory!);
        }
      case 'referenceDocument':
        if (referenceDocument != null) {
          fields.addAll(referenceDocument!);
        }
      case 'study':
        if (study != null) {
          fields.addAll(study!);
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
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actuality':
        {
          if (child is AdverseEventActuality) {
            return copyWith(actuality: child);
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
      case 'event':
        {
          if (child is CodeableConcept) {
            return copyWith(event: child);
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
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detected':
        {
          if (child is FhirDateTime) {
            return copyWith(detected: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recordedDate':
        {
          if (child is FhirDateTime) {
            return copyWith(recordedDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resultingCondition':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?resultingCondition, ...child];
            return copyWith(resultingCondition: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?resultingCondition, child];
            return copyWith(resultingCondition: newList);
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
      case 'seriousness':
        {
          if (child is CodeableConcept) {
            return copyWith(seriousness: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'severity':
        {
          if (child is CodeableConcept) {
            return copyWith(severity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcome':
        {
          if (child is CodeableConcept) {
            return copyWith(outcome: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorder':
        {
          if (child is Reference) {
            return copyWith(recorder: child);
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
            final newList = [...?contributor, child];
            return copyWith(contributor: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'suspectEntity':
        {
          if (child is List<AdverseEventSuspectEntity>) {
            // Add all elements from passed list
            final newList = [...?suspectEntity, ...child];
            return copyWith(suspectEntity: newList);
          } else if (child is AdverseEventSuspectEntity) {
            // Add single element to existing list or create new list
            final newList = [...?suspectEntity, child];
            return copyWith(suspectEntity: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectMedicalHistory':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?subjectMedicalHistory, ...child];
            return copyWith(subjectMedicalHistory: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?subjectMedicalHistory, child];
            return copyWith(subjectMedicalHistory: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceDocument':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?referenceDocument, ...child];
            return copyWith(referenceDocument: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?referenceDocument, child];
            return copyWith(referenceDocument: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'study':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?study, ...child];
            return copyWith(study: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?study, child];
            return copyWith(study: newList);
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
      case 'actuality':
        return ['FhirCode'];
      case 'category':
        return ['CodeableConcept'];
      case 'event':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'date':
        return ['FhirDateTime'];
      case 'detected':
        return ['FhirDateTime'];
      case 'recordedDate':
        return ['FhirDateTime'];
      case 'resultingCondition':
        return ['Reference'];
      case 'location':
        return ['Reference'];
      case 'seriousness':
        return ['CodeableConcept'];
      case 'severity':
        return ['CodeableConcept'];
      case 'outcome':
        return ['CodeableConcept'];
      case 'recorder':
        return ['Reference'];
      case 'contributor':
        return ['Reference'];
      case 'suspectEntity':
        return ['AdverseEventSuspectEntity'];
      case 'subjectMedicalHistory':
        return ['Reference'];
      case 'referenceDocument':
        return ['Reference'];
      case 'study':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEvent]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdverseEvent createProperty(
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
            identifier: Identifier.empty(),
          );
        }
      case 'actuality':
        {
          return copyWith(
            actuality: AdverseEventActuality.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'event':
        {
          return copyWith(
            event: CodeableConcept.empty(),
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
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'detected':
        {
          return copyWith(
            detected: FhirDateTime.empty(),
          );
        }
      case 'recordedDate':
        {
          return copyWith(
            recordedDate: FhirDateTime.empty(),
          );
        }
      case 'resultingCondition':
        {
          return copyWith(
            resultingCondition: <Reference>[],
          );
        }
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'seriousness':
        {
          return copyWith(
            seriousness: CodeableConcept.empty(),
          );
        }
      case 'severity':
        {
          return copyWith(
            severity: CodeableConcept.empty(),
          );
        }
      case 'outcome':
        {
          return copyWith(
            outcome: CodeableConcept.empty(),
          );
        }
      case 'recorder':
        {
          return copyWith(
            recorder: Reference.empty(),
          );
        }
      case 'contributor':
        {
          return copyWith(
            contributor: <Reference>[],
          );
        }
      case 'suspectEntity':
        {
          return copyWith(
            suspectEntity: <AdverseEventSuspectEntity>[],
          );
        }
      case 'subjectMedicalHistory':
        {
          return copyWith(
            subjectMedicalHistory: <Reference>[],
          );
        }
      case 'referenceDocument':
        {
          return copyWith(
            referenceDocument: <Reference>[],
          );
        }
      case 'study':
        {
          return copyWith(
            study: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdverseEvent clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool category = false,
    bool event = false,
    bool encounter = false,
    bool date = false,
    bool detected = false,
    bool recordedDate = false,
    bool resultingCondition = false,
    bool location = false,
    bool seriousness = false,
    bool severity = false,
    bool outcome = false,
    bool recorder = false,
    bool contributor = false,
    bool suspectEntity = false,
    bool subjectMedicalHistory = false,
    bool referenceDocument = false,
    bool study = false,
  }) {
    return AdverseEvent(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      actuality: actuality,
      category: category ? null : this.category,
      event: event ? null : this.event,
      subject: subject,
      encounter: encounter ? null : this.encounter,
      date: date ? null : this.date,
      detected: detected ? null : this.detected,
      recordedDate: recordedDate ? null : this.recordedDate,
      resultingCondition: resultingCondition ? null : this.resultingCondition,
      location: location ? null : this.location,
      seriousness: seriousness ? null : this.seriousness,
      severity: severity ? null : this.severity,
      outcome: outcome ? null : this.outcome,
      recorder: recorder ? null : this.recorder,
      contributor: contributor ? null : this.contributor,
      suspectEntity: suspectEntity ? null : this.suspectEntity,
      subjectMedicalHistory:
          subjectMedicalHistory ? null : this.subjectMedicalHistory,
      referenceDocument: referenceDocument ? null : this.referenceDocument,
      study: study ? null : this.study,
    );
  }

  @override
  AdverseEvent clone() => throw UnimplementedError();
  @override
  AdverseEvent copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    AdverseEventActuality? actuality,
    List<CodeableConcept>? category,
    CodeableConcept? event,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    FhirDateTime? detected,
    FhirDateTime? recordedDate,
    List<Reference>? resultingCondition,
    Reference? location,
    CodeableConcept? seriousness,
    CodeableConcept? severity,
    CodeableConcept? outcome,
    Reference? recorder,
    List<Reference>? contributor,
    List<AdverseEventSuspectEntity>? suspectEntity,
    List<Reference>? subjectMedicalHistory,
    List<Reference>? referenceDocument,
    List<Reference>? study,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return AdverseEvent(
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
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      actuality: actuality?.copyWith(
            objectPath: '$newObjectPath.actuality',
          ) ??
          this.actuality,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      event: event?.copyWith(
            objectPath: '$newObjectPath.event',
          ) ??
          this.event,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      detected: detected?.copyWith(
            objectPath: '$newObjectPath.detected',
          ) ??
          this.detected,
      recordedDate: recordedDate?.copyWith(
            objectPath: '$newObjectPath.recordedDate',
          ) ??
          this.recordedDate,
      resultingCondition: resultingCondition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.resultingCondition',
                ),
              )
              .toList() ??
          this.resultingCondition,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      seriousness: seriousness?.copyWith(
            objectPath: '$newObjectPath.seriousness',
          ) ??
          this.seriousness,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      recorder: recorder?.copyWith(
            objectPath: '$newObjectPath.recorder',
          ) ??
          this.recorder,
      contributor: contributor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contributor',
                ),
              )
              .toList() ??
          this.contributor,
      suspectEntity: suspectEntity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.suspectEntity',
                ),
              )
              .toList() ??
          this.suspectEntity,
      subjectMedicalHistory: subjectMedicalHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subjectMedicalHistory',
                ),
              )
              .toList() ??
          this.subjectMedicalHistory,
      referenceDocument: referenceDocument
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referenceDocument',
                ),
              )
              .toList() ??
          this.referenceDocument,
      study: study
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.study',
                ),
              )
              .toList() ??
          this.study,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEvent) {
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
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actuality,
      o.actuality,
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
      event,
      o.event,
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
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detected,
      o.detected,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recordedDate,
      o.recordedDate,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      resultingCondition,
      o.resultingCondition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriousness,
      o.seriousness,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      severity,
      o.severity,
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
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      contributor,
      o.contributor,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventSuspectEntity>(
      suspectEntity,
      o.suspectEntity,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      subjectMedicalHistory,
      o.subjectMedicalHistory,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      referenceDocument,
      o.referenceDocument,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      study,
      o.study,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventSuspectEntity]
/// Describes the entity that is suspected to have caused the adverse
/// event.
class AdverseEventSuspectEntity extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventSuspectEntity]

  const AdverseEventSuspectEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.instance,
    this.causality,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdverseEvent.suspectEntity',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdverseEventSuspectEntity.empty() => AdverseEventSuspectEntity(
        instance: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSuspectEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.suspectEntity';
    return AdverseEventSuspectEntity(
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
      instance: JsonParser.parseObject<Reference>(
        json,
        'instance',
        Reference.fromJson,
        '$objectPath.instance',
      )!,
      causality: (json['causality'] as List<dynamic>?)
          ?.map<AdverseEventCausality>(
            (v) => AdverseEventCausality.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.causality',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdverseEventSuspectEntity]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSuspectEntity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventSuspectEntity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventSuspectEntity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventSuspectEntity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventSuspectEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSuspectEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventSuspectEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventSuspectEntity';

  /// [instance]
  /// Identifies the actual instance of what caused the adverse event. May be
  /// a substance, medication, medication administration, medication
  /// statement or a device.
  final Reference instance;

  /// [causality]
  /// Information on the possible cause of the event.
  final List<AdverseEventCausality>? causality;
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
      'instance',
      instance,
    );
    addField(
      'causality',
      causality,
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
      'instance',
      'causality',
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
      case 'instance':
        fields.add(instance);
      case 'causality':
        if (causality != null) {
          fields.addAll(causality!);
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
      case 'instance':
        {
          if (child is Reference) {
            return copyWith(instance: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'causality':
        {
          if (child is List<AdverseEventCausality>) {
            // Add all elements from passed list
            final newList = [...?causality, ...child];
            return copyWith(causality: newList);
          } else if (child is AdverseEventCausality) {
            // Add single element to existing list or create new list
            final newList = [...?causality, child];
            return copyWith(causality: newList);
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
      case 'instance':
        return ['Reference'];
      case 'causality':
        return ['AdverseEventCausality'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventSuspectEntity]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdverseEventSuspectEntity createProperty(
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
      case 'instance':
        {
          return copyWith(
            instance: Reference.empty(),
          );
        }
      case 'causality':
        {
          return copyWith(
            causality: <AdverseEventCausality>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdverseEventSuspectEntity clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool causality = false,
  }) {
    return AdverseEventSuspectEntity(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      instance: instance,
      causality: causality ? null : this.causality,
    );
  }

  @override
  AdverseEventSuspectEntity clone() => throw UnimplementedError();
  @override
  AdverseEventSuspectEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? instance,
    List<AdverseEventCausality>? causality,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AdverseEventSuspectEntity(
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
      instance: instance?.copyWith(
            objectPath: '$newObjectPath.instance',
          ) ??
          this.instance,
      causality: causality
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.causality',
                ),
              )
              .toList() ??
          this.causality,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventSuspectEntity) {
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
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventCausality>(
      causality,
      o.causality,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventCausality]
/// Information on the possible cause of the event.
class AdverseEventCausality extends BackboneElement {
  /// Primary constructor for
  /// [AdverseEventCausality]

  const AdverseEventCausality({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.author,
    this.method,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdverseEvent.suspectEntity.causality',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdverseEventCausality.empty() => const AdverseEventCausality();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventCausality.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.suspectEntity.causality';
    return AdverseEventCausality(
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
      assessment: JsonParser.parseObject<CodeableConcept>(
        json,
        'assessment',
        CodeableConcept.fromJson,
        '$objectPath.assessment',
      ),
      productRelatedness: JsonParser.parsePrimitive<FhirString>(
        json,
        'productRelatedness',
        FhirString.fromJson,
        '$objectPath.productRelatedness',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
    );
  }

  /// Deserialize [AdverseEventCausality]
  /// from a [String] or [YamlMap] object
  factory AdverseEventCausality.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventCausality.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventCausality.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventCausality '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventCausality]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventCausality.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventCausality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventCausality';

  /// [assessment]
  /// Assessment of if the entity caused the event.
  final CodeableConcept? assessment;

  /// [productRelatedness]
  /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  final FhirString? productRelatedness;

  /// [author]
  /// AdverseEvent.suspectEntity.causalityAuthor.
  final Reference? author;

  /// [method]
  /// ProbabilityScale | Bayesian | Checklist.
  final CodeableConcept? method;
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
      'assessment',
      assessment,
    );
    addField(
      'productRelatedness',
      productRelatedness,
    );
    addField(
      'author',
      author,
    );
    addField(
      'method',
      method,
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
      'assessment',
      'productRelatedness',
      'author',
      'method',
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
      case 'assessment':
        if (assessment != null) {
          fields.add(assessment!);
        }
      case 'productRelatedness':
        if (productRelatedness != null) {
          fields.add(productRelatedness!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
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
      case 'assessment':
        {
          if (child is CodeableConcept) {
            return copyWith(assessment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productRelatedness':
        {
          if (child is FhirString) {
            return copyWith(productRelatedness: child);
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
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
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
      case 'assessment':
        return ['CodeableConcept'];
      case 'productRelatedness':
        return ['FhirString'];
      case 'author':
        return ['Reference'];
      case 'method':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventCausality]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdverseEventCausality createProperty(
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
      case 'assessment':
        {
          return copyWith(
            assessment: CodeableConcept.empty(),
          );
        }
      case 'productRelatedness':
        {
          return copyWith(
            productRelatedness: FhirString.empty(),
          );
        }
      case 'author':
        {
          return copyWith(
            author: Reference.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdverseEventCausality clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool assessment = false,
    bool productRelatedness = false,
    bool author = false,
    bool method = false,
  }) {
    return AdverseEventCausality(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      assessment: assessment ? null : this.assessment,
      productRelatedness: productRelatedness ? null : this.productRelatedness,
      author: author ? null : this.author,
      method: method ? null : this.method,
    );
  }

  @override
  AdverseEventCausality clone() => throw UnimplementedError();
  @override
  AdverseEventCausality copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? assessment,
    FhirString? productRelatedness,
    Reference? author,
    CodeableConcept? method,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AdverseEventCausality(
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
      assessment: assessment?.copyWith(
            objectPath: '$newObjectPath.assessment',
          ) ??
          this.assessment,
      productRelatedness: productRelatedness?.copyWith(
            objectPath: '$newObjectPath.productRelatedness',
          ) ??
          this.productRelatedness,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdverseEventCausality) {
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
      assessment,
      o.assessment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productRelatedness,
      o.productRelatedness,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    return true;
  }
}
