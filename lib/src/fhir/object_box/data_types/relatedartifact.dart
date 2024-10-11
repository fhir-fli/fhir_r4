import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class RelatedArtifact {
  RelatedArtifact({
    this.id,
    this.extension_,
    required this.type,
    this.typeElement,
    this.label,
    this.labelElement,
    this.display,
    this.displayElement,
    this.citation,
    this.citationElement,
    this.url,
    this.urlElement,
    this.document,
    this.resource,
    this.resourceElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? label;
  ToOne<Element>? labelElement = ToOne<Element>();
  String? display;
  ToOne<Element>? displayElement = ToOne<Element>();
  String? citation;
  ToOne<Element>? citationElement = ToOne<Element>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToOne<Attachment>? document = ToOne<Attachment>();
  String? resource;
  ToOne<Element>? resourceElement = ToOne<Element>();
}
