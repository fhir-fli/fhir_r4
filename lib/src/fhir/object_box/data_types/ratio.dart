// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRatio {
  ObjectBoxRatio({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxQuantity? numerator,
    ObjectBoxQuantity? denominator,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.numerator.target = numerator;
    this.denominator.target = denominator;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> numerator = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> denominator = ToOne<ObjectBoxQuantity>();
}
