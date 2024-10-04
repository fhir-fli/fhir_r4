import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ResearchSubject {
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
  final Period period;
  final Reference study;
  final Reference individual;
  final String assignedArm;
  final PrimitiveElement AssignedArm;
  final String actualArm;
  final PrimitiveElement ActualArm;
  final Reference consent;
  const ResearchSubject({
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
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.AssignedArm,
    this.actualArm,
    this.ActualArm,
    this.consent,
  });
}
