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
}


