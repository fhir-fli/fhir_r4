import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class EnrollmentResponse extends Resource {
  EnrollmentResponse({
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
    this.request,
    this.outcome,
    this.disposition,
    this.created,
    this.organization,
    this.requestProvider,
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
  ToOne<Reference>? request = ToOne<Reference>();
  String? outcome;
  String? disposition;
  String? created;
  ToOne<Reference>? organization = ToOne<Reference>();
  ToOne<Reference>? requestProvider = ToOne<Reference>();
}
