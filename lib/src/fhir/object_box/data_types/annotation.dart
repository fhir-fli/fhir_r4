// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAnnotation {
  ObjectBoxAnnotation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxReference? authorReference,
    this.authorString,
    ObjectBoxElement? authorStringElement,
    this.time,
    ObjectBoxElement? timeElement,
    required this.text,
    ObjectBoxElement? textElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.authorReference.target = authorReference;
    this.authorStringElement.target = authorStringElement;
    this.timeElement.target = timeElement;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> authorReference = ToOne<ObjectBoxReference>();
  String? authorString;
  ToOne<ObjectBoxElement> authorStringElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement> timeElement = ToOne<ObjectBoxElement>();
  String text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}
