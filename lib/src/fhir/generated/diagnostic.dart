import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class DiagnosticReport {
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
  final List<Reference> basedOn;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement effectiveDateTimeElement;
  final Period effectivePeriod;
  final FhirInstant issued;
  final PrimitiveElement issuedElement;
  final List<Reference> performer;
  final List<Reference> resultsInterpreter;
  final List<Reference> specimen;
  final List<Reference> result;
  final List<Reference> imagingStudy;
  final List<DiagnosticReportMedia> media;
  final String conclusion;
  final PrimitiveElement conclusionElement;
  final List<CodeableConcept> conclusionCode;
  final List<Attachment> presentedForm;
}

@Data()
@JsonCodable()
class DiagnosticReportMedia {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String comment;
  final PrimitiveElement commentElement;
  final Reference link;
}


