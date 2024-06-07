import 'package:realm/realm.dart';

@RealmModel()
class _MoneyRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirDecimalRealm value;
  late _PrimitiveElementRealm valueElement;
  late _FhirCodeRealm currency;
  late _PrimitiveElementRealm currencyElement;
}
