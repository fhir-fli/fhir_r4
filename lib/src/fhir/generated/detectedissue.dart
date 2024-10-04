import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

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
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const DetectedIssue({
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
    this.identifier,
    this.status,
    this.Status,
    this.code,
    this.severity,
    this.Severity,
    this.patient,
    this.identifiedDateTime,
    this.IdentifiedDateTime,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.Detail,
    this.reference,
    this.Reference,
    this.mitigation,
  });
}
