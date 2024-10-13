// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAttachment {
  ObjectBoxAttachment({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    this.contentType,
    ObjectBoxElement? contentTypeElement,
    this.language,
    ObjectBoxElement? languageElement,
    this.data,
    ObjectBoxElement? dataElement,
    this.url,
    ObjectBoxElement? urlElement,
    this.size,
    ObjectBoxElement? sizeElement,
    this.hash,
    ObjectBoxElement? hashElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.creation,
    ObjectBoxElement? creationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.contentTypeElement.target = contentTypeElement;
    this.languageElement.target = languageElement;
    this.dataElement.target = dataElement;
    this.urlElement.target = urlElement;
    this.sizeElement.target = sizeElement;
    this.hashElement.target = hashElement;
    this.titleElement.target = titleElement;
    this.creationElement.target = creationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String? contentType;
  ToOne<ObjectBoxElement> contentTypeElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  String? data;
  ToOne<ObjectBoxElement> dataElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  int? size;
  ToOne<ObjectBoxElement> sizeElement = ToOne<ObjectBoxElement>();
  String? hash;
  ToOne<ObjectBoxElement> hashElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? creation;
  ToOne<ObjectBoxElement> creationElement = ToOne<ObjectBoxElement>();
}
