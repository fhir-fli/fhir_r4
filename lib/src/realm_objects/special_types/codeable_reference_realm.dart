import 'package:realm/realm.dart';

@RealmModel()
class _CodeableReferenceRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _CodeableConceptRealm concept;
  late _ReferenceRealm reference;
}
