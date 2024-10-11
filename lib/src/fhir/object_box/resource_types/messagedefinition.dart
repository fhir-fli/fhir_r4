import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MessageDefinition extends Resource {
  MessageDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.replaces,
    required this.status,
    this.experimental,
    required this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.category,
    this.focus,
    this.responseRequired,
    this.allowedResponse,
    this.graph,
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
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String? title;
  List<String>? replaces;
  String status;
  bool? experimental;
  String date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String? base;
  List<String>? parent;
  ToOne<Coding>? eventCoding = ToOne<Coding>();
  String? eventUri;
  String? category;
  ToMany<MessageDefinitionFocus>? focus = ToMany<MessageDefinitionFocus>();
  String? responseRequired;
  ToMany<MessageDefinitionAllowedResponse>? allowedResponse =
      ToMany<MessageDefinitionAllowedResponse>();
  List<String>? graph;
}

@Entity()
class MessageDefinitionFocus {
  MessageDefinitionFocus({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.profile,
    required this.min,
    this.max,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? profile;
  int min;
  String? max;
}

@Entity()
class MessageDefinitionAllowedResponse {
  MessageDefinitionAllowedResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.message,
    this.situation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String message;
  String? situation;
}
