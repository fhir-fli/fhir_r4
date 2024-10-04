import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VisionPrescription {
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
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference patient;
  final Reference encounter;
  final FhirDateTime dateWritten;
  final PrimitiveElement DateWritten;
  final Reference prescriber;
  final List<VisionPrescriptionLensSpecification> lensSpecification;
  const VisionPrescription({
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
    this.created,
    this.Created,
    required this.patient,
    this.encounter,
    this.dateWritten,
    this.DateWritten,
    required this.prescriber,
    required this.lensSpecification,
  });
}
