import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class RelatedArtifact {
  RelatedArtifact({
    this.id,
    this.extension_,
    required this.type,
    this.label,
    this.display,
    this.citation,
    this.url,
    this.document,
    this.resource,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  String? label;
  String? display;
  String? citation;
  String? url;
  ToOne<Attachment>? document = ToOne<Attachment>();
  String? resource;
}
