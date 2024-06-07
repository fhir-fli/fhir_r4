import 'package:realm/realm.dart';

@RealmModel()
class _CodingRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late _FhirUriRealm system;
  late _PrimitiveElementRealm systemElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late _FhirBooleanRealm userSelected;
  late _PrimitiveElementRealm userSelectedElement;
}
