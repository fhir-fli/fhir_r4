import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ProductShelfLife {
  ProductShelfLife({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<Quantity> period = ToOne<Quantity>();
  ToMany<CodeableConcept>? specialPrecautionsForStorage =
      ToMany<CodeableConcept>();
}
