import 'package:realm/realm.dart';

@RealmModel()
class _UsageContextRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _CodingRealm code;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _RangeRealm valueRange;
  late _ReferenceRealm valueReference;
}
