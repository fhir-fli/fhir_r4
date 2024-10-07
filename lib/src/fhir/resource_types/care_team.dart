import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final FhirString? name;
  final Element? nameElement;
  final Reference? subject;
  final Reference? encounter;
  final Period? period;
  final List<CareTeamParticipant>? participant;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Reference>? managingOrganization;
  final List<ContactPoint>? telecom;
  final List<Annotation>? note;
  @override
  CareTeam clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final List<CodeableConcept>? role;
  final Reference? member;
  final Reference? onBehalfOf;
  final Period? period;
  @override
  CareTeamParticipant clone() => throw UnimplementedError();
}
