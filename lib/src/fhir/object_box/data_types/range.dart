// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRange {
  ObjectBoxRange({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxQuantity? low,
    ObjectBoxQuantity? high,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.low.target = low;
    this.high.target = high;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> low = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> high = ToOne<ObjectBoxQuantity>();
}
