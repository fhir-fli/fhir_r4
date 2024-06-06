import 'package:objectbox/objectbox.dart';
@Entity()
class SampledDataDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> origin = ToOne<QuantityDbObject>();
  final ToOne<FhirDecimalDbObject> period = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> periodElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> lowerLimit = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> lowerLimitElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> upperLimit = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> upperLimitElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> dimensions = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> dimensionsElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> data = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dataElement = ToOne<PrimitiveElementDbObject>();
  SampledDataDbObject({required this.id});
}
