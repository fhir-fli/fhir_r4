import 'package:realm/realm.dart';

@RealmModel()
class _ProductShelfLifeRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late _CodeableConceptRealm type;
  late _QuantityRealm period;
  late List<_CodeableConceptRealm> specialPrecautionsForStorage;
}
