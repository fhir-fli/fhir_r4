import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Encounter]
/// An interaction between a patient and healthcare provider(s) for the
/// purpose of providing healthcare service(s) or assessing the health
/// status of a patient.
class Encounter extends DomainResource {
  /// Primary constructor for
  /// [Encounter]

  const Encounter({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusHistory,
    required this.class_,
    this.classHistory,
    this.type,
    this.serviceType,
    this.priority,
    this.subject,
    this.episodeOfCare,
    this.basedOn,
    this.participant,
    this.appointment,
    this.period,
    this.length,
    this.reasonCode,
    this.reasonReference,
    this.diagnosis,
    this.account,
    this.hospitalization,
    this.location,
    this.serviceProvider,
    this.partOf,
  }) : super(
          objectPath: 'Encounter',
          resourceType: R4ResourceType.Encounter,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Encounter.empty() => Encounter(
        status: EncounterStatus.values.first,
        class_: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Encounter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter';
    return Encounter(
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
      status: JsonParser.parsePrimitive<EncounterStatus>(
        json,
        'status',
        EncounterStatus.fromJson,
        '$objectPath.status',
      )!,
      statusHistory: (json['statusHistory'] as List<dynamic>?)
          ?.map<EncounterStatusHistory>(
            (v) => EncounterStatusHistory.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusHistory',
              },
            ),
          )
          .toList(),
      class_: JsonParser.parseObject<Coding>(
        json,
        'class',
        Coding.fromJson,
        '$objectPath.class',
      )!,
      classHistory: (json['classHistory'] as List<dynamic>?)
          ?.map<EncounterClassHistory>(
            (v) => EncounterClassHistory.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classHistory',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      serviceType: JsonParser.parseObject<CodeableConcept>(
        json,
        'serviceType',
        CodeableConcept.fromJson,
        '$objectPath.serviceType',
      ),
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
        '$objectPath.priority',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      episodeOfCare: (json['episodeOfCare'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.episodeOfCare',
              },
            ),
          )
          .toList(),
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
      participant: (json['participant'] as List<dynamic>?)
          ?.map<EncounterParticipant>(
            (v) => EncounterParticipant.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appointment',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      length: JsonParser.parseObject<FhirDuration>(
        json,
        'length',
        FhirDuration.fromJson,
        '$objectPath.length',
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
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<EncounterDiagnosis>(
            (v) => EncounterDiagnosis.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      account: (json['account'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.account',
              },
            ),
          )
          .toList(),
      hospitalization: JsonParser.parseObject<EncounterHospitalization>(
        json,
        'hospitalization',
        EncounterHospitalization.fromJson,
        '$objectPath.hospitalization',
      ),
      location: (json['location'] as List<dynamic>?)
          ?.map<EncounterLocation>(
            (v) => EncounterLocation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      serviceProvider: JsonParser.parseObject<Reference>(
        json,
        'serviceProvider',
        Reference.fromJson,
        '$objectPath.serviceProvider',
      ),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
        '$objectPath.partOf',
      ),
    );
  }

  /// Deserialize [Encounter]
  /// from a [String] or [YamlMap] object
  factory Encounter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Encounter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Encounter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Encounter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Encounter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Encounter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Encounter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Encounter';

  /// [identifier]
  /// Identifier(s) by which this encounter is known.
  final List<Identifier>? identifier;

  /// [status]
  /// planned | arrived | triaged | in-progress | onleave | finished |
  /// cancelled +.
  final EncounterStatus status;

  /// [statusHistory]
  /// The status history permits the encounter resource to contain the status
  /// history without needing to read through the historical versions of the
  /// resource, or even have the server store them.
  final List<EncounterStatusHistory>? statusHistory;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  final Coding class_;

  /// [classHistory]
  /// The class history permits the tracking of the encounters transitions
  /// without needing to go through the resource history. This would be used
  /// for a case where an admission starts of as an emergency encounter, then
  /// transitions into an inpatient scenario. Doing this and not restarting a
  /// new encounter ensures that any lab/diagnostic results can more easily
  /// follow the patient and not require re-processing and not get lost or
  /// cancelled during a kind of discharge from emergency to inpatient.
  final List<EncounterClassHistory>? classHistory;

  /// [type]
  /// Specific type of encounter (e.g. e-mail consultation, surgical
  /// day-care, skilled nursing, rehabilitation).
  final List<CodeableConcept>? type;

  /// [serviceType]
  /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  final CodeableConcept? serviceType;

  /// [priority]
  /// Indicates the urgency of the encounter.
  final CodeableConcept? priority;

  /// [subject]
  /// The patient or group present at the encounter.
  final Reference? subject;

  /// [episodeOfCare]
  /// Where a specific encounter should be classified as a part of a specific
  /// episode(s) of care this field should be used. This association can
  /// facilitate grouping of related encounters together for a specific
  /// purpose, such as government reporting, issue tracking, association via
  /// a common problem. The association is recorded on the encounter as these
  /// are typically created after the episode of care and grouped on entry
  /// rather than editing the episode of care to append another encounter to
  /// it (the episode of care could span years).
  final List<Reference>? episodeOfCare;

  /// [basedOn]
  /// The request this encounter satisfies (e.g. incoming referral or
  /// procedure request).
  final List<Reference>? basedOn;

  /// [participant]
  /// The list of people responsible for providing the service.
  final List<EncounterParticipant>? participant;

  /// [appointment]
  /// The appointment that scheduled this encounter.
  final List<Reference>? appointment;

  /// [period]
  /// The start and end time of the encounter.
  final Period? period;

  /// [length]
  /// Quantity of time the encounter lasted. This excludes the time during
  /// leaves of absence.
  final FhirDuration? length;

  /// [reasonCode]
  /// Reason the encounter takes place, expressed as a code. For admissions,
  /// this can be used for a coded admission diagnosis.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Reason the encounter takes place, expressed as a code. For admissions,
  /// this can be used for a coded admission diagnosis.
  final List<Reference>? reasonReference;

  /// [diagnosis]
  /// The list of diagnosis relevant to this encounter.
  final List<EncounterDiagnosis>? diagnosis;

  /// [account]
  /// The set of accounts that may be used for billing for this Encounter.
  final List<Reference>? account;

  /// [hospitalization]
  /// Details about the admission to a healthcare service.
  final EncounterHospitalization? hospitalization;

  /// [location]
  /// List of locations where the patient has been during this encounter.
  final List<EncounterLocation>? location;

  /// [serviceProvider]
  /// The organization that is primarily responsible for this Encounter's
  /// services. This MAY be the same as the organization on the Patient
  /// record, however it could be different, such as if the actor performing
  /// the services was from an external organization (which may be billed
  /// seperately) for an external consultation. Refer to the example bundle
  /// showing an abbreviated set of Encounters for a colonoscopy.
  final Reference? serviceProvider;

  /// [partOf]
  /// Another Encounter of which this encounter is a part of
  /// (administratively or in time).
  final Reference? partOf;
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
      'status',
      status,
    );
    addField(
      'statusHistory',
      statusHistory,
    );
    addField(
      'class',
      class_,
    );
    addField(
      'classHistory',
      classHistory,
    );
    addField(
      'type',
      type,
    );
    addField(
      'serviceType',
      serviceType,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'episodeOfCare',
      episodeOfCare,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'participant',
      participant,
    );
    addField(
      'appointment',
      appointment,
    );
    addField(
      'period',
      period,
    );
    addField(
      'length',
      length,
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
      'diagnosis',
      diagnosis,
    );
    addField(
      'account',
      account,
    );
    addField(
      'hospitalization',
      hospitalization,
    );
    addField(
      'location',
      location,
    );
    addField(
      'serviceProvider',
      serviceProvider,
    );
    addField(
      'partOf',
      partOf,
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
      'status',
      'statusHistory',
      'class',
      'classHistory',
      'type',
      'serviceType',
      'priority',
      'subject',
      'episodeOfCare',
      'basedOn',
      'participant',
      'appointment',
      'period',
      'length',
      'reasonCode',
      'reasonReference',
      'diagnosis',
      'account',
      'hospitalization',
      'location',
      'serviceProvider',
      'partOf',
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
      case 'status':
        fields.add(status);
      case 'statusHistory':
        if (statusHistory != null) {
          fields.addAll(statusHistory!);
        }
      case 'class':
        fields.add(class_);
      case 'classHistory':
        if (classHistory != null) {
          fields.addAll(classHistory!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'serviceType':
        if (serviceType != null) {
          fields.add(serviceType!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'episodeOfCare':
        if (episodeOfCare != null) {
          fields.addAll(episodeOfCare!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'appointment':
        if (appointment != null) {
          fields.addAll(appointment!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'length':
        if (length != null) {
          fields.add(length!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'diagnosis':
        if (diagnosis != null) {
          fields.addAll(diagnosis!);
        }
      case 'account':
        if (account != null) {
          fields.addAll(account!);
        }
      case 'hospitalization':
        if (hospitalization != null) {
          fields.add(hospitalization!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'serviceProvider':
        if (serviceProvider != null) {
          fields.add(serviceProvider!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.add(partOf!);
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
      case 'status':
        {
          if (child is EncounterStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusHistory':
        {
          if (child is List<EncounterStatusHistory>) {
            // Add all elements from passed list
            final newList = [...?statusHistory, ...child];
            return copyWith(statusHistory: newList);
          } else if (child is EncounterStatusHistory) {
            // Add single element to existing list or create new list
            final newList = [...?statusHistory, child];
            return copyWith(statusHistory: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'class':
        {
          if (child is Coding) {
            return copyWith(class_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'classHistory':
        {
          if (child is List<EncounterClassHistory>) {
            // Add all elements from passed list
            final newList = [...?classHistory, ...child];
            return copyWith(classHistory: newList);
          } else if (child is EncounterClassHistory) {
            // Add single element to existing list or create new list
            final newList = [...?classHistory, child];
            return copyWith(classHistory: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?type, child];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serviceType':
        {
          if (child is CodeableConcept) {
            return copyWith(serviceType: child);
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
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'episodeOfCare':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?episodeOfCare, ...child];
            return copyWith(episodeOfCare: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?episodeOfCare, child];
            return copyWith(episodeOfCare: newList);
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
            final newList = [...?basedOn, child];
            return copyWith(basedOn: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participant':
        {
          if (child is List<EncounterParticipant>) {
            // Add all elements from passed list
            final newList = [...?participant, ...child];
            return copyWith(participant: newList);
          } else if (child is EncounterParticipant) {
            // Add single element to existing list or create new list
            final newList = [...?participant, child];
            return copyWith(participant: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'appointment':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?appointment, ...child];
            return copyWith(appointment: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?appointment, child];
            return copyWith(appointment: newList);
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
      case 'length':
        {
          if (child is FhirDuration) {
            return copyWith(length: child);
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
            final newList = [...?reasonCode, child];
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
            final newList = [...?reasonReference, child];
            return copyWith(reasonReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosis':
        {
          if (child is List<EncounterDiagnosis>) {
            // Add all elements from passed list
            final newList = [...?diagnosis, ...child];
            return copyWith(diagnosis: newList);
          } else if (child is EncounterDiagnosis) {
            // Add single element to existing list or create new list
            final newList = [...?diagnosis, child];
            return copyWith(diagnosis: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'account':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?account, ...child];
            return copyWith(account: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?account, child];
            return copyWith(account: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hospitalization':
        {
          if (child is EncounterHospitalization) {
            return copyWith(hospitalization: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is List<EncounterLocation>) {
            // Add all elements from passed list
            final newList = [...?location, ...child];
            return copyWith(location: newList);
          } else if (child is EncounterLocation) {
            // Add single element to existing list or create new list
            final newList = [...?location, child];
            return copyWith(location: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serviceProvider':
        {
          if (child is Reference) {
            return copyWith(serviceProvider: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is Reference) {
            return copyWith(partOf: child);
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
      case 'status':
        return ['FhirCode'];
      case 'statusHistory':
        return ['EncounterStatusHistory'];
      case 'class':
        return ['Coding'];
      case 'classHistory':
        return ['EncounterClassHistory'];
      case 'type':
        return ['CodeableConcept'];
      case 'serviceType':
        return ['CodeableConcept'];
      case 'priority':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'episodeOfCare':
        return ['Reference'];
      case 'basedOn':
        return ['Reference'];
      case 'participant':
        return ['EncounterParticipant'];
      case 'appointment':
        return ['Reference'];
      case 'period':
        return ['Period'];
      case 'length':
        return ['FhirDuration'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'diagnosis':
        return ['EncounterDiagnosis'];
      case 'account':
        return ['Reference'];
      case 'hospitalization':
        return ['EncounterHospitalization'];
      case 'location':
        return ['EncounterLocation'];
      case 'serviceProvider':
        return ['Reference'];
      case 'partOf':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Encounter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Encounter createProperty(
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
      case 'status':
        {
          return copyWith(
            status: EncounterStatus.empty(),
          );
        }
      case 'statusHistory':
        {
          return copyWith(
            statusHistory: <EncounterStatusHistory>[],
          );
        }
      case 'class':
        {
          return copyWith(
            class_: Coding.empty(),
          );
        }
      case 'classHistory':
        {
          return copyWith(
            classHistory: <EncounterClassHistory>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'serviceType':
        {
          return copyWith(
            serviceType: CodeableConcept.empty(),
          );
        }
      case 'priority':
        {
          return copyWith(
            priority: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'episodeOfCare':
        {
          return copyWith(
            episodeOfCare: <Reference>[],
          );
        }
      case 'basedOn':
        {
          return copyWith(
            basedOn: <Reference>[],
          );
        }
      case 'participant':
        {
          return copyWith(
            participant: <EncounterParticipant>[],
          );
        }
      case 'appointment':
        {
          return copyWith(
            appointment: <Reference>[],
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      case 'length':
        {
          return copyWith(
            length: FhirDuration.empty(),
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
      case 'diagnosis':
        {
          return copyWith(
            diagnosis: <EncounterDiagnosis>[],
          );
        }
      case 'account':
        {
          return copyWith(
            account: <Reference>[],
          );
        }
      case 'hospitalization':
        {
          return copyWith(
            hospitalization: EncounterHospitalization.empty(),
          );
        }
      case 'location':
        {
          return copyWith(
            location: <EncounterLocation>[],
          );
        }
      case 'serviceProvider':
        {
          return copyWith(
            serviceProvider: Reference.empty(),
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Encounter clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool statusHistory = false,
    bool classHistory = false,
    bool type = false,
    bool serviceType = false,
    bool priority = false,
    bool subject = false,
    bool episodeOfCare = false,
    bool basedOn = false,
    bool participant = false,
    bool appointment = false,
    bool period = false,
    bool length = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool diagnosis = false,
    bool account = false,
    bool hospitalization = false,
    bool location = false,
    bool serviceProvider = false,
    bool partOf = false,
  }) {
    return Encounter(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      statusHistory: statusHistory ? null : this.statusHistory,
      class_: class_,
      classHistory: classHistory ? null : this.classHistory,
      type: type ? null : this.type,
      serviceType: serviceType ? null : this.serviceType,
      priority: priority ? null : this.priority,
      subject: subject ? null : this.subject,
      episodeOfCare: episodeOfCare ? null : this.episodeOfCare,
      basedOn: basedOn ? null : this.basedOn,
      participant: participant ? null : this.participant,
      appointment: appointment ? null : this.appointment,
      period: period ? null : this.period,
      length: length ? null : this.length,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      diagnosis: diagnosis ? null : this.diagnosis,
      account: account ? null : this.account,
      hospitalization: hospitalization ? null : this.hospitalization,
      location: location ? null : this.location,
      serviceProvider: serviceProvider ? null : this.serviceProvider,
      partOf: partOf ? null : this.partOf,
    );
  }

  @override
  Encounter clone() => throw UnimplementedError();
  @override
  Encounter copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    EncounterStatus? status,
    List<EncounterStatusHistory>? statusHistory,
    Coding? class_,
    List<EncounterClassHistory>? classHistory,
    List<CodeableConcept>? type,
    CodeableConcept? serviceType,
    CodeableConcept? priority,
    Reference? subject,
    List<Reference>? episodeOfCare,
    List<Reference>? basedOn,
    List<EncounterParticipant>? participant,
    List<Reference>? appointment,
    Period? period,
    FhirDuration? length,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<EncounterDiagnosis>? diagnosis,
    List<Reference>? account,
    EncounterHospitalization? hospitalization,
    List<EncounterLocation>? location,
    Reference? serviceProvider,
    Reference? partOf,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Encounter(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusHistory: statusHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statusHistory',
                ),
              )
              .toList() ??
          this.statusHistory,
      class_: class_?.copyWith(
            objectPath: '$newObjectPath.class',
          ) ??
          this.class_,
      classHistory: classHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classHistory',
                ),
              )
              .toList() ??
          this.classHistory,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      serviceType: serviceType?.copyWith(
            objectPath: '$newObjectPath.serviceType',
          ) ??
          this.serviceType,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      episodeOfCare: episodeOfCare
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.episodeOfCare',
                ),
              )
              .toList() ??
          this.episodeOfCare,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      participant: participant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.participant',
                ),
              )
              .toList() ??
          this.participant,
      appointment: appointment
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.appointment',
                ),
              )
              .toList() ??
          this.appointment,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      length: length?.copyWith(
            objectPath: '$newObjectPath.length',
          ) ??
          this.length,
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
      diagnosis: diagnosis
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.diagnosis',
                ),
              )
              .toList() ??
          this.diagnosis,
      account: account
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.account',
                ),
              )
              .toList() ??
          this.account,
      hospitalization: hospitalization?.copyWith(
            objectPath: '$newObjectPath.hospitalization',
          ) ??
          this.hospitalization,
      location: location
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.location',
                ),
              )
              .toList() ??
          this.location,
      serviceProvider: serviceProvider?.copyWith(
            objectPath: '$newObjectPath.serviceProvider',
          ) ??
          this.serviceProvider,
      partOf: partOf?.copyWith(
            objectPath: '$newObjectPath.partOf',
          ) ??
          this.partOf,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Encounter) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<EncounterStatusHistory>(
      statusHistory,
      o.statusHistory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!listEquals<EncounterClassHistory>(
      classHistory,
      o.classHistory,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      serviceType,
      o.serviceType,
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      episodeOfCare,
      o.episodeOfCare,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<EncounterParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      appointment,
      o.appointment,
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
      length,
      o.length,
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
    if (!listEquals<EncounterDiagnosis>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hospitalization,
      o.hospitalization,
    )) {
      return false;
    }
    if (!listEquals<EncounterLocation>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      serviceProvider,
      o.serviceProvider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterStatusHistory]
/// The status history permits the encounter resource to contain the status
/// history without needing to read through the historical versions of the
/// resource, or even have the server store them.
class EncounterStatusHistory extends BackboneElement {
  /// Primary constructor for
  /// [EncounterStatusHistory]

  const EncounterStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    required this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.statusHistory',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EncounterStatusHistory.empty() => EncounterStatusHistory(
        status: EncounterStatus.values.first,
        period: Period.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterStatusHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.statusHistory';
    return EncounterStatusHistory(
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
      status: JsonParser.parsePrimitive<EncounterStatus>(
        json,
        'status',
        EncounterStatus.fromJson,
        '$objectPath.status',
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      )!,
    );
  }

  /// Deserialize [EncounterStatusHistory]
  /// from a [String] or [YamlMap] object
  factory EncounterStatusHistory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterStatusHistory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterStatusHistory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterStatusHistory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterStatusHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterStatusHistory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterStatusHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterStatusHistory';

  /// [status]
  /// planned | arrived | triaged | in-progress | onleave | finished |
  /// cancelled +.
  final EncounterStatus status;

  /// [period]
  /// The time that the episode was in the specified status.
  final Period period;
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
      'status',
      status,
    );
    addField(
      'period',
      period,
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
      'status',
      'period',
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
      case 'status':
        fields.add(status);
      case 'period':
        fields.add(period);
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
      case 'status':
        {
          if (child is EncounterStatus) {
            return copyWith(status: child);
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
      case 'status':
        return ['FhirCode'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterStatusHistory]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EncounterStatusHistory createProperty(
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
      case 'status':
        {
          return copyWith(
            status: EncounterStatus.empty(),
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EncounterStatusHistory clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return EncounterStatusHistory(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      status: status,
      period: period,
    );
  }

  @override
  EncounterStatusHistory clone() => throw UnimplementedError();
  @override
  EncounterStatusHistory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EncounterStatus? status,
    Period? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EncounterStatusHistory(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterStatusHistory) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterClassHistory]
/// The class history permits the tracking of the encounters transitions
/// without needing to go through the resource history. This would be used
/// for a case where an admission starts of as an emergency encounter, then
/// transitions into an inpatient scenario. Doing this and not restarting a
/// new encounter ensures that any lab/diagnostic results can more easily
/// follow the patient and not require re-processing and not get lost or
/// cancelled during a kind of discharge from emergency to inpatient.
class EncounterClassHistory extends BackboneElement {
  /// Primary constructor for
  /// [EncounterClassHistory]

  const EncounterClassHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.class_,
    required this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.classHistory',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EncounterClassHistory.empty() => EncounterClassHistory(
        class_: Coding.empty(),
        period: Period.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterClassHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.classHistory';
    return EncounterClassHistory(
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
      class_: JsonParser.parseObject<Coding>(
        json,
        'class',
        Coding.fromJson,
        '$objectPath.class',
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      )!,
    );
  }

  /// Deserialize [EncounterClassHistory]
  /// from a [String] or [YamlMap] object
  factory EncounterClassHistory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterClassHistory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterClassHistory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterClassHistory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterClassHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterClassHistory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterClassHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterClassHistory';

  /// [class_]
  /// inpatient | outpatient | ambulatory | emergency +.
  final Coding class_;

  /// [period]
  /// The time that the episode was in the specified class.
  final Period period;
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
      'class',
      class_,
    );
    addField(
      'period',
      period,
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
      'class',
      'period',
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
      case 'class':
        fields.add(class_);
      case 'period':
        fields.add(period);
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
      case 'class':
        {
          if (child is Coding) {
            return copyWith(class_: child);
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
      case 'class':
        return ['Coding'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterClassHistory]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EncounterClassHistory createProperty(
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
      case 'class':
        {
          return copyWith(
            class_: Coding.empty(),
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EncounterClassHistory clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return EncounterClassHistory(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      class_: class_,
      period: period,
    );
  }

  @override
  EncounterClassHistory clone() => throw UnimplementedError();
  @override
  EncounterClassHistory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? class_,
    Period? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EncounterClassHistory(
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
      class_: class_?.copyWith(
            objectPath: '$newObjectPath.class',
          ) ??
          this.class_,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterClassHistory) {
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
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterParticipant]
/// The list of people responsible for providing the service.
class EncounterParticipant extends BackboneElement {
  /// Primary constructor for
  /// [EncounterParticipant]

  const EncounterParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.individual,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.participant',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EncounterParticipant.empty() => const EncounterParticipant();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.participant';
    return EncounterParticipant(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      individual: JsonParser.parseObject<Reference>(
        json,
        'individual',
        Reference.fromJson,
        '$objectPath.individual',
      ),
    );
  }

  /// Deserialize [EncounterParticipant]
  /// from a [String] or [YamlMap] object
  factory EncounterParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterParticipant';

  /// [type]
  /// Role of participant in encounter.
  final List<CodeableConcept>? type;

  /// [period]
  /// The period of time that the specified participant participated in the
  /// encounter. These can overlap or be sub-sets of the overall encounter's
  /// period.
  final Period? period;

  /// [individual]
  /// Persons involved in the encounter other than the patient.
  final Reference? individual;
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
      'type',
      type,
    );
    addField(
      'period',
      period,
    );
    addField(
      'individual',
      individual,
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
      'type',
      'period',
      'individual',
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
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'individual':
        if (individual != null) {
          fields.add(individual!);
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
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?type, child];
            return copyWith(type: newList);
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
      case 'individual':
        {
          if (child is Reference) {
            return copyWith(individual: child);
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
      case 'type':
        return ['CodeableConcept'];
      case 'period':
        return ['Period'];
      case 'individual':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterParticipant]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EncounterParticipant createProperty(
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
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      case 'individual':
        {
          return copyWith(
            individual: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EncounterParticipant clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool period = false,
    bool individual = false,
  }) {
    return EncounterParticipant(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      period: period ? null : this.period,
      individual: individual ? null : this.individual,
    );
  }

  @override
  EncounterParticipant clone() => throw UnimplementedError();
  @override
  EncounterParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Period? period,
    Reference? individual,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EncounterParticipant(
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
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      individual: individual?.copyWith(
            objectPath: '$newObjectPath.individual',
          ) ??
          this.individual,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterParticipant) {
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
      type,
      o.type,
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
      individual,
      o.individual,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterDiagnosis]
/// The list of diagnosis relevant to this encounter.
class EncounterDiagnosis extends BackboneElement {
  /// Primary constructor for
  /// [EncounterDiagnosis]

  const EncounterDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EncounterDiagnosis.empty() => EncounterDiagnosis(
        condition: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.diagnosis';
    return EncounterDiagnosis(
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
      condition: JsonParser.parseObject<Reference>(
        json,
        'condition',
        Reference.fromJson,
        '$objectPath.condition',
      )!,
      use: JsonParser.parseObject<CodeableConcept>(
        json,
        'use',
        CodeableConcept.fromJson,
        '$objectPath.use',
      ),
      rank: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'rank',
        FhirPositiveInt.fromJson,
        '$objectPath.rank',
      ),
    );
  }

  /// Deserialize [EncounterDiagnosis]
  /// from a [String] or [YamlMap] object
  factory EncounterDiagnosis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterDiagnosis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterDiagnosis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterDiagnosis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterDiagnosis.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterDiagnosis';

  /// [condition]
  /// Reason the encounter takes place, as specified using information from
  /// another resource. For admissions, this is the admission diagnosis. The
  /// indication will typically be a Condition (with other resources
  /// referenced in the evidence.detail), or a Procedure.
  final Reference condition;

  /// [use]
  /// Role that this diagnosis has within the encounter (e.g. admission,
  /// billing, discharge …).
  final CodeableConcept? use;

  /// [rank]
  /// Ranking of the diagnosis (for each role type).
  final FhirPositiveInt? rank;
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
      'condition',
      condition,
    );
    addField(
      'use',
      use,
    );
    addField(
      'rank',
      rank,
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
      'condition',
      'use',
      'rank',
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
      case 'condition':
        fields.add(condition);
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'rank':
        if (rank != null) {
          fields.add(rank!);
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
      case 'condition':
        {
          if (child is Reference) {
            return copyWith(condition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is CodeableConcept) {
            return copyWith(use: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rank':
        {
          if (child is FhirPositiveInt) {
            return copyWith(rank: child);
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
      case 'condition':
        return ['Reference'];
      case 'use':
        return ['CodeableConcept'];
      case 'rank':
        return ['FhirPositiveInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterDiagnosis]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EncounterDiagnosis createProperty(
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
      case 'condition':
        {
          return copyWith(
            condition: Reference.empty(),
          );
        }
      case 'use':
        {
          return copyWith(
            use: CodeableConcept.empty(),
          );
        }
      case 'rank':
        {
          return copyWith(
            rank: FhirPositiveInt.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EncounterDiagnosis clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool use = false,
    bool rank = false,
  }) {
    return EncounterDiagnosis(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      condition: condition,
      use: use ? null : this.use,
      rank: rank ? null : this.rank,
    );
  }

  @override
  EncounterDiagnosis clone() => throw UnimplementedError();
  @override
  EncounterDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    CodeableConcept? use,
    FhirPositiveInt? rank,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EncounterDiagnosis(
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
      condition: condition?.copyWith(
            objectPath: '$newObjectPath.condition',
          ) ??
          this.condition,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      rank: rank?.copyWith(
            objectPath: '$newObjectPath.rank',
          ) ??
          this.rank,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterDiagnosis) {
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
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      use,
      o.use,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rank,
      o.rank,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterHospitalization]
/// Details about the admission to a healthcare service.
class EncounterHospitalization extends BackboneElement {
  /// Primary constructor for
  /// [EncounterHospitalization]

  const EncounterHospitalization({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.preAdmissionIdentifier,
    this.origin,
    this.admitSource,
    this.reAdmission,
    this.dietPreference,
    this.specialCourtesy,
    this.specialArrangement,
    this.destination,
    this.dischargeDisposition,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.hospitalization',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EncounterHospitalization.empty() => const EncounterHospitalization();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterHospitalization.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.hospitalization';
    return EncounterHospitalization(
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
      preAdmissionIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'preAdmissionIdentifier',
        Identifier.fromJson,
        '$objectPath.preAdmissionIdentifier',
      ),
      origin: JsonParser.parseObject<Reference>(
        json,
        'origin',
        Reference.fromJson,
        '$objectPath.origin',
      ),
      admitSource: JsonParser.parseObject<CodeableConcept>(
        json,
        'admitSource',
        CodeableConcept.fromJson,
        '$objectPath.admitSource',
      ),
      reAdmission: JsonParser.parseObject<CodeableConcept>(
        json,
        'reAdmission',
        CodeableConcept.fromJson,
        '$objectPath.reAdmission',
      ),
      dietPreference: (json['dietPreference'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dietPreference',
              },
            ),
          )
          .toList(),
      specialCourtesy: (json['specialCourtesy'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialCourtesy',
              },
            ),
          )
          .toList(),
      specialArrangement: (json['specialArrangement'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialArrangement',
              },
            ),
          )
          .toList(),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
        '$objectPath.destination',
      ),
      dischargeDisposition: JsonParser.parseObject<CodeableConcept>(
        json,
        'dischargeDisposition',
        CodeableConcept.fromJson,
        '$objectPath.dischargeDisposition',
      ),
    );
  }

  /// Deserialize [EncounterHospitalization]
  /// from a [String] or [YamlMap] object
  factory EncounterHospitalization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterHospitalization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterHospitalization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterHospitalization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterHospitalization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterHospitalization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterHospitalization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterHospitalization';

  /// [preAdmissionIdentifier]
  /// Pre-admission identifier.
  final Identifier? preAdmissionIdentifier;

  /// [origin]
  /// The location/organization from which the patient came before admission.
  final Reference? origin;

  /// [admitSource]
  /// From where patient was admitted (physician referral, transfer).
  final CodeableConcept? admitSource;

  /// [reAdmission]
  /// Whether this hospitalization is a readmission and why if known.
  final CodeableConcept? reAdmission;

  /// [dietPreference]
  /// Diet preferences reported by the patient.
  final List<CodeableConcept>? dietPreference;

  /// [specialCourtesy]
  /// Special courtesies (VIP, board member).
  final List<CodeableConcept>? specialCourtesy;

  /// [specialArrangement]
  /// Any special requests that have been made for this hospitalization
  /// encounter, such as the provision of specific equipment or other things.
  final List<CodeableConcept>? specialArrangement;

  /// [destination]
  /// Location/organization to which the patient is discharged.
  final Reference? destination;

  /// [dischargeDisposition]
  /// Category or kind of location after discharge.
  final CodeableConcept? dischargeDisposition;
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
      'preAdmissionIdentifier',
      preAdmissionIdentifier,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'admitSource',
      admitSource,
    );
    addField(
      'reAdmission',
      reAdmission,
    );
    addField(
      'dietPreference',
      dietPreference,
    );
    addField(
      'specialCourtesy',
      specialCourtesy,
    );
    addField(
      'specialArrangement',
      specialArrangement,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'dischargeDisposition',
      dischargeDisposition,
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
      'preAdmissionIdentifier',
      'origin',
      'admitSource',
      'reAdmission',
      'dietPreference',
      'specialCourtesy',
      'specialArrangement',
      'destination',
      'dischargeDisposition',
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
      case 'preAdmissionIdentifier':
        if (preAdmissionIdentifier != null) {
          fields.add(preAdmissionIdentifier!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'admitSource':
        if (admitSource != null) {
          fields.add(admitSource!);
        }
      case 'reAdmission':
        if (reAdmission != null) {
          fields.add(reAdmission!);
        }
      case 'dietPreference':
        if (dietPreference != null) {
          fields.addAll(dietPreference!);
        }
      case 'specialCourtesy':
        if (specialCourtesy != null) {
          fields.addAll(specialCourtesy!);
        }
      case 'specialArrangement':
        if (specialArrangement != null) {
          fields.addAll(specialArrangement!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'dischargeDisposition':
        if (dischargeDisposition != null) {
          fields.add(dischargeDisposition!);
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
      case 'preAdmissionIdentifier':
        {
          if (child is Identifier) {
            return copyWith(preAdmissionIdentifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'origin':
        {
          if (child is Reference) {
            return copyWith(origin: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'admitSource':
        {
          if (child is CodeableConcept) {
            return copyWith(admitSource: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reAdmission':
        {
          if (child is CodeableConcept) {
            return copyWith(reAdmission: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dietPreference':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?dietPreference, ...child];
            return copyWith(dietPreference: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?dietPreference, child];
            return copyWith(dietPreference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialCourtesy':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?specialCourtesy, ...child];
            return copyWith(specialCourtesy: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?specialCourtesy, child];
            return copyWith(specialCourtesy: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialArrangement':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?specialArrangement, ...child];
            return copyWith(specialArrangement: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?specialArrangement, child];
            return copyWith(specialArrangement: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is Reference) {
            return copyWith(destination: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dischargeDisposition':
        {
          if (child is CodeableConcept) {
            return copyWith(dischargeDisposition: child);
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
      case 'preAdmissionIdentifier':
        return ['Identifier'];
      case 'origin':
        return ['Reference'];
      case 'admitSource':
        return ['CodeableConcept'];
      case 'reAdmission':
        return ['CodeableConcept'];
      case 'dietPreference':
        return ['CodeableConcept'];
      case 'specialCourtesy':
        return ['CodeableConcept'];
      case 'specialArrangement':
        return ['CodeableConcept'];
      case 'destination':
        return ['Reference'];
      case 'dischargeDisposition':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterHospitalization]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EncounterHospitalization createProperty(
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
      case 'preAdmissionIdentifier':
        {
          return copyWith(
            preAdmissionIdentifier: Identifier.empty(),
          );
        }
      case 'origin':
        {
          return copyWith(
            origin: Reference.empty(),
          );
        }
      case 'admitSource':
        {
          return copyWith(
            admitSource: CodeableConcept.empty(),
          );
        }
      case 'reAdmission':
        {
          return copyWith(
            reAdmission: CodeableConcept.empty(),
          );
        }
      case 'dietPreference':
        {
          return copyWith(
            dietPreference: <CodeableConcept>[],
          );
        }
      case 'specialCourtesy':
        {
          return copyWith(
            specialCourtesy: <CodeableConcept>[],
          );
        }
      case 'specialArrangement':
        {
          return copyWith(
            specialArrangement: <CodeableConcept>[],
          );
        }
      case 'destination':
        {
          return copyWith(
            destination: Reference.empty(),
          );
        }
      case 'dischargeDisposition':
        {
          return copyWith(
            dischargeDisposition: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EncounterHospitalization clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool preAdmissionIdentifier = false,
    bool origin = false,
    bool admitSource = false,
    bool reAdmission = false,
    bool dietPreference = false,
    bool specialCourtesy = false,
    bool specialArrangement = false,
    bool destination = false,
    bool dischargeDisposition = false,
  }) {
    return EncounterHospitalization(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      preAdmissionIdentifier:
          preAdmissionIdentifier ? null : this.preAdmissionIdentifier,
      origin: origin ? null : this.origin,
      admitSource: admitSource ? null : this.admitSource,
      reAdmission: reAdmission ? null : this.reAdmission,
      dietPreference: dietPreference ? null : this.dietPreference,
      specialCourtesy: specialCourtesy ? null : this.specialCourtesy,
      specialArrangement: specialArrangement ? null : this.specialArrangement,
      destination: destination ? null : this.destination,
      dischargeDisposition:
          dischargeDisposition ? null : this.dischargeDisposition,
    );
  }

  @override
  EncounterHospitalization clone() => throw UnimplementedError();
  @override
  EncounterHospitalization copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? preAdmissionIdentifier,
    Reference? origin,
    CodeableConcept? admitSource,
    CodeableConcept? reAdmission,
    List<CodeableConcept>? dietPreference,
    List<CodeableConcept>? specialCourtesy,
    List<CodeableConcept>? specialArrangement,
    Reference? destination,
    CodeableConcept? dischargeDisposition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EncounterHospitalization(
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
      preAdmissionIdentifier: preAdmissionIdentifier?.copyWith(
            objectPath: '$newObjectPath.preAdmissionIdentifier',
          ) ??
          this.preAdmissionIdentifier,
      origin: origin?.copyWith(
            objectPath: '$newObjectPath.origin',
          ) ??
          this.origin,
      admitSource: admitSource?.copyWith(
            objectPath: '$newObjectPath.admitSource',
          ) ??
          this.admitSource,
      reAdmission: reAdmission?.copyWith(
            objectPath: '$newObjectPath.reAdmission',
          ) ??
          this.reAdmission,
      dietPreference: dietPreference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dietPreference',
                ),
              )
              .toList() ??
          this.dietPreference,
      specialCourtesy: specialCourtesy
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialCourtesy',
                ),
              )
              .toList() ??
          this.specialCourtesy,
      specialArrangement: specialArrangement
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialArrangement',
                ),
              )
              .toList() ??
          this.specialArrangement,
      destination: destination?.copyWith(
            objectPath: '$newObjectPath.destination',
          ) ??
          this.destination,
      dischargeDisposition: dischargeDisposition?.copyWith(
            objectPath: '$newObjectPath.dischargeDisposition',
          ) ??
          this.dischargeDisposition,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterHospitalization) {
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
      preAdmissionIdentifier,
      o.preAdmissionIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      admitSource,
      o.admitSource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reAdmission,
      o.reAdmission,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      dietPreference,
      o.dietPreference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialCourtesy,
      o.specialCourtesy,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialArrangement,
      o.specialArrangement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dischargeDisposition,
      o.dischargeDisposition,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterLocation]
/// List of locations where the patient has been during this encounter.
class EncounterLocation extends BackboneElement {
  /// Primary constructor for
  /// [EncounterLocation]

  const EncounterLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.location,
    this.status,
    this.physicalType,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.location',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EncounterLocation.empty() => EncounterLocation(
        location: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.location';
    return EncounterLocation(
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
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      )!,
      status: JsonParser.parsePrimitive<EncounterLocationStatus>(
        json,
        'status',
        EncounterLocationStatus.fromJson,
        '$objectPath.status',
      ),
      physicalType: JsonParser.parseObject<CodeableConcept>(
        json,
        'physicalType',
        CodeableConcept.fromJson,
        '$objectPath.physicalType',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [EncounterLocation]
  /// from a [String] or [YamlMap] object
  factory EncounterLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterLocation';

  /// [location]
  /// The location where the encounter takes place.
  final Reference location;

  /// [status]
  /// The status of the participants' presence at the specified location
  /// during the period specified. If the participant is no longer at the
  /// location, then the period will have an end date/time.
  final EncounterLocationStatus? status;

  /// [physicalType]
  /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  final CodeableConcept? physicalType;

  /// [period]
  /// Time period during which the patient was present at the location.
  final Period? period;
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
      'location',
      location,
    );
    addField(
      'status',
      status,
    );
    addField(
      'physicalType',
      physicalType,
    );
    addField(
      'period',
      period,
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
      'location',
      'status',
      'physicalType',
      'period',
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
      case 'location':
        fields.add(location);
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'physicalType':
        if (physicalType != null) {
          fields.add(physicalType!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is EncounterLocationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'physicalType':
        {
          if (child is CodeableConcept) {
            return copyWith(physicalType: child);
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
      case 'location':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'physicalType':
        return ['CodeableConcept'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterLocation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EncounterLocation createProperty(
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
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: EncounterLocationStatus.empty(),
          );
        }
      case 'physicalType':
        {
          return copyWith(
            physicalType: CodeableConcept.empty(),
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EncounterLocation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool status = false,
    bool physicalType = false,
    bool period = false,
  }) {
    return EncounterLocation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      location: location,
      status: status ? null : this.status,
      physicalType: physicalType ? null : this.physicalType,
      period: period ? null : this.period,
    );
  }

  @override
  EncounterLocation clone() => throw UnimplementedError();
  @override
  EncounterLocation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    EncounterLocationStatus? status,
    CodeableConcept? physicalType,
    Period? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EncounterLocation(
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
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      physicalType: physicalType?.copyWith(
            objectPath: '$newObjectPath.physicalType',
          ) ??
          this.physicalType,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterLocation) {
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
      location,
      o.location,
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
      physicalType,
      o.physicalType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}
