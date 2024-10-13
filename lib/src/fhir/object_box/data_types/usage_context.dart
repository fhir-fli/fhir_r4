// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxUsageContext {
  ObjectBoxUsageContext({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    ObjectBoxCoding? code,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    ObjectBoxReference? valueReference,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.code.target = code;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.valueReference.target = valueReference;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> code = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
}
