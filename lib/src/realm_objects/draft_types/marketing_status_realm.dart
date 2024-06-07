import 'package:realm/realm.dart';

@RealmModel()
class _MarketingStatusRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm country;
  late _CodeableConceptRealm jurisdiction;
  late _CodeableConceptRealm status;
  late _PeriodRealm dateRange;
  late String restoreDate;
  late _PrimitiveElementRealm restoreDateElement;
}
