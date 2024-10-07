import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CareTeam extends DomainResource {
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

@override
CareTeam clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CareTeamParticipant extends BackboneElement {
  final List<CodeableConcept>? role;
  final Reference? member;
  final Reference? onBehalfOf;
  final Period? period;

  CareTeamParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period,
  });

@override
CareTeamParticipant clone() => throw UnimplementedError();
}

