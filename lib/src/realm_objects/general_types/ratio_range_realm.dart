import 'package:realm/realm.dart';

@RealmModel()
class _RatioRangeRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _QuantityRealm lowNumerator;
  late _QuantityRealm highNumerator;
  late _QuantityRealm denominator;
}
