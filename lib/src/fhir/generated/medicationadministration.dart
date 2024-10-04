import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationAdministration {
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
  final List<FhirUri> instantiates;
  final List<PrimitiveElement> Instantiates;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> statusReason;
  final CodeableConcept category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference context;
  final List<Reference> supportingInformation;
  final String effectiveDateTime;
  final PrimitiveElement EffectiveDateTime;
  final Period effectivePeriod;
  final List<MedicationAdministrationPerformer> performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final Reference request;
  final List<Reference> device;
  final List<Annotation> note;
  final MedicationAdministration_Dosage dosage;
  final List<Reference> eventHistory;
  const MedicationAdministration({
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
    this.instantiates,
    this.Instantiates,
    this.partOf,
    this.status,
    this.Status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.EffectiveDateTime,
    this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
  });
}
