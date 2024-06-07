import 'package:realm/realm.dart';

@RealmModel()
class _ContactPointRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _ContactPointSystemRealm system;
  late _PrimitiveElementRealm systemElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late _ContactPointUseRealm use;
  late _PrimitiveElementRealm useElement;
  late _FhirPositiveIntRealm rank;
  late _PrimitiveElementRealm rankElement;
  late _PeriodRealm period;
}
