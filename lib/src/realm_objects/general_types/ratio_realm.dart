import 'package:realm/realm.dart';

@RealmModel()
class _RatioRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _QuantityRealm numerator;
  late _QuantityRealm denominator;
}
