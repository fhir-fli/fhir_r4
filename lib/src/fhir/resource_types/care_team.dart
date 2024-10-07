import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CareTeam] /// The Care Team includes all the people and organizations who plan to
/// participate in the coordination and delivery of care for a patient.
class CareTeam extends DomainResource {
  CareTeam({
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
    this.status,
    this.statusElement,
    this.category,
    this.name,
    this.nameElement,
    this.subject,
    this.encounter,
    this.period,
    this.participant,
    this.reasonCode,
    this.reasonReference,
    this.managingOrganization,
    this.telecom,
    this.note,
  }) : super(resourceType: R4ResourceType.CareTeam);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this care team by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of the care team.
  final FhirCode? status;
  final Element? statusElement;

  /// [category] /// Identifies what kind of team. This is to support differentiation between
  /// multiple co-existing teams, such as care plan team, episode of care team,
  /// longitudinal care team.
  final List<CodeableConcept>? category;

  /// [name] /// A label for human use intended to distinguish like teams. E.g. the "red"
  /// vs. "green" trauma teams.
  final FhirString? name;
  final Element? nameElement;

  /// [subject] /// Identifies the patient or group whose intended care is handled by the team.
  final Reference? subject;

  /// [encounter] /// The Encounter during which this CareTeam was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [period] /// Indicates when the team did (or is intended to) come into effect and end.
  final Period? period;

  /// [participant] /// Identifies all people and organizations who are expected to be involved in
  /// the care team.
  final List<CareTeamParticipant>? participant;

  /// [reasonCode] /// Describes why the care team exists.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition(s) that this care team addresses.
  final List<Reference>? reasonReference;

  /// [managingOrganization] /// The organization responsible for the care team.
  final List<Reference>? managingOrganization;

  /// [telecom] /// A central contact detail for the care team (that applies to all members).
  final List<ContactPoint>? telecom;

  /// [note] /// Comments made about the CareTeam.
  final List<Annotation>? note;
  @override
  CareTeam clone() => throw UnimplementedError();
  CareTeam copy({
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
    List<CodeableConcept>? category,
    FhirString? name,
    Element? nameElement,
    Reference? subject,
    Reference? encounter,
    Period? period,
    List<CareTeamParticipant>? participant,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? managingOrganization,
    List<ContactPoint>? telecom,
    List<Annotation>? note,
  }) {
    return CareTeam(
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
      category: category ?? this.category,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      period: period ?? this.period,
      participant: participant ?? this.participant,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      telecom: telecom ?? this.telecom,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CareTeamParticipant] /// Identifies all people and organizations who are expected to be involved in
/// the care team.
class CareTeamParticipant extends BackboneElement {
  CareTeamParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// Indicates specific responsibility of an individual within the care team,
  /// such as "Primary care physician", "Trained social worker counselor",
  /// "Caregiver", etc.
  final List<CodeableConcept>? role;

  /// [member] /// The specific person or organization who is participating/expected to
  /// participate in the care team.
  final Reference? member;

  /// [onBehalfOf] /// The organization of the practitioner.
  final Reference? onBehalfOf;

  /// [period] /// Indicates when the specific member or organization did (or is intended to)
  /// come into effect and end.
  final Period? period;
  @override
  CareTeamParticipant clone() => throw UnimplementedError();
  CareTeamParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? role,
    Reference? member,
    Reference? onBehalfOf,
    Period? period,
  }) {
    return CareTeamParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      member: member ?? this.member,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      period: period ?? this.period,
    );
  }
}
