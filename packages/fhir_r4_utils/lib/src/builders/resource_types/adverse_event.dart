import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        AdverseEvent,
        AdverseEventCausality,
        AdverseEventSuspectEntity,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [AdverseEventBuilder]
/// Actual or potential/avoided event causing unintended physical injury
/// resulting from or contributed to by medical care, a research study or
/// other healthcare setting factors that requires additional monitoring,
/// treatment, or hospitalization, or that results in death.
class AdverseEventBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AdverseEventBuilder]

  AdverseEventBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.actuality,
    this.category,
    this.event,
    this.subject,
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
  /// For Builder classes, no fields are required
  factory AdverseEventBuilder.empty() => AdverseEventBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent';
    return AdverseEventBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      actuality: JsonParser.parsePrimitive<AdverseEventActualityBuilder>(
        json,
        'actuality',
        AdverseEventActualityBuilder.fromJson,
        '$objectPath.actuality',
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
      event: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'event',
        CodeableConceptBuilder.fromJson,
        '$objectPath.event',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      detected: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'detected',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.detected',
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recordedDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recordedDate',
      ),
      resultingCondition: (json['resultingCondition'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resultingCondition',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      seriousness: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'seriousness',
        CodeableConceptBuilder.fromJson,
        '$objectPath.seriousness',
      ),
      severity: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'severity',
        CodeableConceptBuilder.fromJson,
        '$objectPath.severity',
      ),
      outcome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'outcome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.outcome',
      ),
      recorder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recorder',
        ReferenceBuilder.fromJson,
        '$objectPath.recorder',
      ),
      contributor: (json['contributor'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contributor',
              },
            ),
          )
          .toList(),
      suspectEntity: (json['suspectEntity'] as List<dynamic>?)
          ?.map<AdverseEventSuspectEntityBuilder>(
            (v) => AdverseEventSuspectEntityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.suspectEntity',
              },
            ),
          )
          .toList(),
      subjectMedicalHistory: (json['subjectMedicalHistory'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subjectMedicalHistory',
              },
            ),
          )
          .toList(),
      referenceDocument: (json['referenceDocument'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceDocument',
              },
            ),
          )
          .toList(),
      study: (json['study'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.study',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdverseEventBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventBuilder.fromJson(json);
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
  IdentifierBuilder? identifier;

  /// [actuality]
  /// Whether the event actually happened, or just had the potential to. Note
  /// that this is independent of whether anyone was affected or harmed or
  /// how severely.
  AdverseEventActualityBuilder? actuality;

  /// [category]
  /// The overall type of event, intended for search and filtering purposes.
  List<CodeableConceptBuilder>? category;

  /// [event]
  /// This element defines the specific type of event that occurred or that
  /// was prevented from occurring.
  CodeableConceptBuilder? event;

  /// [subject]
  /// This subject or group impacted by the event.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The Encounter during which AdverseEvent was created or to which the
  /// creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [date]
  /// The date (and perhaps time) when the adverse event occurred.
  FhirDateTimeBuilder? date;

  /// [detected]
  /// Estimated or actual date the AdverseEvent began, in the opinion of the
  /// reporter.
  FhirDateTimeBuilder? detected;

  /// [recordedDate]
  /// The date on which the existence of the AdverseEvent was first recorded.
  FhirDateTimeBuilder? recordedDate;

  /// [resultingCondition]
  /// Includes information about the reaction that occurred as a result of
  /// exposure to a substance (for example, a drug or a chemical).
  List<ReferenceBuilder>? resultingCondition;

  /// [location]
  /// The information about where the adverse event occurred.
  ReferenceBuilder? location;

  /// [seriousness]
  /// Assessment whether this event was of real importance.
  CodeableConceptBuilder? seriousness;

  /// [severity]
  /// Describes the severity of the adverse event, in relation to the
  /// subject. Contrast to AdverseEvent.seriousness - a severe rash might not
  /// be serious, but a mild heart problem is.
  CodeableConceptBuilder? severity;

  /// [outcome]
  /// Describes the type of outcome from the adverse event.
  CodeableConceptBuilder? outcome;

  /// [recorder]
  /// Information on who recorded the adverse event. May be the patient or a
  /// practitioner.
  ReferenceBuilder? recorder;

  /// [contributor]
  /// Parties that may or should contribute or have contributed information
  /// to the adverse event, which can consist of one or more activities. Such
  /// information includes information leading to the decision to perform the
  /// activity and how to perform the activity (e.g. consultant), information
  /// that the activity itself seeks to reveal (e.g. informant of clinical
  /// history), or information about what activity was performed (e.g.
  /// informant witness).
  List<ReferenceBuilder>? contributor;

  /// [suspectEntity]
  /// Describes the entity that is suspected to have caused the adverse
  /// event.
  List<AdverseEventSuspectEntityBuilder>? suspectEntity;

  /// [subjectMedicalHistory]
  /// AdverseEvent.subjectMedicalHistory.
  List<ReferenceBuilder>? subjectMedicalHistory;

  /// [referenceDocument]
  /// AdverseEvent.referenceDocument.
  List<ReferenceBuilder>? referenceDocument;

  /// [study]
  /// AdverseEvent.study.
  List<ReferenceBuilder>? study;

  /// Converts a [AdverseEventBuilder]
  /// to [AdverseEvent]
  @override
  AdverseEvent build() => AdverseEvent.fromJson(toJson());

  /// Converts a [AdverseEventBuilder]
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
    addField('actuality', actuality);
    addField('category', category);
    addField('event', event);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('date', date);
    addField('detected', detected);
    addField('recordedDate', recordedDate);
    addField('resultingCondition', resultingCondition);
    addField('location', location);
    addField('seriousness', seriousness);
    addField('severity', severity);
    addField('outcome', outcome);
    addField('recorder', recorder);
    addField('contributor', contributor);
    addField('suspectEntity', suspectEntity);
    addField('subjectMedicalHistory', subjectMedicalHistory);
    addField('referenceDocument', referenceDocument);
    addField('study', study);
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
          fields.add(identifier!);
        }
      case 'actuality':
        if (actuality != null) {
          fields.add(actuality!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'event':
        if (event != null) {
          fields.add(event!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
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
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actuality':
        {
          if (child is AdverseEventActualityBuilder) {
            actuality = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdverseEventActualityBuilder(stringValue);
                actuality = converted;
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
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'event':
        {
          if (child is CodeableConceptBuilder) {
            event = child;
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
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detected':
        {
          if (child is FhirDateTimeBuilder) {
            detected = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                detected = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recordedDate':
        {
          if (child is FhirDateTimeBuilder) {
            recordedDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                recordedDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resultingCondition':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            resultingCondition = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            resultingCondition = [
              ...(resultingCondition ?? []),
              child,
            ];
            return;
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
      case 'seriousness':
        {
          if (child is CodeableConceptBuilder) {
            seriousness = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'severity':
        {
          if (child is CodeableConceptBuilder) {
            severity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is CodeableConceptBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorder':
        {
          if (child is ReferenceBuilder) {
            recorder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contributor':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            contributor = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            contributor = [
              ...(contributor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'suspectEntity':
        {
          if (child is List<AdverseEventSuspectEntityBuilder>) {
            // Replace or create new list
            suspectEntity = child;
            return;
          } else if (child is AdverseEventSuspectEntityBuilder) {
            // Add single element to existing list or create new list
            suspectEntity = [
              ...(suspectEntity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectMedicalHistory':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subjectMedicalHistory = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subjectMedicalHistory = [
              ...(subjectMedicalHistory ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referenceDocument':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            referenceDocument = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            referenceDocument = [
              ...(referenceDocument ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'study':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            study = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            study = [
              ...(study ?? []),
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'actuality':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'event':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'detected':
        return ['FhirDateTimeBuilder'];
      case 'recordedDate':
        return ['FhirDateTimeBuilder'];
      case 'resultingCondition':
        return ['ReferenceBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'seriousness':
        return ['CodeableConceptBuilder'];
      case 'severity':
        return ['CodeableConceptBuilder'];
      case 'outcome':
        return ['CodeableConceptBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'contributor':
        return ['ReferenceBuilder'];
      case 'suspectEntity':
        return ['AdverseEventSuspectEntityBuilder'];
      case 'subjectMedicalHistory':
        return ['ReferenceBuilder'];
      case 'referenceDocument':
        return ['ReferenceBuilder'];
      case 'study':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventBuilder]
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
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'actuality':
        {
          actuality = AdverseEventActualityBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'event':
        {
          event = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'detected':
        {
          detected = FhirDateTimeBuilder.empty();
          return;
        }
      case 'recordedDate':
        {
          recordedDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'resultingCondition':
        {
          resultingCondition = <ReferenceBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'seriousness':
        {
          seriousness = CodeableConceptBuilder.empty();
          return;
        }
      case 'severity':
        {
          severity = CodeableConceptBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = CodeableConceptBuilder.empty();
          return;
        }
      case 'recorder':
        {
          recorder = ReferenceBuilder.empty();
          return;
        }
      case 'contributor':
        {
          contributor = <ReferenceBuilder>[];
          return;
        }
      case 'suspectEntity':
        {
          suspectEntity = <AdverseEventSuspectEntityBuilder>[];
          return;
        }
      case 'subjectMedicalHistory':
        {
          subjectMedicalHistory = <ReferenceBuilder>[];
          return;
        }
      case 'referenceDocument':
        {
          referenceDocument = <ReferenceBuilder>[];
          return;
        }
      case 'study':
        {
          study = <ReferenceBuilder>[];
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
    bool actuality = false,
    bool category = false,
    bool event = false,
    bool subject = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (actuality) this.actuality = null;
    if (category) this.category = null;
    if (event) this.event = null;
    if (subject) this.subject = null;
    if (encounter) this.encounter = null;
    if (date) this.date = null;
    if (detected) this.detected = null;
    if (recordedDate) this.recordedDate = null;
    if (resultingCondition) this.resultingCondition = null;
    if (location) this.location = null;
    if (seriousness) this.seriousness = null;
    if (severity) this.severity = null;
    if (outcome) this.outcome = null;
    if (recorder) this.recorder = null;
    if (contributor) this.contributor = null;
    if (suspectEntity) this.suspectEntity = null;
    if (subjectMedicalHistory) this.subjectMedicalHistory = null;
    if (referenceDocument) this.referenceDocument = null;
    if (study) this.study = null;
  }

  @override
  AdverseEventBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    AdverseEventActualityBuilder? actuality,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? event,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    FhirDateTimeBuilder? date,
    FhirDateTimeBuilder? detected,
    FhirDateTimeBuilder? recordedDate,
    List<ReferenceBuilder>? resultingCondition,
    ReferenceBuilder? location,
    CodeableConceptBuilder? seriousness,
    CodeableConceptBuilder? severity,
    CodeableConceptBuilder? outcome,
    ReferenceBuilder? recorder,
    List<ReferenceBuilder>? contributor,
    List<AdverseEventSuspectEntityBuilder>? suspectEntity,
    List<ReferenceBuilder>? subjectMedicalHistory,
    List<ReferenceBuilder>? referenceDocument,
    List<ReferenceBuilder>? study,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AdverseEventBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      actuality: actuality ?? this.actuality,
      category: category ?? this.category,
      event: event ?? this.event,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      detected: detected ?? this.detected,
      recordedDate: recordedDate ?? this.recordedDate,
      resultingCondition: resultingCondition ?? this.resultingCondition,
      location: location ?? this.location,
      seriousness: seriousness ?? this.seriousness,
      severity: severity ?? this.severity,
      outcome: outcome ?? this.outcome,
      recorder: recorder ?? this.recorder,
      contributor: contributor ?? this.contributor,
      suspectEntity: suspectEntity ?? this.suspectEntity,
      subjectMedicalHistory:
          subjectMedicalHistory ?? this.subjectMedicalHistory,
      referenceDocument: referenceDocument ?? this.referenceDocument,
      study: study ?? this.study,
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
    if (o is! AdverseEventBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      contributor,
      o.contributor,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventSuspectEntityBuilder>(
      suspectEntity,
      o.suspectEntity,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      subjectMedicalHistory,
      o.subjectMedicalHistory,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      referenceDocument,
      o.referenceDocument,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      study,
      o.study,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventSuspectEntityBuilder]
/// Describes the entity that is suspected to have caused the adverse
/// event.
class AdverseEventSuspectEntityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventSuspectEntityBuilder]

  AdverseEventSuspectEntityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.instance,
    this.causality,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdverseEvent.suspectEntity',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdverseEventSuspectEntityBuilder.empty() =>
      AdverseEventSuspectEntityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventSuspectEntityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.suspectEntity';
    return AdverseEventSuspectEntityBuilder(
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
      instance: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'instance',
        ReferenceBuilder.fromJson,
        '$objectPath.instance',
      ),
      causality: (json['causality'] as List<dynamic>?)
          ?.map<AdverseEventCausalityBuilder>(
            (v) => AdverseEventCausalityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.causality',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdverseEventSuspectEntityBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventSuspectEntityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventSuspectEntityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventSuspectEntityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventSuspectEntityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventSuspectEntityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventSuspectEntityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventSuspectEntityBuilder.fromJson(json);
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
  ReferenceBuilder? instance;

  /// [causality]
  /// Information on the possible cause of the event.
  List<AdverseEventCausalityBuilder>? causality;

  /// Converts a [AdverseEventSuspectEntityBuilder]
  /// to [AdverseEventSuspectEntity]
  @override
  AdverseEventSuspectEntity build() =>
      AdverseEventSuspectEntity.fromJson(toJson());

  /// Converts a [AdverseEventSuspectEntityBuilder]
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
    addField('instance', instance);
    addField('causality', causality);
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
      case 'instance':
        if (instance != null) {
          fields.add(instance!);
        }
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
      case 'instance':
        {
          if (child is ReferenceBuilder) {
            instance = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'causality':
        {
          if (child is List<AdverseEventCausalityBuilder>) {
            // Replace or create new list
            causality = child;
            return;
          } else if (child is AdverseEventCausalityBuilder) {
            // Add single element to existing list or create new list
            causality = [
              ...(causality ?? []),
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
      case 'instance':
        return ['ReferenceBuilder'];
      case 'causality':
        return ['AdverseEventCausalityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventSuspectEntityBuilder]
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
      case 'instance':
        {
          instance = ReferenceBuilder.empty();
          return;
        }
      case 'causality':
        {
          causality = <AdverseEventCausalityBuilder>[];
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
    bool instance = false,
    bool causality = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (instance) this.instance = null;
    if (causality) this.causality = null;
  }

  @override
  AdverseEventSuspectEntityBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventSuspectEntityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? instance,
    List<AdverseEventCausalityBuilder>? causality,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventSuspectEntityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      instance: instance ?? this.instance,
      causality: causality ?? this.causality,
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
    if (o is! AdverseEventSuspectEntityBuilder) {
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
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!listEquals<AdverseEventCausalityBuilder>(
      causality,
      o.causality,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdverseEventCausalityBuilder]
/// Information on the possible cause of the event.
class AdverseEventCausalityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdverseEventCausalityBuilder]

  AdverseEventCausalityBuilder({
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
  /// For Builder classes, no fields are required
  factory AdverseEventCausalityBuilder.empty() =>
      AdverseEventCausalityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdverseEventCausalityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdverseEvent.suspectEntity.causality';
    return AdverseEventCausalityBuilder(
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
      assessment: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'assessment',
        CodeableConceptBuilder.fromJson,
        '$objectPath.assessment',
      ),
      productRelatedness: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'productRelatedness',
        FhirStringBuilder.fromJson,
        '$objectPath.productRelatedness',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
    );
  }

  /// Deserialize [AdverseEventCausalityBuilder]
  /// from a [String] or [YamlMap] object
  factory AdverseEventCausalityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdverseEventCausalityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdverseEventCausalityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdverseEventCausalityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdverseEventCausalityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdverseEventCausalityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdverseEventCausalityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdverseEventCausality';

  /// [assessment]
  /// Assessment of if the entity caused the event.
  CodeableConceptBuilder? assessment;

  /// [productRelatedness]
  /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  FhirStringBuilder? productRelatedness;

  /// [author]
  /// AdverseEvent.suspectEntity.causalityAuthor.
  ReferenceBuilder? author;

  /// [method]
  /// ProbabilityScale | Bayesian | Checklist.
  CodeableConceptBuilder? method;

  /// Converts a [AdverseEventCausalityBuilder]
  /// to [AdverseEventCausality]
  @override
  AdverseEventCausality build() => AdverseEventCausality.fromJson(toJson());

  /// Converts a [AdverseEventCausalityBuilder]
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
    addField('assessment', assessment);
    addField('productRelatedness', productRelatedness);
    addField('author', author);
    addField('method', method);
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
      case 'assessment':
        {
          if (child is CodeableConceptBuilder) {
            assessment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productRelatedness':
        {
          if (child is FhirStringBuilder) {
            productRelatedness = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                productRelatedness = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
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
      case 'assessment':
        return ['CodeableConceptBuilder'];
      case 'productRelatedness':
        return ['FhirStringBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdverseEventCausalityBuilder]
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
      case 'assessment':
        {
          assessment = CodeableConceptBuilder.empty();
          return;
        }
      case 'productRelatedness':
        {
          productRelatedness = FhirStringBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
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
    bool assessment = false,
    bool productRelatedness = false,
    bool author = false,
    bool method = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (assessment) this.assessment = null;
    if (productRelatedness) this.productRelatedness = null;
    if (author) this.author = null;
    if (method) this.method = null;
  }

  @override
  AdverseEventCausalityBuilder clone() => throw UnimplementedError();
  @override
  AdverseEventCausalityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? assessment,
    FhirStringBuilder? productRelatedness,
    ReferenceBuilder? author,
    CodeableConceptBuilder? method,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdverseEventCausalityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      assessment: assessment ?? this.assessment,
      productRelatedness: productRelatedness ?? this.productRelatedness,
      author: author ?? this.author,
      method: method ?? this.method,
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
    if (o is! AdverseEventCausalityBuilder) {
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
