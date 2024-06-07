import 'package:realm/realm.dart';

@RealmModel()
class _ContactDetailRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late List<_ContactPointRealm> telecom;
}
