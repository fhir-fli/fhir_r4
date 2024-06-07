import 'package:realm/realm.dart';

@RealmModel()
class _PrimitiveElementRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
}
