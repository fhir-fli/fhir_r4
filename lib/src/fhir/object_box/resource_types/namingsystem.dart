import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class NamingSystem extends Resource {
  NamingSystem({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.name,
    required this.status,
    required this.kind,
    required this.date,
    this.publisher,
    this.contact,
    this.responsible,
    this.type,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.usage,
    required this.uniqueId,
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
  String name;
  String status;
  String kind;
  String date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? responsible;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? usage;
  ToMany<NamingSystemUniqueId> uniqueId = ToMany<NamingSystemUniqueId>();
}

@Entity()
class NamingSystemUniqueId {
  NamingSystemUniqueId({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.value,
    this.preferred,
    this.comment,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String value;
  bool? preferred;
  String? comment;
  ToOne<Period>? period = ToOne<Period>();
}
