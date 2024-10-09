import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Encounter] /// An interaction between a patient and healthcare provider(s) for the purpose
/// of providing healthcare service(s) or assessing the health status of a
/// patient.
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
  }) : super(resourceType: R4ResourceType.Encounter);

  @override
  String get fhirType => 'Encounter';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifier(s) by which this encounter is known.
  final List<Identifier>? identifier;

  /// [status] /// planned | arrived | triaged | in-progress | onleave | finished | cancelled
  /// +.
  final EncounterStatus status;
  final Element? statusElement;

  /// [statusHistory] /// The status history permits the encounter resource to contain the status
  /// history without needing to read through the historical versions of the
  /// resource, or even have the server store them.
  final List<EncounterStatusHistory>? statusHistory;

  /// [class_] /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others due to
  /// local variations.
  final Coding class_;

  /// [classHistory] /// The class history permits the tracking of the encounters transitions
  /// without needing to go through the resource history. This would be used for
  /// a case where an admission starts of as an emergency encounter, then
  /// transitions into an inpatient scenario. Doing this and not restarting a new
  /// encounter ensures that any lab/diagnostic results can more easily follow
  /// the patient and not require re-processing and not get lost or cancelled
  /// during a kind of discharge from emergency to inpatient.
  final List<EncounterClassHistory>? classHistory;

  /// [type] /// Specific type of encounter (e.g. e-mail consultation, surgical day-care,
  /// skilled nursing, rehabilitation).
  final List<CodeableConcept>? type;

  /// [serviceType] /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  final CodeableConcept? serviceType;

  /// [priority] /// Indicates the urgency of the encounter.
  final CodeableConcept? priority;

  /// [subject] /// The patient or group present at the encounter.
  final Reference? subject;

  /// [episodeOfCare] /// Where a specific encounter should be classified as a part of a specific
  /// episode(s) of care this field should be used. This association can
  /// facilitate grouping of related encounters together for a specific purpose,
  /// such as government reporting, issue tracking, association via a common
  /// problem. The association is recorded on the encounter as these are
  /// typically created after the episode of care and grouped on entry rather
  /// than editing the episode of care to append another encounter to it (the
  /// episode of care could span years).
  final List<Reference>? episodeOfCare;

  /// [basedOn] /// The request this encounter satisfies (e.g. incoming referral or procedure
  /// request).
  final List<Reference>? basedOn;

  /// [participant] /// The list of people responsible for providing the service.
  final List<EncounterParticipant>? participant;

  /// [appointment] /// The appointment that scheduled this encounter.
  final List<Reference>? appointment;

  /// [period] /// The start and end time of the encounter.
  final Period? period;

  /// [length] /// Quantity of time the encounter lasted. This excludes the time during leaves
  /// of absence.
  final FhirDuration? length;

  /// [reasonCode] /// Reason the encounter takes place, expressed as a code. For admissions, this
  /// can be used for a coded admission diagnosis.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Reason the encounter takes place, expressed as a code. For admissions, this
  /// can be used for a coded admission diagnosis.
  final List<Reference>? reasonReference;

  /// [diagnosis] /// The list of diagnosis relevant to this encounter.
  final List<EncounterDiagnosis>? diagnosis;

  /// [account] /// The set of accounts that may be used for billing for this Encounter.
  final List<Reference>? account;

  /// [hospitalization] /// Details about the admission to a healthcare service.
  final EncounterHospitalization? hospitalization;

  /// [location] /// List of locations where the patient has been during this encounter.
  final List<EncounterLocation>? location;

  /// [serviceProvider] /// The organization that is primarily responsible for this Encounter's
  /// services. This MAY be the same as the organization on the Patient record,
  /// however it could be different, such as if the actor performing the services
  /// was from an external organization (which may be billed seperately) for an
  /// external consultation. Refer to the example bundle showing an abbreviated
  /// set of Encounters for a colonoscopy.
  final Reference? serviceProvider;

  /// [partOf] /// Another Encounter of which this encounter is a part of (administratively or
  /// in time).
  final Reference? partOf;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusHistory != null && statusHistory!.isNotEmpty) {
      json['statusHistory'] = statusHistory!
          .map<dynamic>((EncounterStatusHistory v) => v.toJson())
          .toList();
    }
    json['class'] = class_.toJson();
    if (classHistory != null && classHistory!.isNotEmpty) {
      json['classHistory'] = classHistory!
          .map<dynamic>((EncounterClassHistory v) => v.toJson())
          .toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
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
      json['episodeOfCare'] =
          episodeOfCare!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!
          .map<dynamic>((EncounterParticipant v) => v.toJson())
          .toList();
    }
    if (appointment != null && appointment!.isNotEmpty) {
      json['appointment'] =
          appointment!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (length != null) {
      json['length'] = length!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] = diagnosis!
          .map<dynamic>((EncounterDiagnosis v) => v.toJson())
          .toList();
    }
    if (account != null && account!.isNotEmpty) {
      json['account'] =
          account!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (hospitalization != null) {
      json['hospitalization'] = hospitalization!.toJson();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] =
          location!.map<dynamic>((EncounterLocation v) => v.toJson()).toList();
    }
    if (serviceProvider != null) {
      json['serviceProvider'] = serviceProvider!.toJson();
    }
    if (partOf != null) {
      json['partOf'] = partOf!.toJson();
    }
    return json;
  }

  factory Encounter.fromJson(Map<String, dynamic> json) {
    return Encounter(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: EncounterStatus.fromJson(json['status'] as Map<String, dynamic>),
      statusHistory: json['statusHistory'] != null
          ? (json['statusHistory'] as List<dynamic>)
              .map<EncounterStatusHistory>((dynamic v) =>
                  EncounterStatusHistory.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      class_: Coding.fromJson(json['class'] as Map<String, dynamic>),
      classHistory: json['classHistory'] != null
          ? (json['classHistory'] as List<dynamic>)
              .map<EncounterClassHistory>((dynamic v) =>
                  EncounterClassHistory.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? CodeableConcept.fromJson(
              json['serviceType'] as Map<String, dynamic>)
          : null,
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      episodeOfCare: json['episodeOfCare'] != null
          ? (json['episodeOfCare'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<EncounterParticipant>((dynamic v) =>
                  EncounterParticipant.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      appointment: json['appointment'] != null
          ? (json['appointment'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      length: json['length'] != null
          ? FhirDuration.fromJson(json['length'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<EncounterDiagnosis>((dynamic v) =>
                  EncounterDiagnosis.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      account: json['account'] != null
          ? (json['account'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      hospitalization: json['hospitalization'] != null
          ? EncounterHospitalization.fromJson(
              json['hospitalization'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<EncounterLocation>((dynamic v) =>
                  EncounterLocation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      serviceProvider: json['serviceProvider'] != null
          ? Reference.fromJson(json['serviceProvider'] as Map<String, dynamic>)
          : null,
      partOf: json['partOf'] != null
          ? Reference.fromJson(json['partOf'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'EncounterStatusHistory';

  @Id()
  int dbId = 0;

  /// [status] /// planned | arrived | triaged | in-progress | onleave | finished | cancelled
  /// +.
  final EncounterStatus status;
  final Element? statusElement;

  /// [period] /// The time that the episode was in the specified status.
  final Period period;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['status'] = status.toJson();
    json['period'] = period.toJson();
    return json;
  }

  factory EncounterStatusHistory.fromJson(Map<String, dynamic> json) {
    return EncounterStatusHistory(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: EncounterStatus.fromJson(json['status'] as Map<String, dynamic>),
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
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
  });

  @override
  String get fhirType => 'EncounterClassHistory';

  @Id()
  int dbId = 0;

  /// [class_] /// inpatient | outpatient | ambulatory | emergency +.
  final Coding class_;

  /// [period] /// The time that the episode was in the specified class.
  final Period period;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['class'] = class_.toJson();
    json['period'] = period.toJson();
    return json;
  }

  factory EncounterClassHistory.fromJson(Map<String, dynamic> json) {
    return EncounterClassHistory(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      class_: Coding.fromJson(json['class'] as Map<String, dynamic>),
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
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
  });

  @override
  String get fhirType => 'EncounterParticipant';

  @Id()
  int dbId = 0;

  /// [type] /// Role of participant in encounter.
  final List<CodeableConcept>? type;

  /// [period] /// The period of time that the specified participant participated in the
  /// encounter. These can overlap or be sub-sets of the overall encounter's
  /// period.
  final Period? period;

  /// [individual] /// Persons involved in the encounter other than the patient.
  final Reference? individual;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (individual != null) {
      json['individual'] = individual!.toJson();
    }
    return json;
  }

  factory EncounterParticipant.fromJson(Map<String, dynamic> json) {
    return EncounterParticipant(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      individual: json['individual'] != null
          ? Reference.fromJson(json['individual'] as Map<String, dynamic>)
          : null,
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
  });

  @override
  String get fhirType => 'EncounterDiagnosis';

  @Id()
  int dbId = 0;

  /// [condition] /// Reason the encounter takes place, as specified using information from
  /// another resource. For admissions, this is the admission diagnosis. The
  /// indication will typically be a Condition (with other resources referenced
  /// in the evidence.detail), or a Procedure.
  final Reference condition;

  /// [use] /// Role that this diagnosis has within the encounter (e.g. admission, billing,
  /// discharge …).
  final CodeableConcept? use;

  /// [rank] /// Ranking of the diagnosis (for each role type).
  final FhirPositiveInt? rank;
  final Element? rankElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['condition'] = condition.toJson();
    if (use != null) {
      json['use'] = use!.toJson();
    }
    if (rank?.value != null) {
      json['rank'] = rank!.value;
    }
    if (rankElement != null) {
      json['_rank'] = rankElement!.toJson();
    }
    return json;
  }

  factory EncounterDiagnosis.fromJson(Map<String, dynamic> json) {
    return EncounterDiagnosis(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: Reference.fromJson(json['condition'] as Map<String, dynamic>),
      use: json['use'] != null
          ? CodeableConcept.fromJson(json['use'] as Map<String, dynamic>)
          : null,
      rank: json['rank'] != null ? FhirPositiveInt(json['rank']) : null,
      rankElement: json['_rank'] != null
          ? Element.fromJson(json['_rank'] as Map<String, dynamic>)
          : null,
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
  });

  @override
  String get fhirType => 'EncounterHospitalization';

  @Id()
  int dbId = 0;

  /// [preAdmissionIdentifier] /// Pre-admission identifier.
  final Identifier? preAdmissionIdentifier;

  /// [origin] /// The location/organization from which the patient came before admission.
  final Reference? origin;

  /// [admitSource] /// From where patient was admitted (physician referral, transfer).
  final CodeableConcept? admitSource;

  /// [reAdmission] /// Whether this hospitalization is a readmission and why if known.
  final CodeableConcept? reAdmission;

  /// [dietPreference] /// Diet preferences reported by the patient.
  final List<CodeableConcept>? dietPreference;

  /// [specialCourtesy] /// Special courtesies (VIP, board member).
  final List<CodeableConcept>? specialCourtesy;

  /// [specialArrangement] /// Any special requests that have been made for this hospitalization
  /// encounter, such as the provision of specific equipment or other things.
  final List<CodeableConcept>? specialArrangement;

  /// [destination] /// Location/organization to which the patient is discharged.
  final Reference? destination;

  /// [dischargeDisposition] /// Category or kind of location after discharge.
  final CodeableConcept? dischargeDisposition;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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
      json['dietPreference'] = dietPreference!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (specialCourtesy != null && specialCourtesy!.isNotEmpty) {
      json['specialCourtesy'] = specialCourtesy!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (specialArrangement != null && specialArrangement!.isNotEmpty) {
      json['specialArrangement'] = specialArrangement!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (destination != null) {
      json['destination'] = destination!.toJson();
    }
    if (dischargeDisposition != null) {
      json['dischargeDisposition'] = dischargeDisposition!.toJson();
    }
    return json;
  }

  factory EncounterHospitalization.fromJson(Map<String, dynamic> json) {
    return EncounterHospitalization(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      preAdmissionIdentifier: json['preAdmissionIdentifier'] != null
          ? Identifier.fromJson(
              json['preAdmissionIdentifier'] as Map<String, dynamic>)
          : null,
      origin: json['origin'] != null
          ? Reference.fromJson(json['origin'] as Map<String, dynamic>)
          : null,
      admitSource: json['admitSource'] != null
          ? CodeableConcept.fromJson(
              json['admitSource'] as Map<String, dynamic>)
          : null,
      reAdmission: json['reAdmission'] != null
          ? CodeableConcept.fromJson(
              json['reAdmission'] as Map<String, dynamic>)
          : null,
      dietPreference: json['dietPreference'] != null
          ? (json['dietPreference'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialCourtesy: json['specialCourtesy'] != null
          ? (json['specialCourtesy'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialArrangement: json['specialArrangement'] != null
          ? (json['specialArrangement'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      destination: json['destination'] != null
          ? Reference.fromJson(json['destination'] as Map<String, dynamic>)
          : null,
      dischargeDisposition: json['dischargeDisposition'] != null
          ? CodeableConcept.fromJson(
              json['dischargeDisposition'] as Map<String, dynamic>)
          : null,
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
  });

  @override
  String get fhirType => 'EncounterLocation';

  @Id()
  int dbId = 0;

  /// [location] /// The location where the encounter takes place.
  final Reference location;

  /// [status] /// The status of the participants' presence at the specified location during
  /// the period specified. If the participant is no longer at the location, then
  /// the period will have an end date/time.
  final EncounterLocationStatus? status;
  final Element? statusElement;

  /// [physicalType] /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  final CodeableConcept? physicalType;

  /// [period] /// Time period during which the patient was present at the location.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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

  factory EncounterLocation.fromJson(Map<String, dynamic> json) {
    return EncounterLocation(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: Reference.fromJson(json['location'] as Map<String, dynamic>),
      status: json['status'] != null
          ? EncounterLocationStatus.fromJson(
              json['status'] as Map<String, dynamic>)
          : null,
      physicalType: json['physicalType'] != null
          ? CodeableConcept.fromJson(
              json['physicalType'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
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
    Element? statusElement,
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
