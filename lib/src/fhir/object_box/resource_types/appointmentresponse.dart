import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class AppointmentResponse extends Resource {
  AppointmentResponse({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.appointment,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.comment,
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
  ToOne<Reference> appointment = ToOne<Reference>();
  String? start;
  String? end;
  ToMany<CodeableConcept>? participantType = ToMany<CodeableConcept>();
  ToOne<Reference>? actor = ToOne<Reference>();
  String participantStatus;
  String? comment;
}
