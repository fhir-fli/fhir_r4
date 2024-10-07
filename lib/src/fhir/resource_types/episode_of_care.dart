import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class EpisodeOfCare extends DomainResource {
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

@override
EpisodeOfCare clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EpisodeOfCareStatusHistory extends BackboneElement {
  final FhirCode status;
  final Element? statusElement;
  final Period period;

  EpisodeOfCareStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
this.statusElement,
    required this.period,
  });

@override
EpisodeOfCareStatusHistory clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EpisodeOfCareDiagnosis extends BackboneElement {
  final Reference condition;
  final CodeableConcept? role;
  final FhirPositiveInt? rank;
  final Element? rankElement;

  EpisodeOfCareDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
this.rankElement,
  });

@override
EpisodeOfCareDiagnosis clone() => throw UnimplementedError();
}

