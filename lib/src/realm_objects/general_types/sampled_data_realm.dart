import 'package:realm/realm.dart';

@RealmModel()
class _SampledDataRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _QuantityRealm origin;
  late _FhirDecimalRealm period;
  late _PrimitiveElementRealm periodElement;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _FhirDecimalRealm lowerLimit;
  late _PrimitiveElementRealm lowerLimitElement;
  late _FhirDecimalRealm upperLimit;
  late _PrimitiveElementRealm upperLimitElement;
  late _FhirPositiveIntRealm dimensions;
  late _PrimitiveElementRealm dimensionsElement;
  late String data;
  late _PrimitiveElementRealm dataElement;
}
