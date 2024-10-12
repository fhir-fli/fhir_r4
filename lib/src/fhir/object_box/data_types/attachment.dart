// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAttachment {
  ObjectBoxAttachment({
    this.id,
    this.extension_,
    this.contentType,
    this.contentTypeElement,
    this.language,
    this.languageElement,
    this.data,
    this.dataElement,
    this.url,
    this.urlElement,
    this.size,
    this.sizeElement,
    this.hash,
    this.hashElement,
    this.title,
    this.titleElement,
    this.creation,
    this.creationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String? contentType;
  ToOne<ObjectBoxElement>? contentTypeElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  String? data;
  ToOne<ObjectBoxElement>? dataElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  int? size;
  ToOne<ObjectBoxElement>? sizeElement = ToOne<ObjectBoxElement>();
  String? hash;
  ToOne<ObjectBoxElement>? hashElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? creation;
  ToOne<ObjectBoxElement>? creationElement = ToOne<ObjectBoxElement>();
}
