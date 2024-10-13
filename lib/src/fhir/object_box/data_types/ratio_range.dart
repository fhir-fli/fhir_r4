// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRatioRange {
  ObjectBoxRatioRange({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxQuantity? lowNumerator,
    ObjectBoxQuantity? highNumerator,
    ObjectBoxQuantity? denominator,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.lowNumerator.target = lowNumerator;
    this.highNumerator.target = highNumerator;
    this.denominator.target = denominator;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> lowNumerator = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> highNumerator = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> denominator = ToOne<ObjectBoxQuantity>();
}
