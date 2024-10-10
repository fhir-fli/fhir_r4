import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Attachment {
  Attachment({
    this.id,
    this.extension_,
    this.contentType,
    this.language,
    this.data,
    this.url,
    this.size,
    this.hash,
    this.title,
    this.creation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String? contentType;
  String? language;
  String? data;
  String? url;
  int? size;
  String? hash;
  String? title;
  String? creation;
}
