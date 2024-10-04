import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class RiskAssessment {
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
  final Reference basedOn;
  final Reference parent;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept method;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Reference condition;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> basis;
  final List<RiskAssessmentPrediction> prediction;
  final String mitigation;
  final PrimitiveElement Mitigation;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class RiskAssessmentPrediction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept outcome;
  final double probabilityDecimal;
  final PrimitiveElement ProbabilityDecimal;
  final Range probabilityRange;
  final CodeableConcept qualitativeRisk;
  final FhirDecimal relativeRisk;
  final PrimitiveElement RelativeRisk;
  final Period whenPeriod;
  final Range whenRange;
  final String rationale;
  final PrimitiveElement Rationale;
}


