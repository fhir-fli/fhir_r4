import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class EpisodeOfCare {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<EpisodeOfCareStatusHistory> statusHistory;
  final List<CodeableConcept> type;
  final List<EpisodeOfCareDiagnosis> diagnosis;
  final Reference patient;
  final Reference managingOrganization;
  final Period period;
  final List<Reference> referralRequest;
  final Reference careManager;
  final List<Reference> team;
  final List<Reference> account;
  const EpisodeOfCare({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.statusHistory,
    required this.type,
    required this.diagnosis,
    required this.patient,
    required this.managingOrganization,
    required this.period,
    required this.referralRequest,
    required this.careManager,
    required this.team,
    required this.account,
  });
}

@Data()
@JsonCodable()
class EpisodeOfCareStatusHistory {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Period period;
  const EpisodeOfCareStatusHistory({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.status,
    required this.statusElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class EpisodeOfCareDiagnosis {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference condition;
  final CodeableConcept role;
  final FhirPositiveInt rank;
  final PrimitiveElement rankElement;
  const EpisodeOfCareDiagnosis({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.condition,
    required this.role,
    required this.rank,
    required this.rankElement,
  });
}


