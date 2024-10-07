import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class EpisodeOfCare extends DomainResource {
  EpisodeOfCare({
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
    this.type,
    this.diagnosis,
    required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account,
  }) : super(resourceType: R4ResourceType.EpisodeOfCare);

  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<EpisodeOfCareStatusHistory>? statusHistory;
  final List<CodeableConcept>? type;
  final List<EpisodeOfCareDiagnosis>? diagnosis;
  final Reference patient;
  final Reference? managingOrganization;
  final Period? period;
  final List<Reference>? referralRequest;
  final Reference? careManager;
  final List<Reference>? team;
  final List<Reference>? account;
  @override
  EpisodeOfCare clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EpisodeOfCareStatusHistory extends BackboneElement {
  EpisodeOfCareStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
  });

  final FhirCode status;
  final Element? statusElement;
  final Period period;
  @override
  EpisodeOfCareStatusHistory clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class EpisodeOfCareDiagnosis extends BackboneElement {
  EpisodeOfCareDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
    this.rankElement,
  });

  final Reference condition;
  final CodeableConcept? role;
  final FhirPositiveInt? rank;
  final Element? rankElement;
  @override
  EpisodeOfCareDiagnosis clone() => throw UnimplementedError();
}
