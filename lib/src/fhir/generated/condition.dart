import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Condition {
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
  final CodeableConcept clinicalStatus;
  final CodeableConcept verificationStatus;
  final List<CodeableConcept> category;
  final CodeableConcept severity;
  final CodeableConcept code;
  final List<CodeableConcept> bodySite;
  final Reference subject;
  final Reference encounter;
  final String onsetDateTime;
  final PrimitiveElement onsetDateTimeElement;
  final Age onsetAge;
  final Period onsetPeriod;
  final Range onsetRange;
  final String onsetString;
  final PrimitiveElement onsetStringElement;
  final String abatementDateTime;
  final PrimitiveElement abatementDateTimeElement;
  final Age abatementAge;
  final Period abatementPeriod;
  final Range abatementRange;
  final String abatementString;
  final PrimitiveElement abatementStringElement;
  final FhirDateTime recordedDate;
  final PrimitiveElement recordedDateElement;
  final Reference recorder;
  final Reference asserter;
  final List<ConditionStage> stage;
  final List<ConditionEvidence> evidence;
  final List<Annotation> note;
  const Condition({
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
    required this.clinicalStatus,
    required this.verificationStatus,
    required this.category,
    required this.severity,
    required this.code,
    required this.bodySite,
    required this.subject,
    required this.encounter,
    required this.onsetDateTime,
    required this.onsetDateTimeElement,
    required this.onsetAge,
    required this.onsetPeriod,
    required this.onsetRange,
    required this.onsetString,
    required this.onsetStringElement,
    required this.abatementDateTime,
    required this.abatementDateTimeElement,
    required this.abatementAge,
    required this.abatementPeriod,
    required this.abatementRange,
    required this.abatementString,
    required this.abatementStringElement,
    required this.recordedDate,
    required this.recordedDateElement,
    required this.recorder,
    required this.asserter,
    required this.stage,
    required this.evidence,
    required this.note,
  });
}

@Data()
@JsonCodable()
class ConditionStage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept summary;
  final List<Reference> assessment;
  final CodeableConcept type;
  const ConditionStage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.summary,
    required this.assessment,
    required this.type,
  });
}

@Data()
@JsonCodable()
class ConditionEvidence {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final List<Reference> detail;
  const ConditionEvidence({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.detail,
  });
}


