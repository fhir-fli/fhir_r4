// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxElement {
  ObjectBoxElement({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
  }) {
    this.extension_.addAll(extension_ ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
}
