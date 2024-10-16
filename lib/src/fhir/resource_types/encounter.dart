import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Encounter]
/// An interaction between a patient and healthcare provider(s) for the
/// purpose of providing healthcare service(s) or assessing the health
/// status of a patient.
class Encounter extends DomainResource {
  /// Primary constructor for [Encounter]

  Encounter({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Encounter,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Encounter.fromJson(Map<String, dynamic> json) {
    return Encounter(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EncounterStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusHistory: json['statusHistory'] != null
          ? (json['statusHistory'] as List<dynamic>)
              .map<EncounterStatusHistory>(
                (v) => EncounterStatusHistory.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      class_: Coding.fromJson(
        json['class'] as Map<String, dynamic>,
      ),
      classHistory: json['classHistory'] != null
          ? (json['classHistory'] as List<dynamic>)
              .map<EncounterClassHistory>(
                (v) => EncounterClassHistory.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? CodeableConcept.fromJson(
              json['serviceType'] as Map<String, dynamic>,
            )
          : null,
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(
              json['priority'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      episodeOfCare: json['episodeOfCare'] != null
          ? (json['episodeOfCare'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<EncounterParticipant>(
                (v) => EncounterParticipant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      appointment: json['appointment'] != null
          ? (json['appointment'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      length: json['length'] != null
          ? FhirDuration.fromJson(
              json['length'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<EncounterDiagnosis>(
                (v) => EncounterDiagnosis.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      account: json['account'] != null
          ? (json['account'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      hospitalization: json['hospitalization'] != null
          ? EncounterHospitalization.fromJson(
              json['hospitalization'] as Map<String, dynamic>,
            )
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<EncounterLocation>(
                (v) => EncounterLocation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceProvider: json['serviceProvider'] != null
          ? Reference.fromJson(
              json['serviceProvider'] as Map<String, dynamic>,
            )
          : null,
      partOf: json['partOf'] != null
          ? Reference.fromJson(
              json['partOf'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Encounter] from a [String]
  /// or [YamlMap] object
  factory Encounter.fromYaml(dynamic yaml) => yaml is String
      ? Encounter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Encounter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Encounter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Encounter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Encounter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Encounter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Encounter';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    json['status'] = status.toJson();

    if (statusHistory != null && statusHistory!.isNotEmpty) {
      json['statusHistory'] = statusHistory!.map((e) => e.toJson()).toList();
    }

    json['class'] = class_.toJson();

    if (classHistory != null && classHistory!.isNotEmpty) {
      json['classHistory'] = classHistory!.map((e) => e.toJson()).toList();
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (serviceType != null) {
      json['serviceType'] = serviceType!.toJson();
    }

    if (priority != null) {
      json['priority'] = priority!.toJson();
    }

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (episodeOfCare != null && episodeOfCare!.isNotEmpty) {
      json['episodeOfCare'] = episodeOfCare!.map((e) => e.toJson()).toList();
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!.map((e) => e.toJson()).toList();
    }

    if (appointment != null && appointment!.isNotEmpty) {
      json['appointment'] = appointment!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (length != null) {
      json['length'] = length!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] = diagnosis!.map((e) => e.toJson()).toList();
    }

    if (account != null && account!.isNotEmpty) {
      json['account'] = account!.map((e) => e.toJson()).toList();
    }

    if (hospitalization != null) {
      json['hospitalization'] = hospitalization!.toJson();
    }

    if (location != null && location!.isNotEmpty) {
      json['location'] = location!.map((e) => e.toJson()).toList();
    }

    if (serviceProvider != null) {
      json['serviceProvider'] = serviceProvider!.toJson();
    }

    if (partOf != null) {
      json['partOf'] = partOf!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Encounter(
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EncounterStatusHistory]
/// The status history permits the encounter resource to contain the status
/// history without needing to read through the historical versions of the
/// resource, or even have the server store them.
class EncounterStatusHistory extends BackboneElement {
  /// Primary constructor for [EncounterStatusHistory]

  EncounterStatusHistory({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.status,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterStatusHistory.fromJson(Map<String, dynamic> json) {
    return EncounterStatusHistory(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EncounterStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      period: Period.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [EncounterStatusHistory] from a [String]
  /// or [YamlMap] object
  factory EncounterStatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterStatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EncounterStatusHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EncounterStatusHistory cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EncounterStatusHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterStatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterStatusHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EncounterStatusHistory';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['status'] = status.toJson();

    json['period'] = period.toJson();

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EncounterStatusHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
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
  /// Primary constructor for [EncounterClassHistory]

  EncounterClassHistory({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.class_,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterClassHistory.fromJson(Map<String, dynamic> json) {
    return EncounterClassHistory(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      class_: Coding.fromJson(
        json['class'] as Map<String, dynamic>,
      ),
      period: Period.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [EncounterClassHistory] from a [String]
  /// or [YamlMap] object
  factory EncounterClassHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterClassHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EncounterClassHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EncounterClassHistory cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EncounterClassHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterClassHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterClassHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EncounterClassHistory';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [class_]
  /// inpatient | outpatient | ambulatory | emergency +.
  final Coding class_;

  /// [period]
  /// The time that the episode was in the specified class.
  final Period period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['class'] = class_.toJson();

    json['period'] = period.toJson();

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EncounterClassHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      class_: class_ ?? this.class_,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EncounterParticipant]
/// The list of people responsible for providing the service.
class EncounterParticipant extends BackboneElement {
  /// Primary constructor for [EncounterParticipant]

  EncounterParticipant({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.individual,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipant.fromJson(Map<String, dynamic> json) {
    return EncounterParticipant(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      individual: json['individual'] != null
          ? Reference.fromJson(
              json['individual'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EncounterParticipant] from a [String]
  /// or [YamlMap] object
  factory EncounterParticipant.fromYaml(dynamic yaml) => yaml is String
      ? EncounterParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EncounterParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EncounterParticipant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EncounterParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EncounterParticipant';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (individual != null) {
      json['individual'] = individual!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EncounterParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      individual: individual ?? this.individual,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EncounterDiagnosis]
/// The list of diagnosis relevant to this encounter.
class EncounterDiagnosis extends BackboneElement {
  /// Primary constructor for [EncounterDiagnosis]

  EncounterDiagnosis({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosis.fromJson(Map<String, dynamic> json) {
    return EncounterDiagnosis(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: Reference.fromJson(
        json['condition'] as Map<String, dynamic>,
      ),
      use: json['use'] != null
          ? CodeableConcept.fromJson(
              json['use'] as Map<String, dynamic>,
            )
          : null,
      rank: json['rank'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['rank'],
              '_value': json['_rank'],
            })
          : null,
    );
  }

  /// Deserialize [EncounterDiagnosis] from a [String]
  /// or [YamlMap] object
  factory EncounterDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EncounterDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EncounterDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('EncounterDiagnosis cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EncounterDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EncounterDiagnosis';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['condition'] = condition.toJson();

    if (use != null) {
      json['use'] = use!.toJson();
    }

    if (rank != null) {
      final fieldJson4 = rank!.toJson();
      json['rank'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_rank'] = fieldJson4['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EncounterDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      use: use ?? this.use,
      rank: rank ?? this.rank,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EncounterHospitalization]
/// Details about the admission to a healthcare service.
class EncounterHospitalization extends BackboneElement {
  /// Primary constructor for [EncounterHospitalization]

  EncounterHospitalization({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterHospitalization.fromJson(Map<String, dynamic> json) {
    return EncounterHospitalization(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      preAdmissionIdentifier: json['preAdmissionIdentifier'] != null
          ? Identifier.fromJson(
              json['preAdmissionIdentifier'] as Map<String, dynamic>,
            )
          : null,
      origin: json['origin'] != null
          ? Reference.fromJson(
              json['origin'] as Map<String, dynamic>,
            )
          : null,
      admitSource: json['admitSource'] != null
          ? CodeableConcept.fromJson(
              json['admitSource'] as Map<String, dynamic>,
            )
          : null,
      reAdmission: json['reAdmission'] != null
          ? CodeableConcept.fromJson(
              json['reAdmission'] as Map<String, dynamic>,
            )
          : null,
      dietPreference: json['dietPreference'] != null
          ? (json['dietPreference'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialCourtesy: json['specialCourtesy'] != null
          ? (json['specialCourtesy'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialArrangement: json['specialArrangement'] != null
          ? (json['specialArrangement'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      destination: json['destination'] != null
          ? Reference.fromJson(
              json['destination'] as Map<String, dynamic>,
            )
          : null,
      dischargeDisposition: json['dischargeDisposition'] != null
          ? CodeableConcept.fromJson(
              json['dischargeDisposition'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EncounterHospitalization] from a [String]
  /// or [YamlMap] object
  factory EncounterHospitalization.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHospitalization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EncounterHospitalization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EncounterHospitalization cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EncounterHospitalization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterHospitalization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterHospitalization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EncounterHospitalization';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (preAdmissionIdentifier != null) {
      json['preAdmissionIdentifier'] = preAdmissionIdentifier!.toJson();
    }

    if (origin != null) {
      json['origin'] = origin!.toJson();
    }

    if (admitSource != null) {
      json['admitSource'] = admitSource!.toJson();
    }

    if (reAdmission != null) {
      json['reAdmission'] = reAdmission!.toJson();
    }

    if (dietPreference != null && dietPreference!.isNotEmpty) {
      json['dietPreference'] = dietPreference!.map((e) => e.toJson()).toList();
    }

    if (specialCourtesy != null && specialCourtesy!.isNotEmpty) {
      json['specialCourtesy'] =
          specialCourtesy!.map((e) => e.toJson()).toList();
    }

    if (specialArrangement != null && specialArrangement!.isNotEmpty) {
      json['specialArrangement'] =
          specialArrangement!.map((e) => e.toJson()).toList();
    }

    if (destination != null) {
      json['destination'] = destination!.toJson();
    }

    if (dischargeDisposition != null) {
      json['dischargeDisposition'] = dischargeDisposition!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EncounterHospitalization(
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EncounterLocation]
/// List of locations where the patient has been during this encounter.
class EncounterLocation extends BackboneElement {
  /// Primary constructor for [EncounterLocation]

  EncounterLocation({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.location,
    this.status,
    this.physicalType,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterLocation.fromJson(Map<String, dynamic> json) {
    return EncounterLocation(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: Reference.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      status: json['status'] != null
          ? EncounterLocationStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      physicalType: json['physicalType'] != null
          ? CodeableConcept.fromJson(
              json['physicalType'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EncounterLocation] from a [String]
  /// or [YamlMap] object
  factory EncounterLocation.fromYaml(dynamic yaml) => yaml is String
      ? EncounterLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EncounterLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('EncounterLocation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EncounterLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EncounterLocation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['location'] = location.toJson();

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (physicalType != null) {
      json['physicalType'] = physicalType!.toJson();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EncounterLocation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      location: location ?? this.location,
      status: status ?? this.status,
      physicalType: physicalType ?? this.physicalType,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
