import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class DetectedIssue {
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
  final CodeableConcept code;
  final FhirCode severity;
  final PrimitiveElement severityElement;
  final Reference patient;
  final String identifiedDateTime;
  final PrimitiveElement identifiedDateTimeElement;
  final Period identifiedPeriod;
  final Reference author;
  final List<Reference> implicated;
  final List<DetectedIssueEvidence> evidence;
  final String detail;
  final PrimitiveElement detailElement;
  final FhirUri reference;
  final PrimitiveElement referenceElement;
  final List<DetectedIssueMitigation> mitigation;
}

@Data()
@JsonCodable()
class DetectedIssueEvidence {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final List<Reference> detail;
}

@Data()
@JsonCodable()
class DetectedIssueMitigation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept action;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference author;
}


