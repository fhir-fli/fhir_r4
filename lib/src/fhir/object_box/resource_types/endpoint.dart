import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirEndpoint extends Resource {
  FhirEndpoint({
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
    required this.connectionType,
    this.name,
    this.managingOrganization,
    this.contact,
    this.period,
    required this.payloadType,
    this.payloadMimeType,
    required this.address,
    this.header,
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
  ToOne<Coding> connectionType = ToOne<Coding>();
  String? name;
  ToOne<Reference>? managingOrganization = ToOne<Reference>();
  ToMany<ContactPoint>? contact = ToMany<ContactPoint>();
  ToOne<Period>? period = ToOne<Period>();
  ToMany<CodeableConcept> payloadType = ToMany<CodeableConcept>();
  List<String>? payloadMimeType;
  String address;
  List<String>? header;
}
