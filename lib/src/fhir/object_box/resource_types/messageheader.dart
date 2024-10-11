import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MessageHeader extends Resource {
  MessageHeader({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.eventCoding,
    this.eventUri,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    required this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
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
  ToOne<Coding>? eventCoding = ToOne<Coding>();
  String? eventUri;
  ToMany<MessageHeaderDestination>? destination =
      ToMany<MessageHeaderDestination>();
  ToOne<Reference>? sender = ToOne<Reference>();
  ToOne<Reference>? enterer = ToOne<Reference>();
  ToOne<Reference>? author = ToOne<Reference>();
  ToOne<MessageHeaderSource> source = ToOne<MessageHeaderSource>();
  ToOne<Reference>? responsible = ToOne<Reference>();
  ToOne<CodeableConcept>? reason = ToOne<CodeableConcept>();
  ToOne<MessageHeaderResponse>? response = ToOne<MessageHeaderResponse>();
  ToMany<Reference>? focus = ToMany<Reference>();
  String? definition;
}

@Entity()
class MessageHeaderDestination {
  MessageHeaderDestination({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.target,
    required this.endpoint,
    this.receiver,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  ToOne<Reference>? target = ToOne<Reference>();
  String endpoint;
  ToOne<Reference>? receiver = ToOne<Reference>();
}

@Entity()
class MessageHeaderSource {
  MessageHeaderSource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.software,
    this.version,
    this.contact,
    required this.endpoint,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  String? software;
  String? version;
  ToOne<ContactPoint>? contact = ToOne<ContactPoint>();
  String endpoint;
}

@Entity()
class MessageHeaderResponse {
  MessageHeaderResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.identifier,
    required this.code,
    this.details,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String identifier;
  String code;
  ToOne<Reference>? details = ToOne<Reference>();
}
