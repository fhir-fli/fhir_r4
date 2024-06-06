import 'package:objectbox/objectbox.dart';
@Entity()
class FhirExpressionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> name = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionLanguageDbObject> language = ToOne<FhirExpressionLanguageDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> reference = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> referenceElement = ToOne<PrimitiveElementDbObject>();
  FhirExpressionDbObject({required this.id});
}
