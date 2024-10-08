import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'encounter.g.dart';

/// [Encounter] /// An interaction between a patient and healthcare provider(s) for the purpose
/// of providing healthcare service(s) or assessing the health status of a
/// patient.
@JsonSerializable()
class Encounter extends DomainResource {
  Encounter({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
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
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Encounter, fhirType: 'Encounter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier(s) by which this encounter is known.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// planned | arrived | triaged | in-progress | onleave | finished | cancelled
  /// +.
  @JsonKey(name: 'status')
  final EncounterStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusHistory] /// The status history permits the encounter resource to contain the status
  /// history without needing to read through the historical versions of the
  /// resource, or even have the server store them.
  @JsonKey(name: 'statusHistory')
  final List<EncounterStatusHistory>? statusHistory;

  /// [class_] /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others due to
  /// local variations.
  @JsonKey(name: 'class')
  final Coding class_;

  /// [classHistory] /// The class history permits the tracking of the encounters transitions
  /// without needing to go through the resource history. This would be used for
  /// a case where an admission starts of as an emergency encounter, then
  /// transitions into an inpatient scenario. Doing this and not restarting a new
  /// encounter ensures that any lab/diagnostic results can more easily follow
  /// the patient and not require re-processing and not get lost or cancelled
  /// during a kind of discharge from emergency to inpatient.
  @JsonKey(name: 'classHistory')
  final List<EncounterClassHistory>? classHistory;

  /// [type] /// Specific type of encounter (e.g. e-mail consultation, surgical day-care,
  /// skilled nursing, rehabilitation).
  @JsonKey(name: 'type')
  final List<EncounterType>? type;

  /// [serviceType] /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  @JsonKey(name: 'serviceType')
  final ServiceType? serviceType;

  /// [priority] /// Indicates the urgency of the encounter.
  @JsonKey(name: 'priority')
  final CodeableConcept? priority;

  /// [subject] /// The patient or group present at the encounter.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [episodeOfCare] /// Where a specific encounter should be classified as a part of a specific
  /// episode(s) of care this field should be used. This association can
  /// facilitate grouping of related encounters together for a specific purpose,
  /// such as government reporting, issue tracking, association via a common
  /// problem. The association is recorded on the encounter as these are
  /// typically created after the episode of care and grouped on entry rather
  /// than editing the episode of care to append another encounter to it (the
  /// episode of care could span years).
  @JsonKey(name: 'episodeOfCare')
  final List<Reference>? episodeOfCare;

  /// [basedOn] /// The request this encounter satisfies (e.g. incoming referral or procedure
  /// request).
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [participant] /// The list of people responsible for providing the service.
  @JsonKey(name: 'participant')
  final List<EncounterParticipant>? participant;

  /// [appointment] /// The appointment that scheduled this encounter.
  @JsonKey(name: 'appointment')
  final List<Reference>? appointment;

  /// [period] /// The start and end time of the encounter.
  @JsonKey(name: 'period')
  final Period? period;

  /// [length] /// Quantity of time the encounter lasted. This excludes the time during leaves
  /// of absence.
  @JsonKey(name: 'length')
  final FhirDuration? length;

  /// [reasonCode] /// Reason the encounter takes place, expressed as a code. For admissions, this
  /// can be used for a coded admission diagnosis.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Reason the encounter takes place, expressed as a code. For admissions, this
  /// can be used for a coded admission diagnosis.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [diagnosis] /// The list of diagnosis relevant to this encounter.
  @JsonKey(name: 'diagnosis')
  final List<EncounterDiagnosis>? diagnosis;

  /// [account] /// The set of accounts that may be used for billing for this Encounter.
  @JsonKey(name: 'account')
  final List<Reference>? account;

  /// [hospitalization] /// Details about the admission to a healthcare service.
  @JsonKey(name: 'hospitalization')
  final EncounterHospitalization? hospitalization;

  /// [location] /// List of locations where the patient has been during this encounter.
  @JsonKey(name: 'location')
  final List<EncounterLocation>? location;

  /// [serviceProvider] /// The organization that is primarily responsible for this Encounter's
  /// services. This MAY be the same as the organization on the Patient record,
  /// however it could be different, such as if the actor performing the services
  /// was from an external organization (which may be billed seperately) for an
  /// external consultation. Refer to the example bundle showing an abbreviated
  /// set of Encounters for a colonoscopy.
  @JsonKey(name: 'serviceProvider')
  final Reference? serviceProvider;

  /// [partOf] /// Another Encounter of which this encounter is a part of (administratively or
  /// in time).
  @JsonKey(name: 'partOf')
  final Reference? partOf;
  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterToJson(this);

  @override
  Encounter clone() => throw UnimplementedError();
  @override
  Encounter copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    EncounterStatus? status,
    Element? statusElement,
    List<EncounterStatusHistory>? statusHistory,
    Coding? class_,
    List<EncounterClassHistory>? classHistory,
    List<EncounterType>? type,
    ServiceType? serviceType,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
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

  factory Encounter.fromYaml(dynamic yaml) => yaml is String
      ? Encounter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Encounter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Encounter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Encounter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Encounter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EncounterStatusHistory] /// The status history permits the encounter resource to contain the status
/// history without needing to read through the historical versions of the
/// resource, or even have the server store them.
@JsonSerializable()
class EncounterStatusHistory extends BackboneElement {
  EncounterStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EncounterStatusHistory');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// planned | arrived | triaged | in-progress | onleave | finished | cancelled
  /// +.
  @JsonKey(name: 'status')
  final EncounterStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [period] /// The time that the episode was in the specified status.
  @JsonKey(name: 'period')
  final Period period;
  factory EncounterStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$EncounterStatusHistoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterStatusHistoryToJson(this);

  @override
  EncounterStatusHistory clone() => throw UnimplementedError();
  @override
  EncounterStatusHistory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EncounterStatus? status,
    Element? statusElement,
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
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EncounterStatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterStatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EncounterStatusHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EncounterStatusHistory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EncounterStatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterStatusHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EncounterClassHistory] /// The class history permits the tracking of the encounters transitions
/// without needing to go through the resource history. This would be used for
/// a case where an admission starts of as an emergency encounter, then
/// transitions into an inpatient scenario. Doing this and not restarting a new
/// encounter ensures that any lab/diagnostic results can more easily follow
/// the patient and not require re-processing and not get lost or cancelled
/// during a kind of discharge from emergency to inpatient.
@JsonSerializable()
class EncounterClassHistory extends BackboneElement {
  EncounterClassHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.class_,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EncounterClassHistory');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [class_] /// inpatient | outpatient | ambulatory | emergency +.
  @JsonKey(name: 'class')
  final Coding class_;

  /// [period] /// The time that the episode was in the specified class.
  @JsonKey(name: 'period')
  final Period period;
  factory EncounterClassHistory.fromJson(Map<String, dynamic> json) =>
      _$EncounterClassHistoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterClassHistoryToJson(this);

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

  factory EncounterClassHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterClassHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EncounterClassHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EncounterClassHistory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EncounterClassHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterClassHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EncounterParticipant] /// The list of people responsible for providing the service.
@JsonSerializable()
class EncounterParticipant extends BackboneElement {
  EncounterParticipant({
    super.id,
    super.extension_,
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
  }) : super(fhirType: 'EncounterParticipant');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Role of participant in encounter.
  @JsonKey(name: 'type')
  final List<ParticipantType>? type;

  /// [period] /// The period of time that the specified participant participated in the
  /// encounter. These can overlap or be sub-sets of the overall encounter's
  /// period.
  @JsonKey(name: 'period')
  final Period? period;

  /// [individual] /// Persons involved in the encounter other than the patient.
  @JsonKey(name: 'individual')
  final Reference? individual;
  factory EncounterParticipant.fromJson(Map<String, dynamic> json) =>
      _$EncounterParticipantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterParticipantToJson(this);

  @override
  EncounterParticipant clone() => throw UnimplementedError();
  @override
  EncounterParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ParticipantType>? type,
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

  factory EncounterParticipant.fromYaml(dynamic yaml) => yaml is String
      ? EncounterParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EncounterParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EncounterParticipant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EncounterParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EncounterDiagnosis] /// The list of diagnosis relevant to this encounter.
@JsonSerializable()
class EncounterDiagnosis extends BackboneElement {
  EncounterDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.use,
    this.rank,
    this.rankElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EncounterDiagnosis');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [condition] /// Reason the encounter takes place, as specified using information from
  /// another resource. For admissions, this is the admission diagnosis. The
  /// indication will typically be a Condition (with other resources referenced
  /// in the evidence.detail), or a Procedure.
  @JsonKey(name: 'condition')
  final Reference condition;

  /// [use] /// Role that this diagnosis has within the encounter (e.g. admission, billing,
  /// discharge …).
  @JsonKey(name: 'use')
  final DiagnosisRole? use;

  /// [rank] /// Ranking of the diagnosis (for each role type).
  @JsonKey(name: 'rank')
  final FhirPositiveInt? rank;
  @JsonKey(name: '_rank')
  final Element? rankElement;
  factory EncounterDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$EncounterDiagnosisFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterDiagnosisToJson(this);

  @override
  EncounterDiagnosis clone() => throw UnimplementedError();
  @override
  EncounterDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    DiagnosisRole? use,
    FhirPositiveInt? rank,
    Element? rankElement,
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
      rankElement: rankElement ?? this.rankElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EncounterDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EncounterDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EncounterDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EncounterDiagnosis cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EncounterDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EncounterHospitalization] /// Details about the admission to a healthcare service.
@JsonSerializable()
class EncounterHospitalization extends BackboneElement {
  EncounterHospitalization({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EncounterHospitalization');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [preAdmissionIdentifier] /// Pre-admission identifier.
  @JsonKey(name: 'preAdmissionIdentifier')
  final Identifier? preAdmissionIdentifier;

  /// [origin] /// The location/organization from which the patient came before admission.
  @JsonKey(name: 'origin')
  final Reference? origin;

  /// [admitSource] /// From where patient was admitted (physician referral, transfer).
  @JsonKey(name: 'admitSource')
  final AdmitSource? admitSource;

  /// [reAdmission] /// Whether this hospitalization is a readmission and why if known.
  @JsonKey(name: 'reAdmission')
  final CodeableConcept? reAdmission;

  /// [dietPreference] /// Diet preferences reported by the patient.
  @JsonKey(name: 'dietPreference')
  final List<Diet>? dietPreference;

  /// [specialCourtesy] /// Special courtesies (VIP, board member).
  @JsonKey(name: 'specialCourtesy')
  final List<SpecialCourtesy>? specialCourtesy;

  /// [specialArrangement] /// Any special requests that have been made for this hospitalization
  /// encounter, such as the provision of specific equipment or other things.
  @JsonKey(name: 'specialArrangement')
  final List<SpecialArrangements>? specialArrangement;

  /// [destination] /// Location/organization to which the patient is discharged.
  @JsonKey(name: 'destination')
  final Reference? destination;

  /// [dischargeDisposition] /// Category or kind of location after discharge.
  @JsonKey(name: 'dischargeDisposition')
  final DischargeDisposition? dischargeDisposition;
  factory EncounterHospitalization.fromJson(Map<String, dynamic> json) =>
      _$EncounterHospitalizationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterHospitalizationToJson(this);

  @override
  EncounterHospitalization clone() => throw UnimplementedError();
  @override
  EncounterHospitalization copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? preAdmissionIdentifier,
    Reference? origin,
    AdmitSource? admitSource,
    CodeableConcept? reAdmission,
    List<Diet>? dietPreference,
    List<SpecialCourtesy>? specialCourtesy,
    List<SpecialArrangements>? specialArrangement,
    Reference? destination,
    DischargeDisposition? dischargeDisposition,
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

  factory EncounterHospitalization.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHospitalization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EncounterHospitalization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EncounterHospitalization cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EncounterHospitalization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterHospitalization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EncounterLocation] /// List of locations where the patient has been during this encounter.
@JsonSerializable()
class EncounterLocation extends BackboneElement {
  EncounterLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.location,
    this.status,
    this.statusElement,
    this.physicalType,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EncounterLocation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [location] /// The location where the encounter takes place.
  @JsonKey(name: 'location')
  final Reference location;

  /// [status] /// The status of the participants' presence at the specified location during
  /// the period specified. If the participant is no longer at the location, then
  /// the period will have an end date/time.
  @JsonKey(name: 'status')
  final EncounterLocationStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [physicalType] /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  @JsonKey(name: 'physicalType')
  final LocationType? physicalType;

  /// [period] /// Time period during which the patient was present at the location.
  @JsonKey(name: 'period')
  final Period? period;
  factory EncounterLocation.fromJson(Map<String, dynamic> json) =>
      _$EncounterLocationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EncounterLocationToJson(this);

  @override
  EncounterLocation clone() => throw UnimplementedError();
  @override
  EncounterLocation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    EncounterLocationStatus? status,
    Element? statusElement,
    LocationType? physicalType,
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
      statusElement: statusElement ?? this.statusElement,
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

  factory EncounterLocation.fromYaml(dynamic yaml) => yaml is String
      ? EncounterLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EncounterLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EncounterLocation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EncounterLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EncounterLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
