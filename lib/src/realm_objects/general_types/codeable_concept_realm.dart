import 'package:realm/realm.dart';

@RealmModel()
class _CodeableConceptRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_CodingRealm> coding;
  late String text;
  late _PrimitiveElementRealm textElement;
}
