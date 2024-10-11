import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ImmunizationEvaluation extends Resource {
  ImmunizationEvaluation({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    required this.patient,
    this.date,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.series,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
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
  String status;
  ToOne<Reference> patient = ToOne<Reference>();
  String? date;
  ToOne<Reference>? authority = ToOne<Reference>();
  ToOne<CodeableConcept> targetDisease = ToOne<CodeableConcept>();
  ToOne<Reference> immunizationEvent = ToOne<Reference>();
  ToOne<CodeableConcept> doseStatus = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? doseStatusReason = ToMany<CodeableConcept>();
  String? description;
  String? series;
  int? doseNumberPositiveInt;
  String? doseNumberString;
  int? seriesDosesPositiveInt;
  String? seriesDosesString;
}
