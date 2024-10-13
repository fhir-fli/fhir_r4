// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRelatedArtifact {
  ObjectBoxRelatedArtifact({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.type,
    ObjectBoxElement? typeElement,
    this.label,
    ObjectBoxElement? labelElement,
    this.display,
    ObjectBoxElement? displayElement,
    this.citation,
    ObjectBoxElement? citationElement,
    this.url,
    ObjectBoxElement? urlElement,
    ObjectBoxAttachment? document,
    this.resource,
    ObjectBoxElement? resourceElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.typeElement.target = typeElement;
    this.labelElement.target = labelElement;
    this.displayElement.target = displayElement;
    this.citationElement.target = citationElement;
    this.urlElement.target = urlElement;
    this.document.target = document;
    this.resourceElement.target = resourceElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? label;
  ToOne<ObjectBoxElement> labelElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  String? citation;
  ToOne<ObjectBoxElement> citationElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> document = ToOne<ObjectBoxAttachment>();
  String? resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
}
