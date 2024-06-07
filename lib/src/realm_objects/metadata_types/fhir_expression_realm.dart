import 'package:realm/realm.dart';

@RealmModel()
class _FhirExpressionRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirIdRealm name;
  late _PrimitiveElementRealm nameElement;
  late _FhirExpressionLanguageRealm language;
  late _PrimitiveElementRealm languageElement;
  late String expression;
  late _PrimitiveElementRealm expressionElement;
  late _FhirUriRealm reference;
  late _PrimitiveElementRealm referenceElement;
}
