// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCodeableReference {
  ObjectBoxCodeableReference({
    this.id,
    this.extension_,
    this.concept,
    this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? concept = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? reference = ToOne<ObjectBoxReference>();
}
