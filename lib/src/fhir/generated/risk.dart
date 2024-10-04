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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final Reference basedOn;
  final Reference parent;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept method;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Reference condition;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> basis;
  final List<RiskAssessmentPrediction> prediction;
  final String mitigation;
  final PrimitiveElement mitigationElement;
  final List<Annotation> note;
  const RiskAssessment({
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
    required this.basedOn,
    required this.parent,
    required this.status,
    required this.statusElement,
    required this.method,
    required this.code,
    required this.subject,
    required this.encounter,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.condition,
    required this.performer,
    required this.reasonCode,
    required this.reasonReference,
    required this.basis,
    required this.prediction,
    required this.mitigation,
    required this.mitigationElement,
    required this.note,
  });
}

@Data()
@JsonCodable()
class RiskAssessmentPrediction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept outcome;
  final double probabilityDecimal;
  final PrimitiveElement probabilityDecimalElement;
  final Range probabilityRange;
  final CodeableConcept qualitativeRisk;
  final FhirDecimal relativeRisk;
  final PrimitiveElement relativeRiskElement;
  final Period whenPeriod;
  final Range whenRange;
  final String rationale;
  final PrimitiveElement rationaleElement;
  const RiskAssessmentPrediction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.outcome,
    required this.probabilityDecimal,
    required this.probabilityDecimalElement,
    required this.probabilityRange,
    required this.qualitativeRisk,
    required this.relativeRisk,
    required this.relativeRiskElement,
    required this.whenPeriod,
    required this.whenRange,
    required this.rationale,
    required this.rationaleElement,
  });
}


