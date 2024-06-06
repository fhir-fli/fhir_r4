import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class MarketingStatusDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> country =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> jurisdiction =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> status =
      ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> dateRange = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> restoreDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> restoreDateElement =
      ToOne<PrimitiveElementDbObject>();
  MarketingStatusDbObject({required this.id});
}
