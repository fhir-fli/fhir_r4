import 'package:objectbox/objectbox.dart';
@Entity()
class TriggerDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<TriggerDefinitionTypeDbObject> type = ToOne<TriggerDefinitionTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<TimingDbObject> timingTiming = ToOne<TimingDbObject>();
  final ToOne<ReferenceDbObject> timingReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateDbObject> timingDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> timingDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<DataRequirementDbObject> data = ToMany<DataRequirementDbObject>();
  final ToOne<FhirExpressionDbObject> condition = ToOne<FhirExpressionDbObject>();
  TriggerDefinitionDbObject({required this.id});
}
