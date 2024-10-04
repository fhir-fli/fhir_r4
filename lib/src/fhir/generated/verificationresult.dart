import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VerificationResult {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Reference> target;
  final List<String> targetLocation;
  final List<PrimitiveElement> TargetLocation;
  final CodeableConcept need;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final CodeableConcept validationType;
  final List<CodeableConcept> validationProcess;
  final Timing frequency;
  final FhirDateTime lastPerformed;
  final PrimitiveElement LastPerformed;
  final FhirDate nextScheduled;
  final PrimitiveElement NextScheduled;
  final CodeableConcept failureAction;
  final List<VerificationResultPrimarySource> primarySource;
  final VerificationResult_Attestation attestation;
  final List<VerificationResultValidator> validator;
  const VerificationResult({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.target,
    this.targetLocation,
    this.TargetLocation,
    this.need,
    this.status,
    this.Status,
    this.statusDate,
    this.StatusDate,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.LastPerformed,
    this.nextScheduled,
    this.NextScheduled,
    this.failureAction,
    this.primarySource,
    this.attestation,
    this.validator,
  });
}
