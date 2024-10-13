// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxNarrative {
  ObjectBoxNarrative({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.div,
    ObjectBoxElement? divElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.statusElement.target = statusElement;
    this.divElement.target = divElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String div;
  ToOne<ObjectBoxElement> divElement = ToOne<ObjectBoxElement>();
}
