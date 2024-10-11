import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Attachment {
  Attachment({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? contentType;
  ToOne<Element>? contentTypeElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  String? data;
  ToOne<Element>? dataElement = ToOne<Element>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  int? size;
  ToOne<Element>? sizeElement = ToOne<Element>();
  String? hash;
  ToOne<Element>? hashElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? creation;
  ToOne<Element>? creationElement = ToOne<Element>();
}
