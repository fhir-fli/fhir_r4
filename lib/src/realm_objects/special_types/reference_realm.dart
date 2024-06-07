import 'package:realm/realm.dart';

@RealmModel()
class _ReferenceRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late String reference;
  late _PrimitiveElementRealm referenceElement;
  late _FhirUriRealm type;
  late _PrimitiveElementRealm typeElement;
  late _IdentifierRealm identifier;
  late String display;
  late _PrimitiveElementRealm displayElement;
}
