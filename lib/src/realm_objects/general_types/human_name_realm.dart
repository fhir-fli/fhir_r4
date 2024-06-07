import 'package:realm/realm.dart';

@RealmModel()
class _HumanNameRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _HumanNameUseRealm use;
  late _PrimitiveElementRealm useElement;
  late String text;
  late _PrimitiveElementRealm textElement;
  late String family;
  late _PrimitiveElementRealm familyElement;
  late String given;
  late List<_PrimitiveElementRealm> givenElement;
  late String prefix;
  late List<_PrimitiveElementRealm> prefixElement;
  late String suffix;
  late List<_PrimitiveElementRealm> suffixElement;
  late _PeriodRealm period;
}
