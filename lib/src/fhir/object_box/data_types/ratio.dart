// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRatio {
  ObjectBoxRatio({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxQuantity? numerator,
    ObjectBoxQuantity? denominator,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.numerator.target = numerator;
    this.denominator.target = denominator;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> numerator = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> denominator = ToOne<ObjectBoxQuantity>();
}
