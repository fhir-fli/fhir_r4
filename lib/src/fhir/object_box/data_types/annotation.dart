// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAnnotation {
  ObjectBoxAnnotation({
    this.id,
    this.extension_,
    this.authorReference,
    this.authorString,
    this.authorStringElement,
    this.time,
    this.timeElement,
    required this.text,
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? authorReference = ToOne<ObjectBoxReference>();
  String? authorString;
  ToOne<ObjectBoxElement>? authorStringElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement>? timeElement = ToOne<ObjectBoxElement>();
  String text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}
