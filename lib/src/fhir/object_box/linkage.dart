import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Linkage extends Resource {
  Linkage({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.active,
    this.author,
    required this.item,
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
  bool? active;
  ToOne<Reference>? author = ToOne<Reference>();
  ToMany<LinkageItem> item = ToMany<LinkageItem>();
}

@Entity()
class LinkageItem {
  LinkageItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.resource,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<Reference> resource = ToOne<Reference>();
}
