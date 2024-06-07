import 'package:realm/realm.dart';

@RealmModel()
class _FhirDurationRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirDecimalRealm value;
  late _PrimitiveElementRealm valueElement;
  late _DurationComparatorRealm comparator;
  late _PrimitiveElementRealm comparatorElement;
  late String unit;
  late _PrimitiveElementRealm unitElement;
  late _FhirUriRealm system;
  late _PrimitiveElementRealm systemElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
}
