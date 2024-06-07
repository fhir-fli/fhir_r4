import 'package:realm/realm.dart';

@RealmModel()
class _RangeRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _QuantityRealm low;
  late _QuantityRealm high;
}
