// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCodeableReference {
  ObjectBoxCodeableReference({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxCodeableConcept? concept,
    ObjectBoxReference? reference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.concept.target = concept;
    this.reference.target = reference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> concept = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
}
