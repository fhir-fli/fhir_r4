// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAnnotation {
  ObjectBoxAnnotation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxReference? authorReference,
    this.authorString,
    ObjectBoxElement? authorStringElement,
    this.time,
    ObjectBoxElement? timeElement,
    required this.text,
    ObjectBoxElement? textElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.authorReference.target = authorReference;
    this.authorStringElement.target = authorStringElement;
    this.timeElement.target = timeElement;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> authorReference = ToOne<ObjectBoxReference>();
  String? authorString;
  ToOne<ObjectBoxElement> authorStringElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement> timeElement = ToOne<ObjectBoxElement>();
  String text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}
