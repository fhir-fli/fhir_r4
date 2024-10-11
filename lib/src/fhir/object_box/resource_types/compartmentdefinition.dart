import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CompartmentDefinition extends Resource {
  CompartmentDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.version,
    required this.name,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.purpose,
    required this.code,
    required this.search,
    this.resource,
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
  String url;
  String? version;
  String name;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  String? purpose;
  String code;
  bool search;
  ToMany<CompartmentDefinitionResource>? resource =
      ToMany<CompartmentDefinitionResource>();
}

@Entity()
class CompartmentDefinitionResource {
  CompartmentDefinitionResource({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.param,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  List<String>? param;
  String? documentation;
}
