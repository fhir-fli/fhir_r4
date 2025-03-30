import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Encounter,
        EncounterClassHistory,
        EncounterDiagnosis,
        EncounterHospitalization,
        EncounterLocation,
        EncounterParticipant,
        EncounterStatusHistory,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [EncounterBuilder]
/// An interaction between a patient and healthcare provider(s) for the
/// purpose of providing healthcare service(s) or assessing the health
/// status of a patient.
class EncounterBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [EncounterBuilder]

  EncounterBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.statusHistory,
    this.class_,
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
  /// For Builder classes, no fields are required
  factory EncounterBuilder.empty() => EncounterBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter';
    return EncounterBuilder(
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
      status: JsonParser.parsePrimitive<EncounterStatusBuilder>(
        json,
        'status',
        EncounterStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusHistory: (json['statusHistory'] as List<dynamic>?)
          ?.map<EncounterStatusHistoryBuilder>(
            (v) => EncounterStatusHistoryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusHistory',
              },
            ),
          )
          .toList(),
      class_: JsonParser.parseObject<CodingBuilder>(
        json,
        'class',
        CodingBuilder.fromJson,
        '$objectPath.class',
      ),
      classHistory: (json['classHistory'] as List<dynamic>?)
          ?.map<EncounterClassHistoryBuilder>(
            (v) => EncounterClassHistoryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classHistory',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      serviceType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'serviceType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.serviceType',
      ),
      priority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'priority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.priority',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      episodeOfCare: (json['episodeOfCare'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.episodeOfCare',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<EncounterParticipantBuilder>(
            (v) => EncounterParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appointment',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      length: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'length',
        FhirDurationBuilder.fromJson,
        '$objectPath.length',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<EncounterDiagnosisBuilder>(
            (v) => EncounterDiagnosisBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      account: (json['account'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.account',
              },
            ),
          )
          .toList(),
      hospitalization: JsonParser.parseObject<EncounterHospitalizationBuilder>(
        json,
        'hospitalization',
        EncounterHospitalizationBuilder.fromJson,
        '$objectPath.hospitalization',
      ),
      location: (json['location'] as List<dynamic>?)
          ?.map<EncounterLocationBuilder>(
            (v) => EncounterLocationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      serviceProvider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'serviceProvider',
        ReferenceBuilder.fromJson,
        '$objectPath.serviceProvider',
      ),
      partOf: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'partOf',
        ReferenceBuilder.fromJson,
        '$objectPath.partOf',
      ),
    );
  }

  /// Deserialize [EncounterBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Encounter';

  /// [identifier]
  /// Identifier(s) by which this encounter is known.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// planned | arrived | triaged | in-progress | onleave | finished |
  /// cancelled +.
  EncounterStatusBuilder? status;

  /// [statusHistory]
  /// The status history permits the encounter resource to contain the status
  /// history without needing to read through the historical versions of the
  /// resource, or even have the server store them.
  List<EncounterStatusHistoryBuilder>? statusHistory;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  CodingBuilder? class_;

  /// [classHistory]
  /// The class history permits the tracking of the encounters transitions
  /// without needing to go through the resource history. This would be used
  /// for a case where an admission starts of as an emergency encounter, then
  /// transitions into an inpatient scenario. Doing this and not restarting a
  /// new encounter ensures that any lab/diagnostic results can more easily
  /// follow the patient and not require re-processing and not get lost or
  /// cancelled during a kind of discharge from emergency to inpatient.
  List<EncounterClassHistoryBuilder>? classHistory;

  /// [type]
  /// Specific type of encounter (e.g. e-mail consultation, surgical
  /// day-care, skilled nursing, rehabilitation).
  List<CodeableConceptBuilder>? type;

  /// [serviceType]
  /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  CodeableConceptBuilder? serviceType;

  /// [priority]
  /// Indicates the urgency of the encounter.
  CodeableConceptBuilder? priority;

  /// [subject]
  /// The patient or group present at the encounter.
  ReferenceBuilder? subject;

  /// [episodeOfCare]
  /// Where a specific encounter should be classified as a part of a specific
  /// episode(s) of care this field should be used. This association can
  /// facilitate grouping of related encounters together for a specific
  /// purpose, such as government reporting, issue tracking, association via
  /// a common problem. The association is recorded on the encounter as these
  /// are typically created after the episode of care and grouped on entry
  /// rather than editing the episode of care to append another encounter to
  /// it (the episode of care could span years).
  List<ReferenceBuilder>? episodeOfCare;

  /// [basedOn]
  /// The request this encounter satisfies (e.g. incoming referral or
  /// procedure request).
  List<ReferenceBuilder>? basedOn;

  /// [participant]
  /// The list of people responsible for providing the service.
  List<EncounterParticipantBuilder>? participant;

  /// [appointment]
  /// The appointment that scheduled this encounter.
  List<ReferenceBuilder>? appointment;

  /// [period]
  /// The start and end time of the encounter.
  PeriodBuilder? period;

  /// [length]
  /// Quantity of time the encounter lasted. This excludes the time during
  /// leaves of absence.
  FhirDurationBuilder? length;

  /// [reasonCode]
  /// Reason the encounter takes place, expressed as a code. For admissions,
  /// this can be used for a coded admission diagnosis.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Reason the encounter takes place, expressed as a code. For admissions,
  /// this can be used for a coded admission diagnosis.
  List<ReferenceBuilder>? reasonReference;

  /// [diagnosis]
  /// The list of diagnosis relevant to this encounter.
  List<EncounterDiagnosisBuilder>? diagnosis;

  /// [account]
  /// The set of accounts that may be used for billing for this Encounter.
  List<ReferenceBuilder>? account;

  /// [hospitalization]
  /// Details about the admission to a healthcare service.
  EncounterHospitalizationBuilder? hospitalization;

  /// [location]
  /// List of locations where the patient has been during this encounter.
  List<EncounterLocationBuilder>? location;

  /// [serviceProvider]
  /// The organization that is primarily responsible for this Encounter's
  /// services. This MAY be the same as the organization on the Patient
  /// record, however it could be different, such as if the actor performing
  /// the services was from an external organization (which may be billed
  /// seperately) for an external consultation. Refer to the example bundle
  /// showing an abbreviated set of Encounters for a colonoscopy.
  ReferenceBuilder? serviceProvider;

  /// [partOf]
  /// Another Encounter of which this encounter is a part of
  /// (administratively or in time).
  ReferenceBuilder? partOf;

  /// converts a [EncounterBuilder]
  /// to [Encounter]
  @override
  Encounter build() => Encounter.fromJson(toJson());

  /// converts a [EncounterBuilder]
  /// to [Map<String, dynamic>]
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
    addField('status', status);
    addField('statusHistory', statusHistory);
    addField('class', class_);
    addField('classHistory', classHistory);
    addField('type', type);
    addField('serviceType', serviceType);
    addField('priority', priority);
    addField('subject', subject);
    addField('episodeOfCare', episodeOfCare);
    addField('basedOn', basedOn);
    addField('participant', participant);
    addField('appointment', appointment);
    addField('period', period);
    addField('length', length);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('diagnosis', diagnosis);
    addField('account', account);
    addField('hospitalization', hospitalization);
    addField('location', location);
    addField('serviceProvider', serviceProvider);
    addField('partOf', partOf);
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusHistory':
        if (statusHistory != null) {
          fields.addAll(statusHistory!);
        }
      case 'class':
        if (class_ != null) {
          fields.add(class_!);
        }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is EncounterStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusHistory':
        {
          if (child is List<EncounterStatusHistoryBuilder>) {
            // Replace or create new list
            statusHistory = child;
            return;
          } else if (child is EncounterStatusHistoryBuilder) {
            // Add single element to existing list or create new list
            statusHistory = [...(statusHistory ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'class':
        {
          if (child is CodingBuilder) {
            class_ = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'classHistory':
        {
          if (child is List<EncounterClassHistoryBuilder>) {
            // Replace or create new list
            classHistory = child;
            return;
          } else if (child is EncounterClassHistoryBuilder) {
            // Add single element to existing list or create new list
            classHistory = [...(classHistory ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serviceType':
        {
          if (child is CodeableConceptBuilder) {
            serviceType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priority':
        {
          if (child is CodeableConceptBuilder) {
            priority = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'episodeOfCare':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            episodeOfCare = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            episodeOfCare = [...(episodeOfCare ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [...(basedOn ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participant':
        {
          if (child is List<EncounterParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is EncounterParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [...(participant ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'appointment':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            appointment = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            appointment = [...(appointment ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'length':
        {
          if (child is FhirDurationBuilder) {
            length = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reasonCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reasonCode = [...(reasonCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reasonReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reasonReference = [...(reasonReference ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosis':
        {
          if (child is List<EncounterDiagnosisBuilder>) {
            // Replace or create new list
            diagnosis = child;
            return;
          } else if (child is EncounterDiagnosisBuilder) {
            // Add single element to existing list or create new list
            diagnosis = [...(diagnosis ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'account':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            account = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            account = [...(account ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hospitalization':
        {
          if (child is EncounterHospitalizationBuilder) {
            hospitalization = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is List<EncounterLocationBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is EncounterLocationBuilder) {
            // Add single element to existing list or create new list
            location = [...(location ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serviceProvider':
        {
          if (child is ReferenceBuilder) {
            serviceProvider = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is ReferenceBuilder) {
            partOf = child;
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusHistory':
        return ['EncounterStatusHistoryBuilder'];
      case 'class':
        return ['CodingBuilder'];
      case 'classHistory':
        return ['EncounterClassHistoryBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'serviceType':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'episodeOfCare':
        return ['ReferenceBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'participant':
        return ['EncounterParticipantBuilder'];
      case 'appointment':
        return ['ReferenceBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'length':
        return ['FhirDurationBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'diagnosis':
        return ['EncounterDiagnosisBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      case 'hospitalization':
        return ['EncounterHospitalizationBuilder'];
      case 'location':
        return ['EncounterLocationBuilder'];
      case 'serviceProvider':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterBuilder]
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
      case 'status':
        {
          status = EncounterStatusBuilder.empty();
          return;
        }
      case 'statusHistory':
        {
          statusHistory = <EncounterStatusHistoryBuilder>[];
          return;
        }
      case 'class':
        {
          class_ = CodingBuilder.empty();
          return;
        }
      case 'classHistory':
        {
          classHistory = <EncounterClassHistoryBuilder>[];
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviceType':
        {
          serviceType = CodeableConceptBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'episodeOfCare':
        {
          episodeOfCare = <ReferenceBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'participant':
        {
          participant = <EncounterParticipantBuilder>[];
          return;
        }
      case 'appointment':
        {
          appointment = <ReferenceBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'length':
        {
          length = FhirDurationBuilder.empty();
          return;
        }
      case 'reasonCode':
        {
          reasonCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'reasonReference':
        {
          reasonReference = <ReferenceBuilder>[];
          return;
        }
      case 'diagnosis':
        {
          diagnosis = <EncounterDiagnosisBuilder>[];
          return;
        }
      case 'account':
        {
          account = <ReferenceBuilder>[];
          return;
        }
      case 'hospitalization':
        {
          hospitalization = EncounterHospitalizationBuilder.empty();
          return;
        }
      case 'location':
        {
          location = <EncounterLocationBuilder>[];
          return;
        }
      case 'serviceProvider':
        {
          serviceProvider = ReferenceBuilder.empty();
          return;
        }
      case 'partOf':
        {
          partOf = ReferenceBuilder.empty();
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
    bool status = false,
    bool statusHistory = false,
    bool class_ = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (statusHistory) this.statusHistory = null;
    if (class_) this.class_ = null;
    if (classHistory) this.classHistory = null;
    if (type) this.type = null;
    if (serviceType) this.serviceType = null;
    if (priority) this.priority = null;
    if (subject) this.subject = null;
    if (episodeOfCare) this.episodeOfCare = null;
    if (basedOn) this.basedOn = null;
    if (participant) this.participant = null;
    if (appointment) this.appointment = null;
    if (period) this.period = null;
    if (length) this.length = null;
    if (reasonCode) this.reasonCode = null;
    if (reasonReference) this.reasonReference = null;
    if (diagnosis) this.diagnosis = null;
    if (account) this.account = null;
    if (hospitalization) this.hospitalization = null;
    if (location) this.location = null;
    if (serviceProvider) this.serviceProvider = null;
    if (partOf) this.partOf = null;
  }

  @override
  EncounterBuilder clone() => throw UnimplementedError();
  @override
  EncounterBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    EncounterStatusBuilder? status,
    List<EncounterStatusHistoryBuilder>? statusHistory,
    CodingBuilder? class_,
    List<EncounterClassHistoryBuilder>? classHistory,
    List<CodeableConceptBuilder>? type,
    CodeableConceptBuilder? serviceType,
    CodeableConceptBuilder? priority,
    ReferenceBuilder? subject,
    List<ReferenceBuilder>? episodeOfCare,
    List<ReferenceBuilder>? basedOn,
    List<EncounterParticipantBuilder>? participant,
    List<ReferenceBuilder>? appointment,
    PeriodBuilder? period,
    FhirDurationBuilder? length,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    List<EncounterDiagnosisBuilder>? diagnosis,
    List<ReferenceBuilder>? account,
    EncounterHospitalizationBuilder? hospitalization,
    List<EncounterLocationBuilder>? location,
    ReferenceBuilder? serviceProvider,
    ReferenceBuilder? partOf,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = EncounterBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusHistory: statusHistory ?? this.statusHistory,
      class_: class_ ?? this.class_,
      classHistory: classHistory ?? this.classHistory,
      type: type ?? this.type,
      serviceType: serviceType ?? this.serviceType,
      priority: priority ?? this.priority,
      subject: subject ?? this.subject,
      episodeOfCare: episodeOfCare ?? this.episodeOfCare,
      basedOn: basedOn ?? this.basedOn,
      participant: participant ?? this.participant,
      appointment: appointment ?? this.appointment,
      period: period ?? this.period,
      length: length ?? this.length,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      diagnosis: diagnosis ?? this.diagnosis,
      account: account ?? this.account,
      hospitalization: hospitalization ?? this.hospitalization,
      location: location ?? this.location,
      serviceProvider: serviceProvider ?? this.serviceProvider,
      partOf: partOf ?? this.partOf,
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
    if (o is! EncounterBuilder) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<EncounterStatusHistoryBuilder>(
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
    if (!listEquals<EncounterClassHistoryBuilder>(
      classHistory,
      o.classHistory,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      episodeOfCare,
      o.episodeOfCare,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<EncounterParticipantBuilder>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<EncounterDiagnosisBuilder>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<EncounterLocationBuilder>(
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

/// [EncounterStatusHistoryBuilder]
/// The status history permits the encounter resource to contain the status
/// history without needing to read through the historical versions of the
/// resource, or even have the server store them.
class EncounterStatusHistoryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterStatusHistoryBuilder]

  EncounterStatusHistoryBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.status,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.statusHistory',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterStatusHistoryBuilder.empty() =>
      EncounterStatusHistoryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterStatusHistoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.statusHistory';
    return EncounterStatusHistoryBuilder(
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
      status: JsonParser.parsePrimitive<EncounterStatusBuilder>(
        json,
        'status',
        EncounterStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [EncounterStatusHistoryBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterStatusHistoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterStatusHistoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterStatusHistoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterStatusHistoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterStatusHistoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterStatusHistoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterStatusHistoryBuilder.fromJson(json);
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
  EncounterStatusBuilder? status;

  /// [period]
  /// The time that the episode was in the specified status.
  PeriodBuilder? period;

  /// converts a [EncounterStatusHistoryBuilder]
  /// to [EncounterStatusHistory]
  @override
  EncounterStatusHistory build() => EncounterStatusHistory.fromJson(toJson());

  /// converts a [EncounterStatusHistoryBuilder]
  /// to [Map<String, dynamic>]
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
    addField('status', status);
    addField('period', period);
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
      case 'status':
        if (status != null) {
          fields.add(status!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is EncounterStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterStatusHistoryBuilder]
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
      case 'status':
        {
          status = EncounterStatusBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
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
    bool status = false,
    bool period = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (status) this.status = null;
    if (period) this.period = null;
  }

  @override
  EncounterStatusHistoryBuilder clone() => throw UnimplementedError();
  @override
  EncounterStatusHistoryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EncounterStatusBuilder? status,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterStatusHistoryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      period: period ?? this.period,
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
    if (o is! EncounterStatusHistoryBuilder) {
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

/// [EncounterClassHistoryBuilder]
/// The class history permits the tracking of the encounters transitions
/// without needing to go through the resource history. This would be used
/// for a case where an admission starts of as an emergency encounter, then
/// transitions into an inpatient scenario. Doing this and not restarting a
/// new encounter ensures that any lab/diagnostic results can more easily
/// follow the patient and not require re-processing and not get lost or
/// cancelled during a kind of discharge from emergency to inpatient.
class EncounterClassHistoryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterClassHistoryBuilder]

  EncounterClassHistoryBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.class_,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.classHistory',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterClassHistoryBuilder.empty() =>
      EncounterClassHistoryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterClassHistoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.classHistory';
    return EncounterClassHistoryBuilder(
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
      class_: JsonParser.parseObject<CodingBuilder>(
        json,
        'class',
        CodingBuilder.fromJson,
        '$objectPath.class',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [EncounterClassHistoryBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterClassHistoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterClassHistoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterClassHistoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterClassHistoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterClassHistoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterClassHistoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterClassHistoryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterClassHistory';

  /// [class_]
  /// inpatient | outpatient | ambulatory | emergency +.
  CodingBuilder? class_;

  /// [period]
  /// The time that the episode was in the specified class.
  PeriodBuilder? period;

  /// converts a [EncounterClassHistoryBuilder]
  /// to [EncounterClassHistory]
  @override
  EncounterClassHistory build() => EncounterClassHistory.fromJson(toJson());

  /// converts a [EncounterClassHistoryBuilder]
  /// to [Map<String, dynamic>]
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
    addField('class', class_);
    addField('period', period);
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
      case 'class':
        if (class_ != null) {
          fields.add(class_!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'class':
        {
          if (child is CodingBuilder) {
            class_ = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
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
      case 'class':
        return ['CodingBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterClassHistoryBuilder]
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
      case 'class':
        {
          class_ = CodingBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
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
    bool class_ = false,
    bool period = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (class_) this.class_ = null;
    if (period) this.period = null;
  }

  @override
  EncounterClassHistoryBuilder clone() => throw UnimplementedError();
  @override
  EncounterClassHistoryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? class_,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterClassHistoryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      class_: class_ ?? this.class_,
      period: period ?? this.period,
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
    if (o is! EncounterClassHistoryBuilder) {
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

/// [EncounterParticipantBuilder]
/// The list of people responsible for providing the service.
class EncounterParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterParticipantBuilder]

  EncounterParticipantBuilder({
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
  /// For Builder classes, no fields are required
  factory EncounterParticipantBuilder.empty() => EncounterParticipantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.participant';
    return EncounterParticipantBuilder(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      individual: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'individual',
        ReferenceBuilder.fromJson,
        '$objectPath.individual',
      ),
    );
  }

  /// Deserialize [EncounterParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterParticipant';

  /// [type]
  /// Role of participant in encounter.
  List<CodeableConceptBuilder>? type;

  /// [period]
  /// The period of time that the specified participant participated in the
  /// encounter. These can overlap or be sub-sets of the overall encounter's
  /// period.
  PeriodBuilder? period;

  /// [individual]
  /// Persons involved in the encounter other than the patient.
  ReferenceBuilder? individual;

  /// converts a [EncounterParticipantBuilder]
  /// to [EncounterParticipant]
  @override
  EncounterParticipant build() => EncounterParticipant.fromJson(toJson());

  /// converts a [EncounterParticipantBuilder]
  /// to [Map<String, dynamic>]
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
    addField('period', period);
    addField('individual', individual);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'individual':
        {
          if (child is ReferenceBuilder) {
            individual = child;
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
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'individual':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterParticipantBuilder]
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
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'individual':
        {
          individual = ReferenceBuilder.empty();
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
    bool period = false,
    bool individual = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (period) this.period = null;
    if (individual) this.individual = null;
  }

  @override
  EncounterParticipantBuilder clone() => throw UnimplementedError();
  @override
  EncounterParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? type,
    PeriodBuilder? period,
    ReferenceBuilder? individual,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      individual: individual ?? this.individual,
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
    if (o is! EncounterParticipantBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
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

/// [EncounterDiagnosisBuilder]
/// The list of diagnosis relevant to this encounter.
class EncounterDiagnosisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterDiagnosisBuilder]

  EncounterDiagnosisBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.condition,
    this.use,
    this.rank,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterDiagnosisBuilder.empty() => EncounterDiagnosisBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.diagnosis';
    return EncounterDiagnosisBuilder(
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
      condition: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'condition',
        ReferenceBuilder.fromJson,
        '$objectPath.condition',
      ),
      use: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'use',
        CodeableConceptBuilder.fromJson,
        '$objectPath.use',
      ),
      rank: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'rank',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.rank',
      ),
    );
  }

  /// Deserialize [EncounterDiagnosisBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterDiagnosisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterDiagnosisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterDiagnosisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterDiagnosisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterDiagnosisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterDiagnosisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterDiagnosisBuilder.fromJson(json);
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
  ReferenceBuilder? condition;

  /// [use]
  /// Role that this diagnosis has within the encounter (e.g. admission,
  /// billing, discharge …).
  CodeableConceptBuilder? use;

  /// [rank]
  /// Ranking of the diagnosis (for each role type).
  FhirPositiveIntBuilder? rank;

  /// converts a [EncounterDiagnosisBuilder]
  /// to [EncounterDiagnosis]
  @override
  EncounterDiagnosis build() => EncounterDiagnosis.fromJson(toJson());

  /// converts a [EncounterDiagnosisBuilder]
  /// to [Map<String, dynamic>]
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
    addField('condition', condition);
    addField('use', use);
    addField('rank', rank);
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
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
        }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is ReferenceBuilder) {
            condition = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is CodeableConceptBuilder) {
            use = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rank':
        {
          if (child is FhirPositiveIntBuilder) {
            rank = child;
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
      case 'condition':
        return ['ReferenceBuilder'];
      case 'use':
        return ['CodeableConceptBuilder'];
      case 'rank':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterDiagnosisBuilder]
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
      case 'condition':
        {
          condition = ReferenceBuilder.empty();
          return;
        }
      case 'use':
        {
          use = CodeableConceptBuilder.empty();
          return;
        }
      case 'rank':
        {
          rank = FhirPositiveIntBuilder.empty();
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
    bool condition = false,
    bool use = false,
    bool rank = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (condition) this.condition = null;
    if (use) this.use = null;
    if (rank) this.rank = null;
  }

  @override
  EncounterDiagnosisBuilder clone() => throw UnimplementedError();
  @override
  EncounterDiagnosisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? condition,
    CodeableConceptBuilder? use,
    FhirPositiveIntBuilder? rank,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterDiagnosisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      use: use ?? this.use,
      rank: rank ?? this.rank,
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
    if (o is! EncounterDiagnosisBuilder) {
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

/// [EncounterHospitalizationBuilder]
/// Details about the admission to a healthcare service.
class EncounterHospitalizationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterHospitalizationBuilder]

  EncounterHospitalizationBuilder({
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
  /// For Builder classes, no fields are required
  factory EncounterHospitalizationBuilder.empty() =>
      EncounterHospitalizationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterHospitalizationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.hospitalization';
    return EncounterHospitalizationBuilder(
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
      preAdmissionIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'preAdmissionIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.preAdmissionIdentifier',
      ),
      origin: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'origin',
        ReferenceBuilder.fromJson,
        '$objectPath.origin',
      ),
      admitSource: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'admitSource',
        CodeableConceptBuilder.fromJson,
        '$objectPath.admitSource',
      ),
      reAdmission: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reAdmission',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reAdmission',
      ),
      dietPreference: (json['dietPreference'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dietPreference',
              },
            ),
          )
          .toList(),
      specialCourtesy: (json['specialCourtesy'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialCourtesy',
              },
            ),
          )
          .toList(),
      specialArrangement: (json['specialArrangement'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialArrangement',
              },
            ),
          )
          .toList(),
      destination: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'destination',
        ReferenceBuilder.fromJson,
        '$objectPath.destination',
      ),
      dischargeDisposition: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'dischargeDisposition',
        CodeableConceptBuilder.fromJson,
        '$objectPath.dischargeDisposition',
      ),
    );
  }

  /// Deserialize [EncounterHospitalizationBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterHospitalizationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterHospitalizationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterHospitalizationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterHospitalizationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterHospitalizationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterHospitalizationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterHospitalizationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterHospitalization';

  /// [preAdmissionIdentifier]
  /// Pre-admission identifier.
  IdentifierBuilder? preAdmissionIdentifier;

  /// [origin]
  /// The location/organization from which the patient came before admission.
  ReferenceBuilder? origin;

  /// [admitSource]
  /// From where patient was admitted (physician referral, transfer).
  CodeableConceptBuilder? admitSource;

  /// [reAdmission]
  /// Whether this hospitalization is a readmission and why if known.
  CodeableConceptBuilder? reAdmission;

  /// [dietPreference]
  /// Diet preferences reported by the patient.
  List<CodeableConceptBuilder>? dietPreference;

  /// [specialCourtesy]
  /// Special courtesies (VIP, board member).
  List<CodeableConceptBuilder>? specialCourtesy;

  /// [specialArrangement]
  /// Any special requests that have been made for this hospitalization
  /// encounter, such as the provision of specific equipment or other things.
  List<CodeableConceptBuilder>? specialArrangement;

  /// [destination]
  /// Location/organization to which the patient is discharged.
  ReferenceBuilder? destination;

  /// [dischargeDisposition]
  /// Category or kind of location after discharge.
  CodeableConceptBuilder? dischargeDisposition;

  /// converts a [EncounterHospitalizationBuilder]
  /// to [EncounterHospitalization]
  @override
  EncounterHospitalization build() =>
      EncounterHospitalization.fromJson(toJson());

  /// converts a [EncounterHospitalizationBuilder]
  /// to [Map<String, dynamic>]
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
    addField('preAdmissionIdentifier', preAdmissionIdentifier);
    addField('origin', origin);
    addField('admitSource', admitSource);
    addField('reAdmission', reAdmission);
    addField('dietPreference', dietPreference);
    addField('specialCourtesy', specialCourtesy);
    addField('specialArrangement', specialArrangement);
    addField('destination', destination);
    addField('dischargeDisposition', dischargeDisposition);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAdmissionIdentifier':
        {
          if (child is IdentifierBuilder) {
            preAdmissionIdentifier = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'origin':
        {
          if (child is ReferenceBuilder) {
            origin = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'admitSource':
        {
          if (child is CodeableConceptBuilder) {
            admitSource = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reAdmission':
        {
          if (child is CodeableConceptBuilder) {
            reAdmission = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dietPreference':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            dietPreference = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            dietPreference = [...(dietPreference ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialCourtesy':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialCourtesy = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialCourtesy = [...(specialCourtesy ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialArrangement':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialArrangement = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialArrangement = [...(specialArrangement ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is ReferenceBuilder) {
            destination = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dischargeDisposition':
        {
          if (child is CodeableConceptBuilder) {
            dischargeDisposition = child;
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
      case 'preAdmissionIdentifier':
        return ['IdentifierBuilder'];
      case 'origin':
        return ['ReferenceBuilder'];
      case 'admitSource':
        return ['CodeableConceptBuilder'];
      case 'reAdmission':
        return ['CodeableConceptBuilder'];
      case 'dietPreference':
        return ['CodeableConceptBuilder'];
      case 'specialCourtesy':
        return ['CodeableConceptBuilder'];
      case 'specialArrangement':
        return ['CodeableConceptBuilder'];
      case 'destination':
        return ['ReferenceBuilder'];
      case 'dischargeDisposition':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterHospitalizationBuilder]
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
      case 'preAdmissionIdentifier':
        {
          preAdmissionIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = ReferenceBuilder.empty();
          return;
        }
      case 'admitSource':
        {
          admitSource = CodeableConceptBuilder.empty();
          return;
        }
      case 'reAdmission':
        {
          reAdmission = CodeableConceptBuilder.empty();
          return;
        }
      case 'dietPreference':
        {
          dietPreference = <CodeableConceptBuilder>[];
          return;
        }
      case 'specialCourtesy':
        {
          specialCourtesy = <CodeableConceptBuilder>[];
          return;
        }
      case 'specialArrangement':
        {
          specialArrangement = <CodeableConceptBuilder>[];
          return;
        }
      case 'destination':
        {
          destination = ReferenceBuilder.empty();
          return;
        }
      case 'dischargeDisposition':
        {
          dischargeDisposition = CodeableConceptBuilder.empty();
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (preAdmissionIdentifier) this.preAdmissionIdentifier = null;
    if (origin) this.origin = null;
    if (admitSource) this.admitSource = null;
    if (reAdmission) this.reAdmission = null;
    if (dietPreference) this.dietPreference = null;
    if (specialCourtesy) this.specialCourtesy = null;
    if (specialArrangement) this.specialArrangement = null;
    if (destination) this.destination = null;
    if (dischargeDisposition) this.dischargeDisposition = null;
  }

  @override
  EncounterHospitalizationBuilder clone() => throw UnimplementedError();
  @override
  EncounterHospitalizationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? preAdmissionIdentifier,
    ReferenceBuilder? origin,
    CodeableConceptBuilder? admitSource,
    CodeableConceptBuilder? reAdmission,
    List<CodeableConceptBuilder>? dietPreference,
    List<CodeableConceptBuilder>? specialCourtesy,
    List<CodeableConceptBuilder>? specialArrangement,
    ReferenceBuilder? destination,
    CodeableConceptBuilder? dischargeDisposition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterHospitalizationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      preAdmissionIdentifier:
          preAdmissionIdentifier ?? this.preAdmissionIdentifier,
      origin: origin ?? this.origin,
      admitSource: admitSource ?? this.admitSource,
      reAdmission: reAdmission ?? this.reAdmission,
      dietPreference: dietPreference ?? this.dietPreference,
      specialCourtesy: specialCourtesy ?? this.specialCourtesy,
      specialArrangement: specialArrangement ?? this.specialArrangement,
      destination: destination ?? this.destination,
      dischargeDisposition: dischargeDisposition ?? this.dischargeDisposition,
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
    if (o is! EncounterHospitalizationBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      dietPreference,
      o.dietPreference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialCourtesy,
      o.specialCourtesy,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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

/// [EncounterLocationBuilder]
/// List of locations where the patient has been during this encounter.
class EncounterLocationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterLocationBuilder]

  EncounterLocationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.location,
    this.status,
    this.physicalType,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.location',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterLocationBuilder.empty() => EncounterLocationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterLocationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.location';
    return EncounterLocationBuilder(
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
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      status: JsonParser.parsePrimitive<EncounterLocationStatusBuilder>(
        json,
        'status',
        EncounterLocationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      physicalType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'physicalType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.physicalType',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [EncounterLocationBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterLocationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterLocationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterLocationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterLocationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterLocationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterLocationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterLocationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterLocation';

  /// [location]
  /// The location where the encounter takes place.
  ReferenceBuilder? location;

  /// [status]
  /// The status of the participants' presence at the specified location
  /// during the period specified. If the participant is no longer at the
  /// location, then the period will have an end date/time.
  EncounterLocationStatusBuilder? status;

  /// [physicalType]
  /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  CodeableConceptBuilder? physicalType;

  /// [period]
  /// Time period during which the patient was present at the location.
  PeriodBuilder? period;

  /// converts a [EncounterLocationBuilder]
  /// to [EncounterLocation]
  @override
  EncounterLocation build() => EncounterLocation.fromJson(toJson());

  /// converts a [EncounterLocationBuilder]
  /// to [Map<String, dynamic>]
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
    addField('location', location);
    addField('status', status);
    addField('physicalType', physicalType);
    addField('period', period);
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
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is EncounterLocationStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'physicalType':
        {
          if (child is CodeableConceptBuilder) {
            physicalType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
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
      case 'location':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'physicalType':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterLocationBuilder]
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
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'status':
        {
          status = EncounterLocationStatusBuilder.empty();
          return;
        }
      case 'physicalType':
        {
          physicalType = CodeableConceptBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
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
    bool location = false,
    bool status = false,
    bool physicalType = false,
    bool period = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (location) this.location = null;
    if (status) this.status = null;
    if (physicalType) this.physicalType = null;
    if (period) this.period = null;
  }

  @override
  EncounterLocationBuilder clone() => throw UnimplementedError();
  @override
  EncounterLocationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? location,
    EncounterLocationStatusBuilder? status,
    CodeableConceptBuilder? physicalType,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterLocationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      location: location ?? this.location,
      status: status ?? this.status,
      physicalType: physicalType ?? this.physicalType,
      period: period ?? this.period,
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
    if (o is! EncounterLocationBuilder) {
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
