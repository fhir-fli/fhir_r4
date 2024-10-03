import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ProductShelfLifeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  CodeableConceptEntity? type;
  @ToOne()
  QuantityEntity? period;

  @ToMany()
  List<CodeableConceptEntity>? specialPrecautionsForStorage;
}
