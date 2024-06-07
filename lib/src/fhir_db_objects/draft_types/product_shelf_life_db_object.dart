import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class ProductShelfLifeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> period = ToOne<QuantityDbObject>();
  final ToMany<CodeableConceptDbObject> specialPrecautionsForStorage = ToMany<CodeableConceptDbObject>();
  ProductShelfLifeDbObject({required this.id});
}
