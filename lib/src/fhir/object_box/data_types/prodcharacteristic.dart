import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ProdCharacteristic {
  ProdCharacteristic({
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
    this.color,
    this.imprint,
    this.image,
    this.scoring,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity>? height = ToOne<Quantity>();
  ToOne<Quantity>? width = ToOne<Quantity>();
  ToOne<Quantity>? depth = ToOne<Quantity>();
  ToOne<Quantity>? weight = ToOne<Quantity>();
  ToOne<Quantity>? nominalVolume = ToOne<Quantity>();
  ToOne<Quantity>? externalDiameter = ToOne<Quantity>();
  String? shape;
  List<String>? color;
  List<String>? imprint;
  ToMany<Attachment>? image = ToMany<Attachment>();
  ToOne<CodeableConcept>? scoring = ToOne<CodeableConcept>();
}
