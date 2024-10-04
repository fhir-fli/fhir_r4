import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationDispense {
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
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReasonCodeableConcept;
  final Reference statusReasonReference;
  final CodeableConcept category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference context;
  final List<Reference> supportingInformation;
  final List<MedicationDispensePerformer> performer;
  final Reference location;
  final List<Reference> authorizingPrescription;
  final CodeableConcept type;
  final Quantity quantity;
  final Quantity daysSupply;
  final FhirDateTime whenPrepared;
  final PrimitiveElement WhenPrepared;
  final FhirDateTime whenHandedOver;
  final PrimitiveElement WhenHandedOver;
  final Reference destination;
  final List<Reference> receiver;
  final List<Annotation> note;
  final List<Dosage> dosageInstruction;
  final MedicationDispense_Substitution substitution;
  final List<Reference> detectedIssue;
  final List<Reference> eventHistory;
  const MedicationDispense({
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
    this.partOf,
    this.status,
    this.Status,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.WhenPrepared,
    this.whenHandedOver,
    this.WhenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory,
  });
}
