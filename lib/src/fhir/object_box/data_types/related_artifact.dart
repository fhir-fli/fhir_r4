// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRelatedArtifact {
  ObjectBoxRelatedArtifact({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? label;
  ToOne<ObjectBoxElement>? labelElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
  String? citation;
  ToOne<ObjectBoxElement>? citationElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? document = ToOne<ObjectBoxAttachment>();
  String? resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
}
