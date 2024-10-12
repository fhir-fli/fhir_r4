// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxNarrative {
  ObjectBoxNarrative({
    this.id,
    this.extension_,
    required this.status,
    this.statusElement,
    required this.div,
    this.divElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String div;
  ToOne<ObjectBoxElement>? divElement = ToOne<ObjectBoxElement>();
}
