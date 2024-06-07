import 'package:realm/realm.dart';

@RealmModel()
class _ContributorRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _ContributorTypeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late List<_ContactDetailRealm> contact;
}
