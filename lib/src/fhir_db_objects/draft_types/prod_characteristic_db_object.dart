import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class ProdCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> height = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> width = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> depth = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> weight = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> nominalVolume = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> externalDiameter = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> shape = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> shapeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> color = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> colorElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> imprint = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> imprintElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<AttachmentDbObject> image = ToMany<AttachmentDbObject>();
  final ToOne<CodeableConceptDbObject> scoring = ToOne<CodeableConceptDbObject>();
  ProdCharacteristicDbObject({required this.id});
}
