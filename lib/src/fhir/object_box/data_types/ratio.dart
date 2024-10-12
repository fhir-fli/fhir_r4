// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRatio {
  ObjectBoxRatio({
    this.id,
    this.extension_,
    this.numerator,
    this.denominator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity>? numerator = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? denominator = ToOne<ObjectBoxQuantity>();
}
