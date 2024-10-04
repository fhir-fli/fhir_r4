import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationStatement {
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
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> statusReason;
  final CodeableConcept category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference context;
  final String effectiveDateTime;
  final PrimitiveElement EffectiveDateTime;
  final Period effectivePeriod;
  final FhirDateTime dateAsserted;
  final PrimitiveElement DateAsserted;
  final Reference informationSource;
  final List<Reference> derivedFrom;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<Dosage> dosage;
  const MedicationStatement({
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
    this.basedOn,
    this.partOf,
    this.status,
    this.Status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.effectiveDateTime,
    this.EffectiveDateTime,
    this.effectivePeriod,
    this.dateAsserted,
    this.DateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
  });
}
