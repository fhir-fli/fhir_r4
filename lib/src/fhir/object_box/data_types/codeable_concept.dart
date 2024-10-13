// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCodeableConcept {
  ObjectBoxCodeableConcept({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxCoding>? coding,
    this.text,
    ObjectBoxElement? textElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.coding.addAll(coding ?? []);
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCoding> coding = ToMany<ObjectBoxCoding>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}
