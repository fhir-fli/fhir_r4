// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProductShelfLife {
  ObjectBoxProductShelfLife({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? period,
    List<ObjectBoxCodeableConcept>? specialPrecautionsForStorage,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.type.target = type;
    this.period.target = period;
    this
        .specialPrecautionsForStorage
        .addAll(specialPrecautionsForStorage ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> period = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxCodeableConcept> specialPrecautionsForStorage =
      ToMany<ObjectBoxCodeableConcept>();
}
