// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProdCharacteristic {
  ObjectBoxProdCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.shapeElement,
    this.color,
    this.colorElement,
    this.imprint,
    this.imprintElement,
    this.image,
    this.scoring,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity>? height = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? width = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? depth = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? weight = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? nominalVolume = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? externalDiameter = ToOne<ObjectBoxQuantity>();
  String? shape;
  ToOne<ObjectBoxElement>? shapeElement = ToOne<ObjectBoxElement>();
  List<String>? color;
  ToMany<ObjectBoxElement>? colorElement = ToMany<ObjectBoxElement>();
  List<String>? imprint;
  ToMany<ObjectBoxElement>? imprintElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxAttachment>? image = ToMany<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? scoring = ToOne<ObjectBoxCodeableConcept>();
}
