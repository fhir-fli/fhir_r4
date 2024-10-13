// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProdCharacteristic {
  ObjectBoxProdCharacteristic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? height,
    ObjectBoxQuantity? width,
    ObjectBoxQuantity? depth,
    ObjectBoxQuantity? weight,
    ObjectBoxQuantity? nominalVolume,
    ObjectBoxQuantity? externalDiameter,
    this.shape,
    ObjectBoxElement? shapeElement,
    this.color,
    List<ObjectBoxElement>? colorElement,
    this.imprint,
    List<ObjectBoxElement>? imprintElement,
    List<ObjectBoxAttachment>? image,
    ObjectBoxCodeableConcept? scoring,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.height.target = height;
    this.width.target = width;
    this.depth.target = depth;
    this.weight.target = weight;
    this.nominalVolume.target = nominalVolume;
    this.externalDiameter.target = externalDiameter;
    this.shapeElement.target = shapeElement;
    this.colorElement.addAll(colorElement ?? []);
    this.imprintElement.addAll(imprintElement ?? []);
    this.image.addAll(image ?? []);
    this.scoring.target = scoring;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> height = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> width = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> depth = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> weight = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> nominalVolume = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> externalDiameter = ToOne<ObjectBoxQuantity>();
  String? shape;
  ToOne<ObjectBoxElement> shapeElement = ToOne<ObjectBoxElement>();
  List<String>? color;
  ToMany<ObjectBoxElement> colorElement = ToMany<ObjectBoxElement>();
  List<String>? imprint;
  ToMany<ObjectBoxElement> imprintElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxAttachment> image = ToMany<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> scoring = ToOne<ObjectBoxCodeableConcept>();
}
