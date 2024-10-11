import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MedicationStatement extends Resource {
  MedicationStatement({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.dateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToMany<CodeableConcept>? statusReason = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? medicationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? medicationReference = ToOne<Reference>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? context = ToOne<Reference>();
  String? effectiveDateTime;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  String? dateAsserted;
  ToOne<Reference>? informationSource = ToOne<Reference>();
  ToMany<Reference>? derivedFrom = ToMany<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Dosage>? dosage = ToMany<Dosage>();
}
