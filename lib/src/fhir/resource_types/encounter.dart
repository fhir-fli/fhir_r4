import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.Encounter);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier(s) by which this encounter is known.
  final List<Identifier>? identifier;

  /// [status] /// planned | arrived | triaged | in-progress | onleave | finished | cancelled
  /// +.
  final FhirCode status;
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
  Encounter clone() => throw UnimplementedError();
  Encounter copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// planned | arrived | triaged | in-progress | onleave | finished | cancelled
  /// +.
  final FhirCode status;
  final Element? statusElement;

  /// [period] /// The time that the episode was in the specified status.
  final Period period;
  @override
  EncounterStatusHistory clone() => throw UnimplementedError();
  EncounterStatusHistory copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? status,
    Element? statusElement,
    Period? period,
  }) {
    return EncounterStatusHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [class_] /// inpatient | outpatient | ambulatory | emergency +.
  final Coding class_;

  /// [period] /// The time that the episode was in the specified class.
  final Period period;
  @override
  EncounterClassHistory clone() => throw UnimplementedError();
  EncounterClassHistory copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? class_,
    Period? period,
  }) {
    return EncounterClassHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      class_: class_ ?? this.class_,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EncounterParticipant] /// The list of people responsible for providing the service.
class EncounterParticipant extends BackboneElement {
  EncounterParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.individual,
  });

  @Id()
  @JsonKey(ignore: true)
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
  EncounterParticipant clone() => throw UnimplementedError();
  EncounterParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Period? period,
    Reference? individual,
  }) {
    return EncounterParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      individual: individual ?? this.individual,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  EncounterDiagnosis clone() => throw UnimplementedError();
  EncounterDiagnosis copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    CodeableConcept? use,
    FhirPositiveInt? rank,
    Element? rankElement,
  }) {
    return EncounterDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      use: use ?? this.use,
      rank: rank ?? this.rank,
      rankElement: rankElement ?? this.rankElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  EncounterHospitalization clone() => throw UnimplementedError();
  EncounterHospitalization copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [location] /// The location where the encounter takes place.
  final Reference location;

  /// [status] /// The status of the participants' presence at the specified location during
  /// the period specified. If the participant is no longer at the location, then
  /// the period will have an end date/time.
  final FhirCode? status;
  final Element? statusElement;

  /// [physicalType] /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  final CodeableConcept? physicalType;

  /// [period] /// Time period during which the patient was present at the location.
  final Period? period;
  @override
  EncounterLocation clone() => throw UnimplementedError();
  EncounterLocation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? physicalType,
    Period? period,
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
    );
  }
}
