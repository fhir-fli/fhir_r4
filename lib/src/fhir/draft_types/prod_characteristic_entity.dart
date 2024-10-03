import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ProdCharacteristicEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  QuantityEntity? height;

  @ToOne()
  QuantityEntity? width;

  @ToOne()
  QuantityEntity? depth;

  @ToOne()
  QuantityEntity? weight;

  @ToOne()
  QuantityEntity? nominalVolume;

  @ToOne()
  QuantityEntity? externalDiameter;

  String? shape;

  @ToOne()
  PrimitiveElementEntity? shapeElement;

  List<String>? color;

  @ToMany()
  List<PrimitiveElementEntity>? colorElement;

  List<String>? imprint;

  @ToMany()
  List<PrimitiveElementEntity>? imprintElement;

  @ToMany()
  List<AttachmentEntity>? image;

  @ToOne()
  CodeableConceptEntity? scoring;
}
