import 'package:realm/realm.dart';

@RealmModel()
class _IdentifierRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _IdentifierUseRealm use;
  late _PrimitiveElementRealm useElement;
  late _CodeableConceptRealm type;
  late _FhirUriRealm system;
  late _PrimitiveElementRealm systemElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late _PeriodRealm period;
  late _ReferenceRealm assigner;
}
