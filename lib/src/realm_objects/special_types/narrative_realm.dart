import 'package:realm/realm.dart';

@RealmModel()
class _NarrativeRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _NarrativeStatusRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirXhtmlRealm div;
}
