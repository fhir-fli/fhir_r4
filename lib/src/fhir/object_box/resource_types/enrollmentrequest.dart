import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class EnrollmentRequest extends Resource {
  EnrollmentRequest({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.created,
    this.insurer,
    this.provider,
    this.candidate,
    this.coverage,
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
  String? status;
  String? created;
  ToOne<Reference>? insurer = ToOne<Reference>();
  ToOne<Reference>? provider = ToOne<Reference>();
  ToOne<Reference>? candidate = ToOne<Reference>();
  ToOne<Reference>? coverage = ToOne<Reference>();
}
