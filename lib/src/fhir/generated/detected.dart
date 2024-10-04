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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept code;
  final FhirCode severity;
  final PrimitiveElement Severity;
  final Reference patient;
  final String identifiedDateTime;
  final PrimitiveElement IdentifiedDateTime;
  final Period identifiedPeriod;
  final Reference author;
  final List<Reference> implicated;
  final List<DetectedIssueEvidence> evidence;
  final String detail;
  final PrimitiveElement Detail;
  final FhirUri reference;
  final PrimitiveElement Reference;
  final List<DetectedIssueMitigation> mitigation;
}

@Data()
@JsonCodable()
class DetectedIssueEvidence {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final List<Reference> detail;
}

@Data()
@JsonCodable()
class DetectedIssueMitigation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept action;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference author;
}


